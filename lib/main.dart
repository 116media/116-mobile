import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart' show BlocBuilder, BlocProvider, MultiBlocProvider;
import 'package:flutter_dotenv/flutter_dotenv.dart' show dotenv;
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart' show FlutterNativeSplash;
import 'package:go_router/go_router.dart' show GoRouter;
import 'package:provider/provider.dart' show ChangeNotifierProvider, Consumer, Provider;

import 'i18n/strings.g.dart' show AppLocale, AppLocaleUtils, LocaleSettings, TranslationProvider;
import 'platform/connectivity/presentation/bloc/connectivity.bloc.dart' show ConnectivityBloc;
import 'platform/connectivity/presentation/bloc/connectivity.event.dart'
    show ConnectivityWatchStarted;
import 'platform/connectivity/presentation/widgets/connectivity.banner.widget.dart'
    show ConnectivityBanner;
import 'platform/country/application/usecases/initialize.country.usecase.dart'
    show InitializeCountryUseCase;
import 'platform/session/application/usecases/initialize.device.usecase.dart'
    show InitializeDeviceUseCase;
import 'platform/preferences/presentation/bloc/preferences.bloc.dart' show PreferencesBloc;
import 'platform/preferences/presentation/bloc/preferences.event.dart' show PreferencesLoadStarted;
import 'platform/preferences/presentation/bloc/preferences.state.dart'
    show PreferencesState, PreferencesSuccess;
import 'platform/session/presentation/bloc/session.bloc.dart' show SessionBloc;
import 'platform/session/presentation/bloc/session.event.dart' show SessionLoadStarted;
import 'platform/splash/presentation/constants/splash.constants.dart' show kAnimationDuration;
import 'hive/init.hive.dart' show initializeHive;
import 'shared/infrastructure/service.locator.dart' show ServiceLocator, sl;
import 'shared/presentation/providers/theme.provider.dart' show ThemeProvider;
import 'shared/presentation/router/app.router.dart' show AppRouter;
import 'shared/presentation/themes/app.theme.dart' show AppTheme;

/// The main entry point of the application.
///
/// Initializes the app with:
/// - Flutter bindings
/// - Hive local database (for auth persistence)
/// - Dependency injection (GetIt)
/// - [ThemeProvider] for theme management
/// - Slang translations with device locale
///
/// Preserves the native splash screen until the animated splash is ready to display.
void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  await dotenv.load(fileName: '.env');
  await initializeHive();
  await ServiceLocator.initialize();
  LocaleSettings.useDeviceLocale();

  // Initialize device ID on app start
  final initDeviceUseCase = sl<InitializeDeviceUseCase>();
  await initDeviceUseCase.execute(null);

  // Initialize country data from IP on app start
  final initCountryUseCase = sl<InitializeCountryUseCase>();
  await initCountryUseCase.execute(null);

  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: TranslationProvider(child: const App()),
    ),
  );
}

/// The root widget of the application.
///
/// This widget sets up the [MaterialApp] with theme configurations and
/// consumes the [ThemeProvider] to enable dynamic theme switching.
///
class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  late final GoRouter _router;
  late final SessionBloc _sessionBloc;
  late final PreferencesBloc _preferencesBloc;

  @override
  void initState() {
    super.initState();

    _sessionBloc = sl<SessionBloc>()..add(const SessionLoadStarted());
    _preferencesBloc = sl<PreferencesBloc>()..add(const PreferencesLoadStarted());

    _router = AppRouter(_sessionBloc).createRouter();

    // Remove the native splash screen after 2.5s - synchronize with animated splash
    Future.delayed(const Duration(milliseconds: kAnimationDuration), () {
      FlutterNativeSplash.remove();
    });
  }

  @override
  void dispose() {
    _sessionBloc.close();
    _preferencesBloc.close();
    super.dispose();
  }

  /// Builds the root MaterialApp with GoRouter, theme provider, and BLoC integration.
  ///
  /// Uses [Consumer] to listen to theme changes and rebuild the app
  /// when the user switches between light and dark modes.
  ///
  /// Wraps the app with multiple BLoCs for connectivity, session, and preferences management.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => sl<ConnectivityBloc>()..add(const ConnectivityWatchStarted()),
        ),
        BlocProvider.value(value: _sessionBloc),
        BlocProvider.value(value: _preferencesBloc),
      ],
      child: BlocBuilder<PreferencesBloc, PreferencesState>(
        builder: (context, state) {
          // Update locale and theme when preferences change
          if (state is PreferencesSuccess) {
            // Schedule theme update after build completes
            WidgetsBinding.instance.addPostFrameCallback((_) {
              final themeProvider = Provider.of<ThemeProvider>(context, listen: false);
              themeProvider.setThemeMode(state.preferences.themeMode);
            });

            // Update app locale when language preference changes
            final localeString = state.preferences.languageCode;
            final appLocale = AppLocale.values.firstWhere(
              (l) => l.languageCode == localeString,
              orElse: () => AppLocale.en,
            );
            LocaleSettings.setLocale(appLocale, listenToDeviceLocale: false);
          }

          return Consumer<ThemeProvider>(
            builder: (context, themeProvider, child) {
              return MaterialApp.router(
                theme: AppTheme.lightTheme,
                darkTheme: AppTheme.darkTheme,
                debugShowCheckedModeBanner: false,
                themeMode: themeProvider.themeMode,
                supportedLocales: AppLocaleUtils.supportedLocales,
                locale: TranslationProvider.of(context).flutterLocale,
                localizationsDelegates: GlobalMaterialLocalizations.delegates,
                routerConfig: _router,
                builder: (context, child) {
                  return ConnectivityBanner(child: child ?? const SizedBox.shrink());
                },
              );
            },
          );
        },
      ),
    );
  }
}
