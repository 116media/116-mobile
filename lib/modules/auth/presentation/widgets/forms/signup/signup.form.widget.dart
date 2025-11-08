import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../shared/presentation/animations/fade.animation.dart' show FadeAnimation;
import '../../../../../../shared/presentation/themes/extensions/build.context.extension.dart';
import '../../../../../../shared/presentation/widgets/buttons/solid.button.dart' show SolidButton;
import '../../../../../../shared/presentation/widgets/inputfields/inputfield.widget.dart' show InputField;
import '../../../../../../shared/presentation/widgets/logo/logo.widget.dart' show Logo, LogoType;
import '../../../../../home/presentation/constants/home.constants.dart' show kHomeRoutePath;
import '../../../utils/dialog.utils.dart' show showAuthDialog;
import '../../../validators/signup.validator.dart' show SignUpValidator;
import '../../shared/buttons/guest.button.dart' show GuestButton;
import '../../shared/buttons/social.login.button.dart' show SocialLoginButton, SocialPlatform;
import '../../dialog/signin.dialog.widget.dart' show SignInDialog;
import '../../shared/divider/divider.with.label.widget.dart' show DividerWithLabel;
import '../../shared/formtitle/auth.form.title.widget.dart' show AuthFormTitle;
import '../../shared/redirect/auth.redirect.button.dart'
    show AuthRedirectButton, AuthRedirectAction;
import '../../shared/termsconditions/termsconditions.widget.dart' show TermsAndConditions;

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  /// Shows the sign-in dialog with a slide-up animation.
  /// Closes the current dialog before opening the new one.
  Future<void> _showSignInDialog() async {
    await showAuthDialog(context, const SignInDialog(), closeExisting: true);
  }

  /// Handles form submission after validation.
  void _handleSignUp() {
    FocusScope.of(context).unfocus();

    if (_formKey.currentState?.validate() ?? false) {
      final email = _emailController.text;
      final username = _usernameController.text;
      final password = _passwordController.text;

      // TODO: Implement sign-up logic
      debugPrint('Email: $email');
      debugPrint('Username: $username');
      debugPrint('Password: $password');
    }
  }

  /// Handles guest access navigation.
  /// Closes the dialog and navigates to the home screen.
  void _handleContinueAsGuest() {
    Navigator.of(context).pop();
    context.go(kHomeRoutePath);
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: context.sizing.s32),
        child: Column(
          spacing: context.sizing.s12,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Logo(type: LogoType.icon, isDarkTheme: context.isDarkMode, width: context.sizing.s64),

            const AuthFormTitle(text: "Sign Up to Continue"),

            Wrap(
              spacing: context.sizing.s12,
              runSpacing: context.sizing.s12,
              alignment: WrapAlignment.center,
              children: [
                InputField(
                  filled: true,
                  label: "Email",
                  controller: _emailController,
                  validator: SignUpValidator.email("Email"),
                ),
                InputField(
                  filled: true,
                  label: "Username",
                  controller: _usernameController,
                  validator: SignUpValidator.username("Username"),
                ),
                InputField(
                  filled: true,
                  isPassword: true,
                  label: "Password",
                  controller: _passwordController,
                  validator: SignUpValidator.password("Password"),
                ),
              ],
            ),

            TermsAndConditions(),

            FadeAnimation(
              delay: 0.65,
              child: SolidButton(size: "sm", text: "Sign Up", onPressed: _handleSignUp),
            ),

            const DividerWithLabel(label: 'OR'),

            Row(
              spacing: context.sizing.s6,
              children: [
                Expanded(
                  child: SocialLoginButton(
                    platform: SocialPlatform.google,
                    onPressed: () {
                      // Handle Google login
                    },
                  ),
                ),
                Expanded(
                  child: SocialLoginButton(
                    platform: SocialPlatform.facebook,
                    onPressed: () {
                      // Handle Facebook login
                    },
                  ),
                ),
              ],
            ),

            GuestButton(
              text: "Continue as guest",
              onPressed: _handleContinueAsGuest,
            ),

            AuthRedirectButton(
              isCentered: true,
              onPressed: _showSignInDialog,
              actionType: AuthRedirectAction.haveAccount,
            ),
          ],
        ),
      ),
    );
  }
}
