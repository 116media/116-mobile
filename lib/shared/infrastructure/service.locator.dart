import 'package:get_it/get_it.dart' show GetIt;
import 'package:chopper/chopper.dart' show ChopperClient;
import '../../../../api/client/api_116.swagger.dart' show Api116, $JsonSerializableConverter;

import '../../modules/auth/infrastructure/dependencies/auth.dependencies.dart'
    show registerAuthDependencies;
import '../../platform/connectivity/infrastructure/dependencies/connectivity.dependencies.dart'
    show registerConnectivityDependencies;
import '../../platform/preferences/infrastructure/dependencies/preferences.dependencies.dart'
    show registerPreferencesDependencies;
import '../../platform/session/infrastructure/dependencies/session.dependencies.dart'
    show registerSessionDependencies;
import 'constants/api.constants.dart' show kApiBaseUrl;

/// Service locator for dependency injection.
///
/// Access dependencies using: `sl<ConnectivityBloc>()`
final GetIt sl = GetIt.instance;

class ServiceLocator {
  ServiceLocator._();

  static Future<void> initialize() async {
    final chopper = ChopperClient(
      baseUrl: Uri.parse(kApiBaseUrl),
      converter: $JsonSerializableConverter(),
      errorConverter: $JsonSerializableConverter(),
    );
    sl.registerSingleton<ChopperClient>(chopper);
    sl.registerSingleton<Api116>(Api116.create(client: chopper));

    await registerConnectivityDependencies(sl);
    await registerPreferencesDependencies(sl);
    await registerSessionDependencies(sl);
    await registerAuthDependencies(sl);
  }
}
