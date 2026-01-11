import 'package:flutter_secure_storage/flutter_secure_storage.dart' show FlutterSecureStorage;
import 'package:get_it/get_it.dart' show GetIt;
import 'package:hive_ce/hive.dart' show Box, Hive;

import '../../application/data-sources/device.secure.datasource.port.dart'
    show IDeviceSecureDataSource;
import '../../application/data-sources/session.state.local.datasource.port.dart'
    show ISessionStateLocalDataSource;
import '../../application/data-sources/session.token.secure.datasource.port.dart'
    show ISessionTokenSecureDataSource;
import '../../application/repositories/device.repository.port.dart' show IDeviceRepository;
import '../../application/repositories/session.state.repository.port.dart'
    show ISessionStateRepository;
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
import '../data-sources/session.state.local.datasource.dart' show SessionStateLocalDataSource;
import '../data-sources/session.token.secure.datasource.dart' show SessionTokenSecureDataSource;
import '../repositories/device.cached.repository.dart' show DeviceCachedRepository;
import '../repositories/session.state.repository.dart' show SessionStateRepository;

/// Registers all session module dependencies.
Future<void> registerSessionDependencies(GetIt sl) async {
  // Hive box
  final sessionBox = await Hive.openBox<dynamic>(kSessionBox);
  sl.registerSingleton<Box<dynamic>>(sessionBox, instanceName: kSessionBox);

  // FlutterSecureStorage instance (shared for all secure data sources)
  const secureStorage = FlutterSecureStorage();
  sl.registerSingleton<FlutterSecureStorage>(secureStorage);

  // Session State Data source
  sl.registerSingleton<ISessionStateLocalDataSource>(
    SessionStateLocalDataSource(sl<Box<dynamic>>(instanceName: kSessionBox)),
    dispose: (datasource) {
      if (datasource is SessionStateLocalDataSource) {
        datasource.dispose();
      }
    },
  );

  // Session Token Secure Data source
  sl.registerSingleton<ISessionTokenSecureDataSource>(
    SessionTokenSecureDataSource(sl<FlutterSecureStorage>()),
  );

  // Device Secure Data source
  sl.registerSingleton<IDeviceSecureDataSource>(DeviceSecureDataSource(sl<FlutterSecureStorage>()));

  // Session State Repository
  sl.registerSingleton<ISessionStateRepository>(
    SessionStateRepository(sl<ISessionStateLocalDataSource>()),
  );

  // Device Repository
  sl.registerSingleton<IDeviceRepository>(DeviceCachedRepository(sl<IDeviceSecureDataSource>()));

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
  sl.registerFactory<WatchSessionStateUseCase>(
    () => WatchSessionStateUseCase(sl<ISessionStateRepository>()),
  );
  sl.registerFactory<InitializeDeviceUseCase>(
    () => InitializeDeviceUseCase(sl<IDeviceRepository>()),
  );

  // BLoC
  sl.registerFactory<SessionBloc>(
    () => SessionBloc(sl<GetSessionStateUseCase>(), sl<WatchSessionStateUseCase>()),
  );
}
