import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart' show BlocListener, BlocProvider;

import '../../../../../shared/presentation/themes/extensions/build.context.extension.dart';
import '../../../../../shared/infrastructure/service.locator.dart' show sl;
import '../../../../../shared/presentation/utils/colors.util.dart' show ColorsUtil;
import '../../../../../shared/presentation/utils/dialog.util.dart' show DialogUtil;
import '../../bloc/signup/signup.bloc.dart' show SignUpBloc;
import '../../bloc/signup/signup.state.dart' show SignUpState, SignUpSuccess, SignUpFailure;
import '../../utils/dialog.utils.dart' show showAuthDialog;
import '../forms/signup/signup.form.widget.dart' show SignUpForm;
import 'verifyotp.dialog.widget.dart' show VerifyOtpDialog;

/// A dialog widget that displays the sign-up form.
///
/// This widget presents a modal dialog with rounded corners and theme-aware
/// background color. The dialog is positioned at the bottom of the screen
/// and contains the [SignUpForm] widget with BLoC integration.
///
/// Listens to [SignUpBloc] states and handles:
/// - Success with unverified account: Shows verification dialog
/// - Failure: Shows error dialog
class SignUpDialog extends StatefulWidget {
  const SignUpDialog({super.key});

  @override
  State<SignUpDialog> createState() => _SignUpDialogState();
}

class _SignUpDialogState extends State<SignUpDialog> {
  /// Shows an error dialog with the provided message.
  void _showErrorMessage(String message) {
    DialogUtil.error(context, message: message);
  }

  /// Shows the verification dialog for account verification.
  ///
  /// Closes the signup dialog and displays the verification dialog
  /// for the user to enter their OTP code. Passes the user's email
  /// from the signup response for display and OTP submission.
  Future<void> _showVerificationDialog(String email) async {
    await showAuthDialog(context, VerifyOtpDialog(email: email), closeExisting: true);
  }

  @override
  Widget build(BuildContext context) {
    final backgroundColor = context.isDarkMode ? ColorsUtil.slate800 : ColorsUtil.slate200;

    return BlocProvider(
      create: (context) => sl<SignUpBloc>(),
      child: BlocListener<SignUpBloc, SignUpState>(
        listener: (context, state) {
          if (state is SignUpSuccess) {
            final email = state.authResponse.user.email ?? '';
            _showVerificationDialog(email);
            return;
          }

          if (state is SignUpFailure) {
            _showErrorMessage(state.failure.detail);
            return;
          }
        },
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Align(
            alignment: Alignment.bottomCenter,
            child: SingleChildScrollView(
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(context.sizing.s24),
                decoration: BoxDecoration(
                  color: backgroundColor,
                  borderRadius: BorderRadius.all(Radius.circular(context.sizing.s12)),
                ),
                child: const Center(child: SignUpForm()),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
