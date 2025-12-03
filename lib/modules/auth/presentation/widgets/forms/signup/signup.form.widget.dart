import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart' show GoRouterHelper;
import 'package:flutter_bloc/flutter_bloc.dart' show ReadContext, SelectContext;

import '../../../../../../platform/onboarding/presentation/utils/onboarding.util.dart'
    show OnboardingUtil;
import '../../../../../../shared/presentation/animations/fade.animation.dart' show FadeAnimation;
import '../../../../../../shared/presentation/themes/extensions/build.context.extension.dart';
import '../../../../../../shared/presentation/widgets/buttons/enums/button.size.enum.dart'
    show ButtonSize;
import '../../../../../../shared/presentation/widgets/buttons/outline.button.dart'
    show OutlineButton;
import '../../../../../../shared/presentation/widgets/buttons/solid.button.dart' show SolidButton;
import '../../../../../../shared/presentation/widgets/inputfields/inputfield.widget.dart'
    show InputField;
import '../../../../../../shared/presentation/widgets/logo/logo.widget.dart' show Logo, LogoType;
import '../../../../../home/presentation/constants/home.constants.dart' show kHomeRoutePath;
import '../../../bloc/facebooksignin/facebooksignin.bloc.dart' show FacebookSignInBloc;
import '../../../bloc/facebooksignin/facebooksignin.event.dart' show FacebookSignInSubmitted;
import '../../../bloc/facebooksignin/facebooksignin.state.dart' show FacebookSignInLoading;
import '../../../bloc/googlesignin/googlesignin.bloc.dart' show GoogleSignInBloc;
import '../../../bloc/googlesignin/googlesignin.event.dart' show GoogleSignInSubmitted;
import '../../../bloc/googlesignin/googlesignin.state.dart' show GoogleSignInLoading;
import '../../../bloc/signup/signup.bloc.dart' show SignUpBloc;
import '../../../bloc/signup/signup.event.dart' show SignUpSubmitted;
import '../../../bloc/signup/signup.state.dart' show SignUpLoading;
import '../../../models/signup.credentials.model.dart' show SignUpCredentialsModel;
import '../../../utils/dialog.utils.dart' show showAuthDialog;
import '../../../validators/signup.validator.dart' show SignUpValidator;
import '../../shared/buttons/social.login.button.dart' show SocialLoginButton, SocialPlatform;
import '../../dialog/signin.dialog.widget.dart' show SignInDialog;
import '../../shared/divider/divider.with.label.widget.dart' show DividerWithLabel;
import '../../shared/formtitle/auth.form.title.widget.dart' show AuthFormTitle;
import '../../shared/redirect/auth.redirect.button.dart'
    show AuthRedirectButton, AuthRedirectAction;
import '../../shared/termsconditions/termsconditions.widget.dart' show TermsAndConditions;

class SignUpForm extends StatefulWidget {
  final VoidCallback? onGuestContinue;

  const SignUpForm({super.key, this.onGuestContinue});

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
  /// Passes the onGuestContinue callback to maintain consistent behavior.
  Future<void> _showSignInDialog() async {
    await showAuthDialog(
      context,
      SignInDialog(onGuestContinue: widget.onGuestContinue),
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

  /// Handles guest access.
  /// Closes the dialog and executes the onGuestContinue callback if provided,
  /// otherwise defaults to navigating to home.
  void _handleContinueAsGuest() async {
    await OnboardingUtil.markCompleted();

    if (mounted) {
      Navigator.of(context).pop();

      if (widget.onGuestContinue != null) {
        widget.onGuestContinue!();
      } else {
        context.go(kHomeRoutePath);
      }
    }
  }

  /// Handles Google sign-in.
  void _handleGoogleSignIn() {
    context.read<GoogleSignInBloc>().add(const GoogleSignInSubmitted());
  }

  /// Handles Facebook sign-in.
  void _handleFacebookSignIn() {
    context.read<FacebookSignInBloc>().add(const FacebookSignInSubmitted());
  }

  @override
  Widget build(BuildContext context) {
    final isGoogleLoading = context.select<GoogleSignInBloc, bool>(
      (bloc) => bloc.state is GoogleSignInLoading,
    );
    final isFacebookLoading = context.select<FacebookSignInBloc, bool>(
      (bloc) => bloc.state is FacebookSignInLoading,
    );
    final isLoading = context.select<SignUpBloc, bool>((bloc) => bloc.state is SignUpLoading);

    final isSocialLoading = isGoogleLoading || isFacebookLoading;

    return Form(
      key: _formKey,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: context.sizing.s32),
        child: Column(
          spacing: context.sizing.s12,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Logo(type: LogoType.icon, width: context.sizing.s64, isDarkTheme: context.isDarkMode),

            const AuthFormTitle(text: "Sign Up to Continue"),

            Wrap(
              spacing: context.sizing.s12,
              runSpacing: context.sizing.s12,
              alignment: WrapAlignment.center,
              children: [
                InputField(
                  isFilled: true,
                  label: "Email",
                  isDisabled: isLoading,
                  controller: _emailController,
                  validator: SignUpValidator.email("Email"),
                ),
                InputField(
                  isFilled: true,
                  label: "Username",
                  isDisabled: isLoading,
                  controller: _usernameController,
                  validator: SignUpValidator.userName("Username"),
                ),
                InputField(
                  isFilled: true,
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
              spacing: context.sizing.s12,
              children: [
                Expanded(
                  child: SocialLoginButton(
                    size: ButtonSize.sm,
                    onPressed: _handleGoogleSignIn,
                    platform: SocialPlatform.google,
                    isDisabled: isLoading || isSocialLoading,
                  ),
                ),
                Expanded(
                  child: SocialLoginButton(
                    size: ButtonSize.sm,
                    onPressed: _handleFacebookSignIn,
                    platform: SocialPlatform.facebook,
                    isDisabled: isLoading || isSocialLoading,
                  ),
                ),
              ],
            ),

            OutlineButton(
              size: ButtonSize.sm,
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
