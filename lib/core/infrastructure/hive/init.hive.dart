import 'package:hive/hive.dart' show Hive;
import 'package:path_provider/path_provider.dart' show getApplicationDocumentsDirectory;

import '../../../modules/auth/infrastructure/constants/hive.constants.dart' show kAuthBox;

/// Initializes Hive for the application.
///
/// This function performs the following setup tasks:
/// - Initializes Hive with Flutter support (auto-detects platform directory)
/// - Opens required boxes (auth box)
///
/// Note: Hive 2.2.3 automatically handles JSON serialization for objects
/// with toJson() and fromJson() methods, so no manual adapter registration
/// is needed.
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

  // Open boxes that will be used throughout the app
  // Hive will automatically serialize/deserialize objects with toJson/fromJson
  await Hive.openBox(kAuthBox);
}

/// Closes all Hive boxes and cleans up resources.
///
/// This should be called when the app is terminating to ensure
/// all data is properly persisted and resources are released.
Future<void> closeHive() async {
  await Hive.close();
}
