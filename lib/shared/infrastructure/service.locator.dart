import 'package:get_it/get_it.dart' show GetIt;
import 'package:chopper/chopper.dart' show ChopperClient;
import 'package:hive_ce/hive.dart' show Box, Hive;
import '../../../../api/client/api_116.swagger.dart' show Api116, $JsonSerializableConverter;

import '../../modules/auth/application/data-sources/auth.local.datasource.port.dart'
    show IAuthLocalDataSource;
import '../../modules/auth/infrastructure/constants/hive.constants.dart' show kAuthBox;
import '../../modules/auth/infrastructure/data-sources/auth.local.datasource.dart'
    show AuthLocalDataSource;
import '../../modules/auth/infrastructure/dependencies/auth.dependencies.dart'
    show registerAuthDependencies;
import '../../platform/connectivity/infrastructure/dependencies/connectivity.dependencies.dart'
    show registerConnectivityDependencies;
import '../../platform/preferences/infrastructure/dependencies/preferences.dependencies.dart'
    show registerPreferencesDependencies;
import '../../platform/session/infrastructure/dependencies/session.dependencies.dart'
    show registerSessionDependencies;
import '../../platform/settings/infrastructure/dependencies/settings.dependencies.dart'
    show registerSettingsDependencies;
import 'constants/api.constants.dart' show kApiBaseUrl;
import 'interceptors/auth.interceptor.dart' show AuthInterceptor;

/// Service locator for dependency injection.
///
/// Access dependencies using: `sl<ConnectivityBloc>()`
final GetIt sl = GetIt.instance;

class ServiceLocator {
  ServiceLocator._();

  static Future<void> initialize() async {
    // Register auth local datasource first (needed by AuthInterceptor)
    final authBox = await Hive.openBox<dynamic>(kAuthBox);
    sl.registerSingleton<Box<dynamic>>(authBox, instanceName: kAuthBox);
    sl.registerSingleton<IAuthLocalDataSource>(
      AuthLocalDataSource(sl<Box<dynamic>>(instanceName: kAuthBox)),
    );

    // Create Chopper client with AuthInterceptor
    final chopper = ChopperClient(
      baseUrl: Uri.parse(kApiBaseUrl),
      converter: $JsonSerializableConverter(),
      errorConverter: $JsonSerializableConverter(),
      interceptors: [AuthInterceptor(sl<IAuthLocalDataSource>())],
    );
    sl.registerSingleton<ChopperClient>(chopper);
    sl.registerSingleton<Api116>(Api116.create(client: chopper));

    await registerConnectivityDependencies(sl);
    await registerPreferencesDependencies(sl);
    await registerSessionDependencies(sl);
    await registerAuthDependencies(sl);
    await registerSettingsDependencies(sl);
  }
}
