import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:inno_queue/const/themes.dart';
import 'package:inno_queue/core/provider/language_provider.dart';
import 'package:inno_queue/core/provider/theme_provider.dart';
import 'package:inno_queue/features/queue_details/queue_detail_bloc/queue_details_bloc.dart';
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
              },
              routeInformationParser: _router.defaultRouteParser(),
            );
          },
        ),
      ),
    );
  }
}
