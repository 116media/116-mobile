import 'package:flutter/material.dart';

import '../../../../../../shared/animations/fade.animation.dart' show FadeAnimation;
import '../../../../../../shared/themes/extensions/build.context.extension.dart';
import '../../../../../../shared/widgets/buttons/solid.button.dart' show SolidButton;
import '../../../../../../shared/widgets/inputfields/inputfield.widget.dart' show InputField;
import '../../../../../../shared/widgets/logo/logo.widget.dart' show Logo, LogoType;
import '../../../utils/dialog.utils.dart' show showAuthDialog;
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
  /// Shows the sign-in dialog with a slide-up animation.
  /// Closes the current dialog before opening the new one.
  Future<void> _showSignInDialog() async {
    await showAuthDialog(context, const SignInDialog(), closeExisting: true);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
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
              InputField(label: "Email", filled: true),
              InputField(label: "Username", filled: true),
              InputField(label: "Password", filled: true, isPassword: true),
            ],
          ),

          TermsAndConditions(),

          FadeAnimation(
            delay: 0.65,
            child: SolidButton(
              size: "sm",
              text: "Sign Up",
              onPressed: () {
                // handle sign up action
              },
            ),
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
            onPressed: () {
              // Redirect the user to the homepage as a guest
            },
          ),

          AuthRedirectButton(
            isCentered: true,
            onPressed: _showSignInDialog,
            actionType: AuthRedirectAction.haveAccount,
          ),
        ],
      ),
    );
  }
}
