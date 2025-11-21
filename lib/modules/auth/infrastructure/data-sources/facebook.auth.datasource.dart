import 'package:flutter_facebook_auth/flutter_facebook_auth.dart'
    show FacebookAuth, LoginResult, LoginStatus;

import '../../../../shared/infrastructure/exceptions/remote/socialauth.exception.dart'
    show SocialAuthException;
import '../../application/data-sources/facebook.auth.datasource.port.dart'
    show IFacebookAuthDataSource;
import '../../domain/entities/social-profile/social.profile.entity.dart' show SocialProfileEntity;

/// Facebook authentication data source implementation.
///
/// Implements Facebook OAuth authentication using the flutter_facebook_auth package.
/// Handles the OAuth flow and retrieves user profile data from Facebook.
class FacebookAuthDataSource implements IFacebookAuthDataSource {
  final FacebookAuth _facebookAuth;

  FacebookAuthDataSource(this._facebookAuth);

  @override
  Future<SocialProfileEntity> signIn() async {
    try {
      final LoginResult result = await _facebookAuth.login(
        permissions: ['email', 'public_profile'],
      );

      /// Check login status: success, cancelled, or error
      if (result.status != LoginStatus.success) {
        throw SocialAuthException('Facebook sign-in cancelled by the user');
      }

      final userData = await _facebookAuth.getUserData();

      return SocialProfileEntity(
        email: userData['email'] as String,
        displayName: userData['name'] as String?,
        photoUrl: userData['picture']?['data']?['url'] as String?,
      );
    } on SocialAuthException {
      rethrow;
    } catch (e) {
      throw SocialAuthException("Unexpected Facebook Sign-In error: $e");
    }
  }
}
