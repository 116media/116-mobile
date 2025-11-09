/// Represents the authentication status of the user.
///
/// - [guest]: Not logged in - can read content
/// - [unverified]: Logged in but email not verified - can read only
/// - [authenticated]: Logged in + verified - full access
enum AuthStatus {
  guest,
  unverified,
  authenticated;

  /// Returns true if user is fully authenticated (logged in + verified).
  /// Authenticated users have full access to read and write actions.
  bool get isAuthenticated => this == AuthStatus.authenticated;

  /// Returns true if user needs email verification.
  bool get needsVerification => this == AuthStatus.unverified;
}
