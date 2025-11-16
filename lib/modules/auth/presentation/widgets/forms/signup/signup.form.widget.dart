import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart' show BlocBuilder, BlocProvider, ReadContext;

import '../../../../../../shared/presentation/animations/fade.animation.dart' show FadeAnimation;
import '../../../../../../shared/presentation/themes/extensions/build.context.extension.dart';
import '../../../../../../shared/infrastructure/service.locator.dart' show sl;
import '../../../../../../shared/presentation/widgets/buttons/enums/button.size.enum.dart'
    show ButtonSize;
import '../../../../../../shared/presentation/widgets/buttons/solid.button.dart' show SolidButton;
import '../../../../../../shared/presentation/widgets/inputfields/inputfield.widget.dart'
    show InputField;
import '../../../../../../shared/presentation/widgets/logo/logo.widget.dart' show Logo, LogoType;
import '../../../../../home/presentation/constants/home.constants.dart' show kHomeRoutePath;
import '../../../bloc/signin/signin.bloc.dart' show SignInBloc;
import '../../../bloc/signup/signup.bloc.dart';
import '../../../bloc/signup/signup.event.dart';
import '../../../bloc/signup/signup.state.dart';
import '../../../models/signup.credentials.model.dart';
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
  /// Wraps the dialog with [SignInBloc] provider.
  Future<void> _showSignInDialog() async {
    await showAuthDialog(
      context,
      BlocProvider(
        create: (context) => sl<SignInBloc>(),
        child: const SignInDialog(),
      ),
      closeExisting: true,
    );
  }

  /// Handles form submission after validation.
  ///
  /// Dispatches [SignUpSubmitted] event to the [SignUpBloc] with user credentials.
  void _handleSignUp() {
    FocusScope.of(context).unfocus();

    if (_formKey.currentState?.validate() ?? false) {
      final credentials = SignUpCredentialsModel(
        email: _emailController.text.trim(),
        userName: _usernameController.text.trim(),
        password: _passwordController.text,
      );

      context.read<SignUpBloc>().add(SignUpSubmitted(credentials));
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
    return BlocBuilder<SignUpBloc, SignUpState>(
      builder: (context, state) {
        final isLoading = state is SignUpLoading;

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

                const AuthFormTitle(text: "Sign Up to Continue"),

                Wrap(
                  spacing: context.sizing.s12,
                  runSpacing: context.sizing.s12,
                  alignment: WrapAlignment.center,
                  children: [
                    InputField(
                      filled: true,
                      label: "Email",
                      isDisabled: isLoading,
                      controller: _emailController,
                      validator: SignUpValidator.email("Email"),
                    ),
                    InputField(
                      filled: true,
                      label: "Username",
                      isDisabled: isLoading,
                      controller: _usernameController,
                      validator: SignUpValidator.username("Username"),
                    ),
                    InputField(
                      filled: true,
                      isPassword: true,
                      label: "Password",
                      isDisabled: isLoading,
                      controller: _passwordController,
                      validator: SignUpValidator.password("Password"),
                    ),
                  ],
                ),

                TermsAndConditions(),

                FadeAnimation(
                  delay: 0.65,
                  child: SolidButton(
                    isFull: true,
                    text: "Sign Up",
                    size: ButtonSize.sm,
                    isLoading: isLoading,
                    isDisabled: isLoading,
                    onPressed: _handleSignUp,
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
                  onPressed: _showSignInDialog,
                  actionType: AuthRedirectAction.haveAccount,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
