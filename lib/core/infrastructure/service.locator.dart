import 'package:get_it/get_it.dart' show GetIt;

import '../../modules/auth/infrastructure/dependencies/auth.dependencies.dart'
    show registerAuthDependencies;

/// Service locator for dependency injection.
class ServiceLocator {
  ServiceLocator._();

  static final GetIt instance = GetIt.instance;

  static Future<void> initialize() async {
    await registerAuthDependencies(instance);
  }
}
