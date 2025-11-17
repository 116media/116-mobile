import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart' show ReadContext;

import '../../../../modules/auth/application/data-sources/auth.local.datasource.port.dart'
    show IAuthLocalDataSource;
import '../../../../modules/auth/presentation/utils/dialog.utils.dart' show showAuthDialog;
import '../../../../modules/auth/presentation/widgets/dialog/signin.dialog.widget.dart'
    show SignInDialog;
import '../../../../modules/auth/presentation/widgets/dialog/verifyotp.dialog.widget.dart'
    show VerifyOtpDialog;
import '../../../../shared/infrastructure/service.locator.dart' show sl;
import '../bloc/session.bloc.dart' show SessionBloc;
import '../bloc/session.state.dart' show SessionSuccess;

/// Extension on BuildContext for authentication guards.
///
/// Provides convenient methods to check authentication status and
/// show appropriate dialogs when actions require authentication.
extension AuthGuardExtension on BuildContext {
  /// Guards an action that requires full authentication.
  ///
  /// Executes [action] if user is fully authenticated (logged in + verified).
  /// Otherwise, shows appropriate dialog:
  /// - Sign in dialog for guest users
  /// - Verification dialog for unverified users (fetches email from Hive)
  ///
  /// Returns true if action was executed, false if blocked by guard.
  ///
  /// Example:
  /// ```dart
  /// onTap: () {
  ///   context.guardAction(() {
  ///     // Like the post
  ///     likeBloc.add(LikePost(postId));
  ///   });
  /// }
  /// ```
  Future<bool> guardAction(VoidCallback action) async {
    final sessionBloc = read<SessionBloc>();
    final sessionState = sessionBloc.state;

    if (sessionState is! SessionSuccess) {
      // Session not loaded yet, block action
      return false;
    }

    final session = sessionState.sessionState;

    // If fully authenticated, execute action
    if (session.isAuthenticated) {
      action();
      return true;
    }

    // If unverified, show verification dialog with email from Hive
    if (session.shouldPromptVerification) {
      final localDataSource = sl<IAuthLocalDataSource>();
      final cachedUser = await localDataSource.getUser();
      final email = cachedUser?.email ?? '';

      await showAuthDialog(this, VerifyOtpDialog(email: email), closeExisting: true);
      return false;
    }

    // If guest, show sign in dialog
    await showAuthDialog(this, const SignInDialog(), closeExisting: true);
    return false;
  }
}
