import 'package:freezed_annotation/freezed_annotation.dart';

import '../../enums/auth.status.enum.dart' show AuthStatus;

part 'session.state.entity.freezed.dart';

/// Entity representing the current session state of the application.
///
/// Tracks onboarding completion, preferences setup, and authentication status.
/// Provides computed properties for access control and navigation decisions.
@freezed
abstract class SessionStateEntity with _$SessionStateEntity {
  const SessionStateEntity._();

  const factory SessionStateEntity({
    required bool hasCompletedOnboarding,
    required bool hasSetPreferences,
    required AuthStatus authStatus,
    String? userId,
  }) = _SessionStateEntity;

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
}
