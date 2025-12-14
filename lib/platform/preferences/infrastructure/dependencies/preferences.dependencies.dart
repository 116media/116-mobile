import 'package:get_it/get_it.dart' show GetIt;

import '../../application/data-sources/preferences.local.datasource.port.dart'
    show IPreferencesLocalDataSource;
import '../../application/repositories/preferences.repository.port.dart'
    show IPreferencesRepository;
import '../../application/usecases/get.preferences.usecase.dart' show GetPreferencesUseCase;
import '../../application/usecases/update.language.usecase.dart' show UpdateLanguageUseCase;
import '../../application/usecases/update.theme.mode.usecase.dart' show UpdateThemeModeUseCase;
import '../../application/usecases/watch.preferences.usecase.dart' show WatchPreferencesUseCase;
import '../../presentation/bloc/preferences.bloc.dart' show PreferencesBloc;
import '../repositories/preferences.repository.dart' show PreferencesRepository;

/// Registers all preferences module dependencies.
Future<void> registerPreferencesDependencies(GetIt sl) async {
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
