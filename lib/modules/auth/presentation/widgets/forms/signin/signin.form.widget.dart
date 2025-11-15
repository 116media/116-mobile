import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../shared/presentation/themes/extensions/build.context.extension.dart';
import '../../../../../../shared/presentation/animations/fade.animation.dart' show FadeAnimation;
import '../../../../../../shared/presentation/widgets/buttons/enums/button.size.enum.dart'
    show ButtonSize;
import '../../../../../../shared/presentation/widgets/buttons/solid.button.dart' show SolidButton;
import '../../../../../../shared/presentation/widgets/inputfields/inputfield.widget.dart'
    show InputField;
import '../../../../../../shared/presentation/widgets/logo/logo.widget.dart' show Logo, LogoType;
import '../../../../../home/presentation/constants/home.constants.dart' show kHomeRoutePath;
import '../../../bloc/signin/signin.bloc.dart';
import '../../../bloc/signin/signin.event.dart';
import '../../../bloc/signin/signin.state.dart';
import '../../../models/signin.credentials.model.dart';
import '../../../utils/dialog.utils.dart' show showAuthDialog;
import '../../../validators/signin.validator.dart' show SignInValidator;
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
  final _formKey = GlobalKey<FormState>();
  final _credentialsController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _credentialsController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  /// Shows the sign-up dialog with a slide-up animation.
  /// Closes the current dialog before opening the new one.
  Future<void> _showSignUpDialog() async {
    await showAuthDialog(context, const SignUpDialog(), closeExisting: true);
  }

  /// Handles form submission after validation.
  void _handleSignIn() {
    FocusScope.of(context).unfocus();

    if (_formKey.currentState?.validate() ?? false) {
      final credentials = SignInCredentialsModel(
        credentials: _credentialsController.text.trim(),
        password: _passwordController.text,
      );

      context.read<SignInBloc>().add(SignInSubmitted(credentials));
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
    return BlocBuilder<SignInBloc, SignInState>(
      builder: (context, state) {
        final isLoading = state is SignInLoading;

        return Form(
          key: _formKey,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: context.sizing.s32),
            child: Column(
              spacing: context.sizing.s12,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Logo(
                  type: LogoType.icon,
                  width: context.sizing.s64,
                  isDarkTheme: context.isDarkMode,
                ),

                const AuthFormTitle(text: "Sign In to Continue"),

                Wrap(
                  spacing: context.sizing.s12,
                  runSpacing: context.sizing.s12,
                  alignment: WrapAlignment.center,
                  children: [
                    InputField(
                      filled: true,
                      isDisabled: isLoading,
                      label: "Email or username",
                      controller: _credentialsController,
                      validator: SignInValidator.credentials("Email or username"),
                    ),
                    InputField(
                      filled: true,
                      isPassword: true,
                      isDisabled: isLoading,
                      label: "Password",
                      controller: _passwordController,
                      validator: SignInValidator.password("Password"),
                    ),
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
                    isFull: true,
                    text: "Sign In",
                    size: ButtonSize.sm,
                    isLoading: isLoading,
                    isDisabled: isLoading,
                    onPressed: _handleSignIn,
                  ),
                ),

                const DividerWithLabel(label: 'OR'),

                Row(
                  spacing: context.sizing.s6,
                  children: [
                    Expanded(
                      child: SocialLoginButton(
                        isDisabled: isLoading,
                        onPressed: () {
                          // Handle Google login
                        },
                        platform: SocialPlatform.google,
                      ),
                    ),
                    Expanded(
                      child: SocialLoginButton(
                        isDisabled: isLoading,
                        onPressed: () {
                          // Handle Facebook login
                        },
                        platform: SocialPlatform.facebook,
                      ),
                    ),
                  ],
                ),

                GuestButton(text: "Continue as guest", onPressed: _handleContinueAsGuest),

                AuthRedirectButton(
                  isCentered: true,
                  onPressed: _showSignUpDialog,
                  actionType: AuthRedirectAction.dontHaveAccount,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
