import 'package:flutter/material.dart';

import '../../../../../../shared/animations/fade.animation.dart' show FadeAnimation;
import '../../../../../../shared/themes/extensions/build.context.extension.dart';
import '../../../../../../shared/widgets/buttons/solid.button.dart' show SolidButton;
import '../../../../../../shared/widgets/inputfields/inputfield.widget.dart' show InputField;
import '../../../../../../shared/widgets/logo/logo.widget.dart' show Logo, LogoType;
import '../../shared/buttons/guest.button.dart' show GuestButton;
import '../../shared/buttons/social.login.button.dart' show SocialLoginButton, SocialPlatform;
import '../../dialog/signup.dialog.widget.dart' show SignUpDialog;
import '../../shared/divider/divider.with.label.widget.dart' show DividerWithLabel;
import '../../shared/formtitle/auth.form.title.widget.dart' show AuthFormTitle;
import '../../shared/redirect/auth.redirect.button.dart'
    show AuthRedirectButton, AuthRedirectAction;
import '../../shared/termsconditions/termsconditions.widget.dart' show TermsAndConditions;

class SignInForm extends StatefulWidget {
  const SignInForm({super.key});

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  /// Shows the sign-up dialog with a slide-up animation.
  Future<void> _showSignUpDialog() async {
    await showGeneralDialog<Widget>(
      context: context,
      barrierDismissible: false,
      transitionDuration: const Duration(milliseconds: 500),
      transitionBuilder: (context, animation, secondaryAnimation, child) {
        Tween<Offset> tween = Tween(begin: const Offset(0, 1), end: Offset.zero);
        return SlideTransition(
          position: tween.animate(CurvedAnimation(parent: animation, curve: Curves.easeInOut)),
          child: child,
        );
      },
      pageBuilder: (context, animation, secondaryAnimation) {
        return const SignUpDialog();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: context.sizing.s24),
      child: Column(
        spacing: context.sizing.s24,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Logo(type: LogoType.icon, isDarkTheme: context.isDarkMode, width: context.sizing.s64),

          const AuthFormTitle(text: "Sign In to Continue"),

          Wrap(
            spacing: context.sizing.s12,
            runSpacing: context.sizing.s12,
            alignment: WrapAlignment.center,
            children: [
              InputField(label: "Email", filled: true),
              InputField(label: "Password", filled: true, isPassword: true),
              AuthRedirectButton(
                isCentered: false,
                actionType: AuthRedirectAction.forgotPassword,
                onPressed: () {
                  // should display the 'forgot password' dialog
                },
              ),
            ],
          ),

          TermsAndConditions(),

          FadeAnimation(
            delay: 0.65,
            child: SolidButton(
              size: "sm",
              text: "Sign In",
              onPressed: () {
                // handle sign in action
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
            onPressed: _showSignUpDialog,
            actionType: AuthRedirectAction.dontHaveAccount,
          ),
        ],
      ),
    );
  }
}
