
import 'package:auto_route/auto_route.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:inno_queue/const/themes.dart';
import 'package:inno_queue/core/provider/language_provider.dart';
import 'package:inno_queue/core/provider/theme_provider.dart';
import 'package:inno_queue/features/features.dart';
import 'package:inno_queue/shared/bloc/edit_queue_bloc/edit_queue_bloc.dart';
import 'package:inno_queue/shared/bloc/select_tasks_bloc/select_tasks_bloc.dart';
import 'package:inno_queue/shared/bloc/server_error_bloc/server_error_bloc.dart';
import 'package:inno_queue/shared/models/user/user_model.dart';
import 'package:provider/provider.dart';

import 'features/notifications/notifications_bloc/notifications_bloc.dart';
import 'helpers/app_localizations.dart';
import 'helpers/getit_service_locator.dart';
import 'routes/app_router.dart';
import 'shared/bloc/appbar/appbar_bloc.dart';

void main() async {
  configureDependencies();
  getIt.registerSingleton<AppRouter>(AppRouter());
  getIt.registerSingleton<AppBarBloc>(AppBarBloc());
  getIt.registerSingleton<ServerErrorBloc>(ServerErrorBloc());

  await Hive.initFlutter();
  Hive.registerAdapter(QueueDetailsModelAdapter());
  Hive.registerAdapter(UserModelAdapter());

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<ThemeProvider>(
          create: (_) => ThemeProvider()..initialize(),
        ),
        ChangeNotifierProvider<LanguageProvider>(
          create: (_) => LanguageProvider()..initialize(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _router = getIt<AppRouter>();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt.get<TasksBloc>()),
        BlocProvider(create: (_) => getIt.get<QueuesBloc>()),
        BlocProvider(create: (_) => getIt.get<NotificationsBloc>()),
        BlocProvider(create: (_) => getIt.get<QueueDetailsBloc>()),
        BlocProvider(create: (_) => getIt.get<AppBarBloc>()),
        BlocProvider(create: (_) => getIt.get<SelectTasksBloc>()),
        BlocProvider(create: (_) => getIt.get<EditQueueBloc>()),
        BlocProvider(create: (_) => getIt.get<ServerErrorBloc>()),
      ],
      child: Consumer<ThemeProvider>(
        builder: (context, themeProvider, child) => Consumer<LanguageProvider>(
          builder: (context, languageProvider, child) {
            return MaterialApp.router(
              title: 'InnoQueue',
              debugShowCheckedModeBanner: false,
              theme: AppThemes.lightTheme,
              darkTheme: AppThemes.darkTheme,
              themeMode: themeProvider.themeMode,
              routerDelegate: AutoRouterDelegate(
                _router,
                navigatorObservers: () => [
                  AutoRouteObserver(),
                ],
              ),
              supportedLocales: const [
                Locale('en', 'US'),
                Locale('ru', 'RU'),
              ],
              localizationsDelegates: const [
                AppLocalizations.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
              ],
              locale: languageProvider.currentLanguage != 'system'
                  ? languageProvider.locale
                  : null,
              localeResolutionCallback: (locale, supportedLocales) {
                for (var supportedLocale in supportedLocales) {
                  if (supportedLocale.languageCode == locale!.languageCode &&
                      supportedLocale.countryCode == locale.countryCode) {
                    return supportedLocale;
                  }
                }
                return null;
              },
              routeInformationParser: _router.defaultRouteParser(),
            );
          },
        ),
      ),
    );
  }

  @override
  void initState() {
    _initPushNotifications();
    super.initState();
  }

  void _initPushNotifications() async {
    final FirebaseMessaging _fcm = FirebaseMessaging.instance;

    _fcm.requestPermission();

    String? fcmToken = await _fcm.getToken();
    if (kDebugMode) {
      print("==== FCM TOKEN ====");
      print(fcmToken);
      print("===================");
    }

    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  }
}

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  if (kDebugMode) {
    print("Handling a background message: ${message.messageId}");
  }
}
