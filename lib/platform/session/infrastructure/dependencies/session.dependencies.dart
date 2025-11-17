import 'package:get_it/get_it.dart' show GetIt;
import 'package:hive_ce/hive.dart' show Box, Hive;

import '../../application/data-sources/session.local.datasource.port.dart'
    show ISessionLocalDataSource;
import '../../application/repositories/session.repository.port.dart' show ISessionRepository;
import '../../application/usecases/clear.session.usecase.dart' show ClearSessionUseCase;
import '../../application/usecases/get.session.state.usecase.dart' show GetSessionStateUseCase;
import '../../application/usecases/update.auth.status.usecase.dart' show UpdateAuthStatusUseCase;
import '../../application/usecases/update.onboarding.status.usecase.dart'
    show UpdateOnboardingStatusUseCase;
import '../../application/usecases/update.preferences.status.usecase.dart'
    show UpdatePreferencesStatusUseCase;
import '../../application/usecases/watch.session.state.usecase.dart' show WatchSessionStateUseCase;
import '../../presentation/bloc/session.bloc.dart' show SessionBloc;
import '../constants/hive.constants.dart' show kSessionBox;
import '../data-sources/session.local.datasource.dart' show SessionLocalDataSource;
import '../repositories/session.repository.dart' show SessionRepository;

/// Registers all session module dependencies.
Future<void> registerSessionDependencies(GetIt sl) async {
  // Hive box
  final sessionBox = await Hive.openBox<dynamic>(kSessionBox);
  sl.registerSingleton<Box<dynamic>>(sessionBox, instanceName: kSessionBox);

  // Data source
  sl.registerSingleton<ISessionLocalDataSource>(
    SessionLocalDataSource(sl<Box<dynamic>>(instanceName: kSessionBox)),
    dispose: (datasource) {
      if (datasource is SessionLocalDataSource) {
        datasource.dispose();
      }
    },
  );

  // Repository
  sl.registerSingleton<ISessionRepository>(SessionRepository(sl<ISessionLocalDataSource>()));

  // Use cases
  sl.registerFactory<GetSessionStateUseCase>(
    () => GetSessionStateUseCase(sl<ISessionRepository>()),
  );
  sl.registerFactory<UpdateOnboardingStatusUseCase>(
    () => UpdateOnboardingStatusUseCase(sl<ISessionRepository>()),
  );
  sl.registerFactory<UpdatePreferencesStatusUseCase>(
    () => UpdatePreferencesStatusUseCase(sl<ISessionRepository>()),
  );
  sl.registerFactory<UpdateAuthStatusUseCase>(
    () => UpdateAuthStatusUseCase(sl<ISessionRepository>()),
  );
  sl.registerFactory<ClearSessionUseCase>(() => ClearSessionUseCase(sl<ISessionRepository>()));
  sl.registerFactory<WatchSessionStateUseCase>(
    () => WatchSessionStateUseCase(sl<ISessionRepository>()),
  );

  // BLoC
  sl.registerFactory<SessionBloc>(
    () => SessionBloc(sl<GetSessionStateUseCase>(), sl<WatchSessionStateUseCase>()),
  );
}
