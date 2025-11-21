import '../../domain/entities/social-profile/social.profile.entity.dart' show SocialProfileEntity;

/// Google authentication data source.
///
/// Defines the contract for Google OAuth authentication using the
/// google_sign_in package. Handles retrieving user profile data
/// from Google after successful authentication.
///
/// **Exception Handling:**
/// All methods may throw:
/// - [SocialAuthException] if user cancels sign-in or authentication fails
/// - [UnknownException] if unexpected errors occur during sign-in
abstract class IGoogleAuthDataSource {
  /// Authenticates user with Google and retrieves profile data.
  ///
  /// Opens Google sign-in flow, authenticates user, and returns profile
  /// information including email, display name, and photo URL.
  ///
  /// **Returns:** [SocialProfileEntity] containing Google profile data.
  ///
  /// **Throws:**
  /// - [SocialAuthException] if user cancels or authentication fails
  /// - [UnknownException] if unexpected errors occur
  Future<SocialProfileEntity> signIn();
}
