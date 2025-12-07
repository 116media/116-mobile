import 'package:flutter_dotenv/flutter_dotenv.dart' show dotenv;

/// Provides access to environment-specific configuration values used in the application.
///
/// This class centralizes all environment variable access, making it easier to manage
/// configuration across the app and ensuring consistent access patterns.
///
/// Environment variables are loaded from the `.env` file at app startup.
abstract class EnvConfig {
  EnvConfig._();

  /// Retrieves the Google OAuth Web Client ID for server-side authentication.
  ///
  /// This is the Web Client ID (not Android/iOS Client ID) used as the
  /// `serverClientId` parameter when initializing Google Sign-In.
  ///
  /// Expected environment variable: `GOOGLE_SERVER_CLIENT_ID`
  static String? get googleServerClientId => dotenv.get("GOOGLE_SERVER_CLIENT_ID");
}
