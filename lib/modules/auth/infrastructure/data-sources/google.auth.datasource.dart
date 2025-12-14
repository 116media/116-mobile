import 'package:google_sign_in/google_sign_in.dart'
    show GoogleSignIn, GoogleSignInAccount, GoogleSignInAuthentication, GoogleSignInException;

import '../../../../i18n/strings.g.dart' show t;
import '../../../../shared/application/configs/env.config.dart' show EnvConfig;
import '../../../../shared/infrastructure/exceptions/remote/socialauth.exception.dart'
    show SocialAuthException;
import '../../application/data-sources/google.auth.datasource.port.dart' show IGoogleAuthDataSource;
import '../../domain/entities/social-profile/social.profile.entity.dart' show SocialProfileEntity;

/// Google authentication data source implementation.
///
/// Implements Google OAuth authentication using the google_sign_in package.
/// Handles the OAuth flow and retrieves user profile data from Google.
class GoogleAuthDataSource implements IGoogleAuthDataSource {
  final GoogleSignIn _googleSignIn;
  bool _isGoogleSignInInitialized = false;

  GoogleAuthDataSource(this._googleSignIn);

  @override
  Future<SocialProfileEntity> signIn() async {
    /// Initialize GoogleSignIn if not already done
    if (!_isGoogleSignInInitialized) {
      await _initGoogleSignIn();
    }

    try {
      final GoogleSignInAccount account = await _googleSignIn.authenticate(
        scopeHint: ['email', 'profile'],
      );

      final GoogleSignInAuthentication auth = account.authentication;

      return SocialProfileEntity(
        email: account.email,
        displayName: account.displayName,
        photoUrl: account.photoUrl,
        idToken: auth.idToken,
      );
    } on GoogleSignInException catch (e) {
      throw SocialAuthException("Google Auth: ${e.description}");
    } on SocialAuthException {
      rethrow;
    } catch (e) {
      throw SocialAuthException(t.auth.googleError.unexpected(error: e.toString()));
    }
  }

  /// Initializes the Google Sign-In SDK.
  ///
  /// This method must be called before attempting authentication. It prepares
  /// the Google Sign-In client with the necessary configuration (client ID,
  /// server client ID, etc.) provided during GoogleSignIn instance creation.
  ///
  /// Throws [SocialAuthException] if initialization fails.
  Future<void> _initGoogleSignIn() async {
    try {
      await _googleSignIn.initialize(serverClientId: EnvConfig.googleServerClientId);
      _isGoogleSignInInitialized = true;
    } catch (e) {
      throw SocialAuthException(t.auth.googleError.initFailed(error: e.toString()));
    }
  }
}
