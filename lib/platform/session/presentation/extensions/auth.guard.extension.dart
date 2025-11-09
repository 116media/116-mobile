import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart' show ReadContext;

import '../../../../modules/auth/presentation/widgets/dialog/signin.dialog.widget.dart' show SignInDialog;
import '../bloc/session.bloc.dart' show SessionBloc;
import '../bloc/session.state.dart' show SessionSuccess;
import '../widgets/dialogs/verification.dialog.widget.dart' show VerificationDialog;

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
  /// - Verification dialog for unverified users
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

    // If unverified, show verification dialog
    if (session.shouldPromptVerification) {
      await _showVerificationDialog();
      return false;
    }

    // If guest, show sign in dialog
    await _showSignInDialog();
    return false;
  }

  /// Shows the sign in dialog.
  Future<void> _showSignInDialog() async {
    await showDialog(
      context: this,
      builder: (context) => const SignInDialog(),
      barrierDismissible: true,
    );
  }

  /// Shows the verification dialog.
  Future<void> _showVerificationDialog() async {
    await showDialog(
      context: this,
      builder: (context) => const VerificationDialog(),
      barrierDismissible: true,
    );
  }
}