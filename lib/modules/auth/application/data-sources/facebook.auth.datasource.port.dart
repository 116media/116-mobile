import '../../domain/entities/social-profile/social.profile.entity.dart' show SocialProfileEntity;

/// Facebook authentication data source.
///
/// Defines the contract for Facebook OAuth authentication using the
/// flutter_facebook_auth package. Handles retrieving user profile data
/// from Facebook after successful authentication.
///
/// **Exception Handling:**
/// All methods may throw:
/// - [SocialAuthException] if user cancels sign-in or authentication fails
/// - [UnknownException] if unexpected errors occur during sign-in
abstract class IFacebookAuthDataSource {
  /// Authenticates user with Facebook and retrieves profile data.
  ///
  /// Opens Facebook sign-in flow, authenticates user, and returns profile
  /// information including email, display name, and photo URL.
  ///
  /// **Returns:** [SocialProfileEntity] containing Facebook profile data.
  ///
  /// **Throws:**
  /// - [SocialAuthException] if user cancels or authentication fails
  /// - [UnknownException] if unexpected errors occur
  Future<SocialProfileEntity> signIn();
}
