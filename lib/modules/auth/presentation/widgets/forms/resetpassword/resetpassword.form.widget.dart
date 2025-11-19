import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart' show BlocBuilder, ReadContext;

import '../../../../../../shared/presentation/animations/fade.animation.dart' show FadeAnimation;
import '../../../../../../shared/presentation/themes/extensions/build.context.extension.dart';
import '../../../../../../shared/presentation/utils/colors.util.dart' show ColorsUtil;
import '../../../../../../shared/presentation/widgets/buttons/enums/button.size.enum.dart'
    show ButtonSize;
import '../../../../../../shared/presentation/widgets/buttons/solid.button.dart' show SolidButton;
import '../../../../../../shared/presentation/widgets/inputfields/inputfield.widget.dart'
    show InputField;
import '../../../../../../shared/presentation/widgets/logo/logo.widget.dart' show Logo, LogoType;
import '../../../bloc/resetpassword/resetpassword.bloc.dart';
import '../../../bloc/resetpassword/resetpassword.event.dart';
import '../../../bloc/resetpassword/resetpassword.state.dart';
import '../../../models/resetpassword.credentials.model.dart';
import '../../../utils/dialog.utils.dart' show showAuthDialog;
import '../../../validators/resetpassword.validator.dart' show ResetPasswordValidator;
import '../../dialog/signin.dialog.widget.dart' show SignInDialog;
import '../../shared/formtitle/auth.form.title.widget.dart' show AuthFormTitle;
import '../../shared/redirect/auth.redirect.button.dart'
    show AuthRedirectButton, AuthRedirectAction;

/// Reset password form.
///
/// Allows users to enter a new password and confirm it.
/// Used in the forgot password flow (Step 3).
class ResetPasswordForm extends StatefulWidget {
  final String? code;
  final String? email;

  const ResetPasswordForm({super.key, this.email, this.code});

  @override
  State<ResetPasswordForm> createState() => _ResetPasswordFormState();
}

class _ResetPasswordFormState extends State<ResetPasswordForm> {
  final _formKey = GlobalKey<FormState>();
  final _newPasswordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    _newPasswordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  /// Handles form submission after validation.
  /// Resets the password to the new value.
  void _handleSubmit() {
    FocusScope.of(context).unfocus();

    if (_formKey.currentState?.validate() ?? false) {
      final credentials = ResetPasswordCredentialsModel(
        code: widget.code!,
        email: widget.email!,
        newPassword: _newPasswordController.text,
      );

      context.read<ResetPasswordBloc>().add(ResetPasswordSubmitted(credentials));
    }
  }

  /// Closes the dialog and reopens the sign-in dialog.
  Future<void> _handleBack() async {
    Navigator.of(context).pop();
    await showAuthDialog(context, const SignInDialog());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ResetPasswordBloc, ResetPasswordState>(
      builder: (context, state) {
        final isLoading = state is ResetPasswordLoading;
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

                const AuthFormTitle(text: "Reset Password"),

                Text(
                  "Enter your new password below to reset your account password.",
                  textAlign: TextAlign.center,
                  style: context.textTheme.bodyMedium?.copyWith(
                    color: textColor.withValues(alpha: 0.7),
                  ),
                ),

                InputField(
                  isFilled: true,
                  isPassword: true,
                  label: "New Password",
                  isDisabled: isLoading,
                  controller: _newPasswordController,
                  validator: ResetPasswordValidator.newPassword("New Password"),
                ),

                InputField(
                  isFilled: true,
                  isPassword: true,
                  label: "Confirm Password",
                  isDisabled: isLoading,
                  controller: _confirmPasswordController,
                  validator: (value) => ResetPasswordValidator.confirmPassword(
                    "Confirm Password",
                    _newPasswordController.text,
                  )(value),
                ),

                FadeAnimation(
                  delay: 0.65,
                  child: SolidButton(
                    isFull: true,
                    text: "Reset Password",
                    size: ButtonSize.sm,
                    isLoading: isLoading,
                    isDisabled: isLoading,
                    onPressed: _handleSubmit,
                  ),
                ),

                AuthRedirectButton(
                  isCentered: true,
                  onPressed: _handleBack,
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
