import 'package:get_it/get_it.dart' show GetIt;

import '../../modules/auth/infrastructure/dependencies/auth.dependencies.dart'
    show registerAuthDependencies;
import '../../platform/connectivity/infrastructure/dependencies/connectivity.dependencies.dart'
    show registerConnectivityDependencies;
import '../../platform/preferences/infrastructure/dependencies/preferences.dependencies.dart'
    show registerPreferencesDependencies;
import '../../platform/session/infrastructure/dependencies/session.dependencies.dart'
    show registerSessionDependencies;

/// Service locator for dependency injection.
///
/// Access dependencies using: `sl<ConnectivityBloc>()`
final GetIt sl = GetIt.instance;

class ServiceLocator {
  ServiceLocator._();

  static Future<void> initialize() async {
    await registerConnectivityDependencies(sl);
    await registerPreferencesDependencies(sl);
    await registerSessionDependencies(sl);
    await registerAuthDependencies(sl);
  }
}
