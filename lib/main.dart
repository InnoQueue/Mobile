import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:inno_queue/core/provider/language_provider.dart';
import 'package:inno_queue/core/provider/theme_provider.dart';
import 'package:inno_queue/features/queue_details/queue_detail_bloc/queue_details_bloc.dart';
import 'package:inno_queue/routes/logging_route_observer.dart';
import 'package:inno_queue/shared/bloc/edit_queue_bloc/edit_queue_bloc.dart';
import 'package:inno_queue/shared/bloc/select_tasks_bloc/select_tasks_bloc.dart';
import 'package:provider/provider.dart';

import 'features/queues/bloc/queues_bloc.dart';
import 'helpers/app_localizations.dart';
import 'helpers/getit_service_locator.dart';
import 'routes/app_router.dart';
import 'shared/bloc/appbar/appbar_bloc.dart';

void main() {
  configureDependencies();
  getIt.registerSingleton<AppRouter>(AppRouter());
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
        BlocProvider(create: (_) => getIt.get<QueuesBloc>()),
        BlocProvider(create: (_) => getIt.get<QueueDetailsBloc>()),
        BlocProvider(create: (_) => AppBarBloc(HomeRouter.name)),
        BlocProvider(create: (_) => getIt.get<SelectTasksBloc>()),
        BlocProvider(create: (_) => getIt.get<EditQueueBloc>())
      ],
      child: Consumer<ThemeProvider>(
        builder: (context, themeProvider, child) => Consumer<LanguageProvider>(
          builder: (context, languageProvider, child) {
            return MaterialApp.router(
              title: 'InnoQueue',
              debugShowCheckedModeBanner: false,
              theme: _lightTheme,
              darkTheme: _darkTheme,
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
              },
              routeInformationParser: _router.defaultRouteParser(),
            );
          },
        ),
      ),
    );
  }

  final ThemeData _darkTheme = ThemeData(
    canvasColor: Colors.transparent,
    scaffoldBackgroundColor: Colors.grey[900],
    iconTheme: const IconThemeData(
      color: Colors.white,
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        primary: Colors.white,
      ),
    ),
    primaryColor: Colors.grey[800],
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        onPrimary: Colors.white, // Text color
      ),
    ),
    colorScheme: const ColorScheme.dark().copyWith(
      primary: Colors.grey[800],
      secondary: Colors.grey[500],
      surface: Colors.grey[800],
    ),
  );

  final ThemeData _lightTheme = ThemeData(
    canvasColor: Colors.transparent,
    scaffoldBackgroundColor: Colors.blueGrey[50],
    iconTheme: const IconThemeData(
      color: Colors.black,
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        primary: Colors.black,
      ),
    ),
    primaryColor: Colors.white,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        onPrimary: Colors.black,
      ),
    ),
    colorScheme: const ColorScheme.light().copyWith(
      primary: Colors.white,
      secondary: Colors.white,
      surface: Colors.grey[800],
      onPrimary: Colors.black,
    ),
  );
}
