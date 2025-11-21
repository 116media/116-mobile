import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart' show BlocBuilder, ReadContext;

import '../../../../../../shared/presentation/themes/extensions/build.context.extension.dart';
import '../../../../../../shared/presentation/animations/fade.animation.dart' show FadeAnimation;
import '../../../../../../shared/presentation/utils/colors.util.dart' show ColorsUtil;
import '../../../../../../shared/presentation/widgets/buttons/enums/button.size.enum.dart'
    show ButtonSize;
import '../../../../../../shared/presentation/widgets/buttons/solid.button.dart' show SolidButton;
import '../../../../../../shared/presentation/widgets/inputfields/inputfield.widget.dart'
    show InputField;
import '../../../../../../shared/presentation/widgets/logo/logo.widget.dart' show Logo, LogoType;
import '../../../bloc/forgotpassword/forgotpassword.bloc.dart' show ForgotPasswordBloc;
import '../../../bloc/forgotpassword/forgotpassword.event.dart' show ForgotPasswordSubmitted;
import '../../../bloc/forgotpassword/forgotpassword.state.dart'
    show ForgotPasswordLoading, ForgotPasswordState;
import '../../../models/forgotpassword.credentials.model.dart' show ForgotPasswordCredentialsModel;
import '../../../utils/dialog.utils.dart' show showAuthDialog;
import '../../../validators/forgotpassword.validator.dart' show ForgotPasswordValidator;
import '../../dialog/signin.dialog.widget.dart' show SignInDialog;
import '../../shared/formtitle/auth.form.title.widget.dart' show AuthFormTitle;
import '../../shared/redirect/auth.redirect.button.dart'
    show AuthRedirectButton, AuthRedirectAction;

/// Forgot password email form (Step 1).
///
/// Allows users to enter their email address to receive a password reset OTP.
/// Part of the 3-step forgot password flow.
class ForgotPasswordForm extends StatefulWidget {
  final void Function(String email)? onEmailSubmitted;

  const ForgotPasswordForm({super.key, this.onEmailSubmitted});

  @override
  State<ForgotPasswordForm> createState() => _ForgotPasswordFormState();
}

class _ForgotPasswordFormState extends State<ForgotPasswordForm> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  /// Handles form submission after validation.
  /// Sends OTP to the provided email address.
  void _handleSubmit() {
    FocusScope.of(context).unfocus();

    if (_formKey.currentState?.validate() ?? false) {
      final email = _emailController.text.trim();
      final credentials = ForgotPasswordCredentialsModel(email: email);

      widget.onEmailSubmitted?.call(email);
      context.read<ForgotPasswordBloc>().add(ForgotPasswordSubmitted(credentials));
    }
  }

  /// Closes the dialog and reopens the sign-in dialog.
  Future<void> _handleBackToSignIn() async {
    Navigator.of(context).pop();
    await showAuthDialog(context, const SignInDialog());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ForgotPasswordBloc, ForgotPasswordState>(
      builder: (context, state) {
        final isLoading = state is ForgotPasswordLoading;
        final textColor = context.isDarkMode ? ColorsUtil.white : ColorsUtil.black;

        return Form(
          key: _formKey,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: context.sizing.s32),
            child: Column(
              spacing: context.sizing.s20,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Logo(
                  type: LogoType.icon,
                  width: context.sizing.s64,
                  isDarkTheme: context.isDarkMode,
                ),

                const AuthFormTitle(text: "Forgot Password"),

                Text(
                  "Enter the email associated with your account. We'll send you a verification code to reset your password.",
                  textAlign: TextAlign.center,
                  style: context.textTheme.bodyMedium?.copyWith(
                    color: textColor.withValues(alpha: 0.7),
                  ),
                ),

                InputField(
                  isFilled: true,
                  label: "Email",
                  isDisabled: isLoading,
                  controller: _emailController,
                  validator: ForgotPasswordValidator.email("Email"),
                ),

                FadeAnimation(
                  delay: 0.65,
                  child: SolidButton(
                    isFull: true,
                    text: "Send Code",
                    size: ButtonSize.sm,
                    isLoading: isLoading,
                    isDisabled: isLoading,
                    onPressed: _handleSubmit,
                  ),
                ),

                AuthRedirectButton(
                  isCentered: true,
                  onPressed: _handleBackToSignIn,
                  actionType: AuthRedirectAction.backToSignin,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
