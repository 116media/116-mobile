import 'package:hive_ce/hive.dart' show Hive;
import 'package:path_provider/path_provider.dart' show getApplicationDocumentsDirectory;

import '../modules/auth/infrastructure/constants/hive.constants.dart' show kAuthBox;
import '../platform/country/infrastructure/constants/hive.constants.dart' show kCountryBox;
import '../platform/preferences/infrastructure/constants/hive.constants.dart' show kPreferencesBox;
import '../platform/session/infrastructure/constants/hive.constants.dart' show kSessionBox;
import 'hive_registrar.g.dart' show HiveRegistrar;

/// Initializes Hive for the application.
///
/// This function performs the following setup tasks:
/// - Initializes Hive with Flutter support (auto-detects platform directory)
/// - Registers type adapters for all models
/// - Opens required boxes (auth box, preferences box, session box)
///
/// This should be called once during app initialization in main().
///
/// Example:
/// ```dart
/// void main() async {
///   WidgetsFlutterBinding.ensureInitialized();
///   await initializeHive();
///   runApp(MyApp());
/// }
/// ```
Future<void> initializeHive() async {
  // Get the application documents directory
  final directory = await getApplicationDocumentsDirectory();

  // Initialize Hive with the directory path
  Hive.init(directory.path);

  // Register type adapters for all models using the generated registrar
  Hive.registerAdapters();

  // Open boxes that will be used throughout the app
  await Hive.openBox(kAuthBox);
  await Hive.openBox(kPreferencesBox);
  await Hive.openBox(kSessionBox);
  await Hive.openBox(kCountryBox);
}

/// Closes all Hive boxes and cleans up resources.
///
/// This should be called when the app is terminating to ensure
/// all data is properly persisted and resources are released.
Future<void> closeHive() async {
  await Hive.close();
}
