import '../enums/auth.status.enum.dart' show AuthStatus;

/// Entity representing the current session state of the application.
///
/// Tracks onboarding completion, preferences setup, and authentication status.
/// Provides computed properties for access control and navigation decisions.
class SessionStateEntity {
  final bool hasCompletedOnboarding;
  final bool hasSetPreferences;
  final AuthStatus authStatus;
  final String? userId;

  const SessionStateEntity({
    required this.hasCompletedOnboarding,
    required this.hasSetPreferences,
    required this.authStatus,
    this.userId,
  });

  /// Returns true if user should see the preferences screen.
  /// Preferences are shown first, before onboarding.
  bool get shouldShowPreferences => !hasSetPreferences;

  /// Returns true if user should see the onboarding screen.
  /// Onboarding is shown after preferences are set.
  bool get shouldShowOnboarding => hasSetPreferences && !hasCompletedOnboarding;

  /// Returns true if user can access the main application.
  /// User must complete both preferences and onboarding.
  bool get canAccessApp => hasSetPreferences && hasCompletedOnboarding;

  /// Returns true if user is fully authenticated (logged in + verified).
  /// Authenticated users have full access to read and write actions.
  bool get isAuthenticated => authStatus.isAuthenticated;

  /// Returns true if user should see verification prompts.
  bool get shouldPromptVerification => authStatus.needsVerification;

  /// Returns true if user is browsing as a guest (not logged in).
  bool get isGuest => authStatus == AuthStatus.guest;

  SessionStateEntity copyWith({
    bool? hasCompletedOnboarding,
    bool? hasSetPreferences,
    AuthStatus? authStatus,
    String? userId,
  }) {
    return SessionStateEntity(
      hasCompletedOnboarding: hasCompletedOnboarding ?? this.hasCompletedOnboarding,
      hasSetPreferences: hasSetPreferences ?? this.hasSetPreferences,
      authStatus: authStatus ?? this.authStatus,
      userId: userId ?? this.userId,
    );
  }
}
