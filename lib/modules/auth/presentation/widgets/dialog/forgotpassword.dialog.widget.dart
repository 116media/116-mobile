import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart'
    show BlocListener, BlocProvider, MultiBlocListener, MultiBlocProvider;

import '../../../../../shared/infrastructure/service.locator.dart' show sl;
import '../../../../../shared/presentation/themes/extensions/build.context.extension.dart';
import '../../../../../shared/presentation/utils/colors.util.dart' show ColorsUtil;
import '../../../../../shared/presentation/utils/dialog.util.dart' show DialogUtil;
import '../../../../../shared/presentation/widgets/bottomsheet/bottomsheet.pullbar.dart'
    show BottomSheetPullBar;
import '../../../domain/enums/forgotpassword.step.enum.dart' show ForgotPasswordStep;
import '../../../domain/enums/otppurpose.enum.dart' show OtpPurpose;
import '../../bloc/forgotpassword/forgotpassword.bloc.dart' show ForgotPasswordBloc;
import '../../bloc/forgotpassword/forgotpassword.state.dart'
    show ForgotPasswordState, ForgotPasswordSuccess, ForgotPasswordFailure;
import '../../bloc/resendotp/resendotp.bloc.dart' show ResendOtpBloc;
import '../../bloc/resendotp/resendotp.state.dart'
    show ResendOtpState, ResendOtpSuccess, ResendOtpFailure;
import '../../bloc/resetpassword/resetpassword.bloc.dart' show ResetPasswordBloc;
import '../../bloc/resetpassword/resetpassword.state.dart'
    show ResetPasswordState, ResetPasswordSuccess, ResetPasswordFailure;
import '../../bloc/verifyotp/verifyotp.bloc.dart' show VerifyOtpBloc;
import '../../bloc/verifyotp/verifyotp.state.dart'
    show VerifyOtpState, VerifyOtpSuccess, VerifyOtpFailure;
import '../../utils/dialog.utils.dart' show showAuthDialog;
import '../dialog/signin.dialog.widget.dart' show SignInDialog;
import '../forms/forgotpassword/forgotpassword.form.widget.dart' show ForgotPasswordForm;
import '../forms/resetpassword/resetpassword.form.widget.dart' show ResetPasswordForm;
import '../forms/verifyotp/verifyotp.form.widget.dart' show VerifyOtpForm;

/// A dialog widget that displays the 3-step forgot password flow.
///
/// Step 1: Enter email address ([ForgotPasswordForm])
/// Step 2: Verify OTP code ([VerifyOtpForm] with OtpPurpose.passwordReset)
/// Step 3: Reset password ([ResetPasswordForm])
///
/// This widget presents a modal dialog with rounded corners and theme-aware
/// background color. The dialog is positioned at the bottom of the screen.
///
/// Listens to:
/// - [ForgotPasswordBloc] states: Success moves to Step 2, Failure shows error
/// - [VerifyOtpBloc] states: Success moves to Step 3, Failure shows error
/// - [ResendOtpBloc] states: Success shows confirmation, Failure shows error
/// - [ResetPasswordBloc] states: Success closes dialog with message, Failure shows error
class ForgotPasswordDialog extends StatefulWidget {
  const ForgotPasswordDialog({super.key});

  @override
  State<ForgotPasswordDialog> createState() => _ForgotPasswordDialogState();
}

class _ForgotPasswordDialogState extends State<ForgotPasswordDialog> {
  ForgotPasswordStep _currentStep = ForgotPasswordStep.forgotPassword;
  String? _email;
  String? _otpCode;

  final GlobalKey<State<VerifyOtpForm>> _otpFormKey = GlobalKey<State<VerifyOtpForm>>();

  void _showErrorMessage(String message) {
    DialogUtil.error(context, message: message);
  }

  void _showSuccessMessage(String message) {
    DialogUtil.success(context, message: message);
  }

  void _clearOtpField() {
    final formState = _otpFormKey.currentState;
    if (formState != null) {
      (formState as dynamic).clearOtp();
    }
  }

  void _moveToStep(ForgotPasswordStep step) {
    setState(() => _currentStep = step);
  }

  void _forgotPasswordStateListener(ForgotPasswordState state) {
    if (state is ForgotPasswordSuccess) {
      _moveToStep(ForgotPasswordStep.verifyOtp);
      _showSuccessMessage('Verification code sent successfully! Please check your email.');
    } else if (state is ForgotPasswordFailure) {
      _showErrorMessage(state.failure.detail);
    }
  }

  void _verifyOtpStateListener(VerifyOtpState state) {
    if (state is VerifyOtpSuccess) {
      _moveToStep(ForgotPasswordStep.resetPassword);
      _showSuccessMessage('Account verified successfully! Please enter your new password.');
    } else if (state is VerifyOtpFailure) {
      _clearOtpField();
      _showErrorMessage(state.failure.detail);
    }
  }

  void _resendOtpStateListener(ResendOtpState state) {
    if (state is ResendOtpSuccess) {
      _showSuccessMessage('New verification code sent successfully! Please check your email.');
    } else if (state is ResendOtpFailure) {
      _showErrorMessage(state.failure.detail);
    }
  }

  void _resetPasswordStateListener(BuildContext ctx, ResetPasswordState state) {
    if (state is ResetPasswordSuccess) {
      final rootContext = Navigator.of(ctx, rootNavigator: true).context;
      Navigator.of(ctx).pop();

      WidgetsBinding.instance.addPostFrameCallback((_) async {
        if (rootContext.mounted) {
          DialogUtil.success(
            rootContext,
            message: "Password reset successfully! You can now sign in with your new password.",
            onDismiss: () async {
              if (rootContext.mounted) {
                await showAuthDialog(rootContext, const SignInDialog());
              }
            },
          );
        }
      });
    } else if (state is ResetPasswordFailure) {
      _showErrorMessage(state.failure.detail);
    }
  }

  Widget _buildCurrentStep() {
    switch (_currentStep) {
      case ForgotPasswordStep.forgotPassword:
        return ForgotPasswordForm(onEmailSubmitted: (email) => _email = email);
      case ForgotPasswordStep.verifyOtp:
        return VerifyOtpForm(
          key: _otpFormKey,
          email: _email,
          purpose: OtpPurpose.passwordReset,
          onOtpSubmitted: (otp) => _otpCode = otp,
        );
      case ForgotPasswordStep.resetPassword:
        return ResetPasswordForm(email: _email, code: _otpCode);
    }
  }

  @override
  Widget build(BuildContext context) {
    final backgroundColor = context.isDarkMode ? ColorsUtil.slate800 : ColorsUtil.slate200;

    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => sl<ForgotPasswordBloc>()),
        BlocProvider(create: (context) => sl<VerifyOtpBloc>()),
        BlocProvider(create: (context) => sl<ResendOtpBloc>()),
        BlocProvider(create: (context) => sl<ResetPasswordBloc>()),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<ForgotPasswordBloc, ForgotPasswordState>(
            listener: (context, state) => _forgotPasswordStateListener(state),
          ),
          BlocListener<VerifyOtpBloc, VerifyOtpState>(
            listener: (context, state) => _verifyOtpStateListener(state),
          ),
          BlocListener<ResendOtpBloc, ResendOtpState>(
            listener: (context, state) => _resendOtpStateListener(state),
          ),
          BlocListener<ResetPasswordBloc, ResetPasswordState>(
            listener: (context, state) => _resetPasswordStateListener(context, state),
          ),
        ],
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
                child: Column(
                  children: [
                    const BottomSheetPullBar(),
                    Center(child: _buildCurrentStep()),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
