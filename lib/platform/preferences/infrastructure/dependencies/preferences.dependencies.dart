import 'package:get_it/get_it.dart' show GetIt;
import 'package:hive_ce/hive.dart' show Box, Hive;

import '../../application/datasource/preferences.local.datasource.port.dart'
    show IPreferencesLocalDataSource;
import '../../application/repositories/preferences.repository.port.dart'
    show IPreferencesRepository;
import '../../application/usecases/get.preferences.usecase.dart' show GetPreferencesUseCase;
import '../../application/usecases/update.language.usecase.dart' show UpdateLanguageUseCase;
import '../../application/usecases/update.theme.mode.usecase.dart' show UpdateThemeModeUseCase;
import '../../application/usecases/watch.preferences.usecase.dart' show WatchPreferencesUseCase;
import '../../presentation/bloc/preferences.bloc.dart' show PreferencesBloc;
import '../constants/hive.constants.dart' show kPreferencesBox;
import '../datasources/preferences.local.datasource.dart' show PreferencesLocalDataSource;
import '../repositories/preferences.repository.dart' show PreferencesRepository;

/// Registers all preferences module dependencies.
Future<void> registerPreferencesDependencies(GetIt sl) async {
  // Hive box
  final preferencesBox = await Hive.openBox<dynamic>(kPreferencesBox);
  sl.registerSingleton<Box<dynamic>>(preferencesBox, instanceName: kPreferencesBox);

  // Data source
  sl.registerSingleton<IPreferencesLocalDataSource>(
    PreferencesLocalDataSource(sl<Box<dynamic>>(instanceName: kPreferencesBox)),
    dispose: (datasource) {
      if (datasource is PreferencesLocalDataSource) {
        datasource.dispose();
      }
    },
  );

  // Repository
  sl.registerSingleton<IPreferencesRepository>(
    PreferencesRepository(sl<IPreferencesLocalDataSource>()),
  );

  // Use cases
  sl.registerFactory<GetPreferencesUseCase>(
    () => GetPreferencesUseCase(sl<IPreferencesRepository>()),
  );
  sl.registerFactory<UpdateLanguageUseCase>(
    () => UpdateLanguageUseCase(sl<IPreferencesRepository>()),
  );
  sl.registerFactory<UpdateThemeModeUseCase>(
    () => UpdateThemeModeUseCase(sl<IPreferencesRepository>()),
  );
  sl.registerFactory<WatchPreferencesUseCase>(
    () => WatchPreferencesUseCase(sl<IPreferencesRepository>()),
  );

  // BLoC
  sl.registerFactory<PreferencesBloc>(
    () => PreferencesBloc(
      sl<GetPreferencesUseCase>(),
      sl<UpdateLanguageUseCase>(),
      sl<UpdateThemeModeUseCase>(),
      sl<WatchPreferencesUseCase>(),
    ),
  );
}
