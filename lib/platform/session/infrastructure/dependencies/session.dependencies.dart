import 'package:flutter_secure_storage/flutter_secure_storage.dart' show FlutterSecureStorage;
import 'package:get_it/get_it.dart' show GetIt;
import 'package:hive_ce/hive.dart' show Box, Hive;

import '../../../../modules/auth/application/data-sources/auth.local.datasource.port.dart'
    show IAuthLocalDataSource;
import '../../application/data-sources/device.secure.datasource.port.dart'
    show IDeviceSecureDataSource;
import '../../application/data-sources/session.remote.datasource.port.dart'
    show ISessionRemoteDataSource;
import '../../application/data-sources/session.state.local.datasource.port.dart'
    show ISessionStateLocalDataSource;
import '../../application/data-sources/session.token.secure.datasource.port.dart'
    show ISessionTokenSecureDataSource;
import '../../application/repositories/device.repository.port.dart' show IDeviceRepository;
import '../../application/repositories/session.state.repository.port.dart'
    show ISessionStateRepository;
import '../../application/repositories/session.token.repository.port.dart'
    show ISessionTokenRepository;
import '../../application/usecases/clear.local.tokens.usecase.dart' show ClearLocalTokensUseCase;
import '../../application/usecases/clear.session.usecase.dart' show ClearSessionUseCase;
import '../../application/usecases/get.session.state.usecase.dart' show GetSessionStateUseCase;
import '../../application/usecases/initialize.device.usecase.dart' show InitializeDeviceUseCase;
import '../../application/usecases/update.auth.status.usecase.dart' show UpdateAuthStatusUseCase;
import '../../application/usecases/update.onboarding.status.usecase.dart'
    show UpdateOnboardingStatusUseCase;
import '../../application/usecases/update.preferences.status.usecase.dart'
    show UpdatePreferencesStatusUseCase;
import '../../application/usecases/watch.session.state.usecase.dart' show WatchSessionStateUseCase;
import '../../presentation/bloc/session.bloc.dart' show SessionBloc;
import '../constants/hive.constants.dart' show kSessionBox;
import '../data-sources/device.secure.datasource.dart' show DeviceSecureDataSource;
import '../data-sources/session.remote.datasource.dart' show SessionRemoteDataSource;
import '../data-sources/session.state.local.datasource.dart' show SessionStateLocalDataSource;
import '../data-sources/session.token.secure.datasource.dart' show SessionTokenSecureDataSource;
import '../repositories/device.cached.repository.dart' show DeviceCachedRepository;
import '../repositories/session.state.repository.dart' show SessionStateRepository;
import '../repositories/session.token.cached.repository.dart' show SessionTokenCachedRepository;
import '../repositories/session.token.remote.repository.dart' show SessionTokenRemoteRepository;

/// Registers all session module dependencies.
///
/// Note: Secure storage and token repositories are initialized here
/// to support access/refresh token rotation and device-aware requests.
Future<void> registerSessionDependencies(GetIt sl) async {
  // Hive box
  final sessionBox = await Hive.openBox<dynamic>(kSessionBox);
  sl.registerSingleton<Box<dynamic>>(sessionBox, instanceName: kSessionBox);

  // FlutterSecureStorage
  const secureStorage = FlutterSecureStorage();
  sl.registerSingleton<FlutterSecureStorage>(secureStorage);

  // Data sources
  sl.registerSingleton<ISessionRemoteDataSource>(SessionRemoteDataSource());
  sl.registerSingleton<ISessionStateLocalDataSource>(
    SessionStateLocalDataSource(sl<Box<dynamic>>(instanceName: kSessionBox)),
    dispose: (datasource) {
      if (datasource is SessionStateLocalDataSource) {
        datasource.dispose();
      }
    },
  );
  sl.registerSingleton<ISessionTokenSecureDataSource>(
    SessionTokenSecureDataSource(sl<FlutterSecureStorage>()),
  );
  sl.registerSingleton<IDeviceSecureDataSource>(DeviceSecureDataSource(sl<FlutterSecureStorage>()));

  // Repository
  sl.registerSingleton<ISessionStateRepository>(
    SessionStateRepository(sl<ISessionStateLocalDataSource>()),
  );
  sl.registerSingleton<IDeviceRepository>(DeviceCachedRepository(sl<IDeviceSecureDataSource>()));
  sl.registerSingleton<SessionTokenRemoteRepository>(
    SessionTokenRemoteRepository(
      sl<ISessionRemoteDataSource>(),
      sl<ISessionTokenSecureDataSource>(),
    ),
  );
  sl.registerSingleton<ISessionTokenRepository>(
    SessionTokenCachedRepository(
      sl<SessionTokenRemoteRepository>(),
      sl<IAuthLocalDataSource>(),
      sl<ISessionTokenSecureDataSource>(),
    ),
  );

  // Use cases
  sl.registerFactory<GetSessionStateUseCase>(
    () => GetSessionStateUseCase(sl<ISessionStateRepository>()),
  );
  sl.registerFactory<UpdateOnboardingStatusUseCase>(
    () => UpdateOnboardingStatusUseCase(sl<ISessionStateRepository>()),
  );
  sl.registerFactory<UpdatePreferencesStatusUseCase>(
    () => UpdatePreferencesStatusUseCase(sl<ISessionStateRepository>()),
  );
  sl.registerFactory<UpdateAuthStatusUseCase>(
    () => UpdateAuthStatusUseCase(sl<ISessionStateRepository>()),
  );
  sl.registerFactory<ClearSessionUseCase>(() => ClearSessionUseCase(sl<ISessionStateRepository>()));
  sl.registerFactory<ClearLocalTokensUseCase>(
    () => ClearLocalTokensUseCase(sl<ISessionTokenRepository>()),
  );
  sl.registerFactory<WatchSessionStateUseCase>(
    () => WatchSessionStateUseCase(sl<ISessionStateRepository>()),
  );
  sl.registerFactory<InitializeDeviceUseCase>(
    () => InitializeDeviceUseCase(sl<IDeviceRepository>()),
  );

  // BLoC (singleton to ensure same instance across interceptors and UI)
  sl.registerSingleton<SessionBloc>(
    SessionBloc(sl<GetSessionStateUseCase>(), sl<WatchSessionStateUseCase>()),
  );
}
