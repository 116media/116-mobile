import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart' show GoRouterHelper;
import 'package:flutter_bloc/flutter_bloc.dart' show ReadContext, SelectContext;

import '../../../../../../i18n/strings.g.dart' show t;
import '../../../../../../platform/onboarding/presentation/utils/onboarding.util.dart'
    show OnboardingUtil;
import '../../../../../../shared/presentation/themes/extensions/build.context.extension.dart';
import '../../../../../../shared/presentation/animations/fade.animation.dart' show FadeAnimation;
import '../../../../../../shared/presentation/widgets/buttons/enums/button.size.enum.dart'
    show ButtonSize;
import '../../../../../../shared/presentation/widgets/buttons/solid.button.dart' show SolidButton;
import '../../../../../../shared/presentation/widgets/buttons/outline.button.dart'
    show OutlineButton;
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
import '../../../bloc/signin/signin.bloc.dart' show SignInBloc;
import '../../../bloc/signin/signin.event.dart' show SignInSubmitted;
import '../../../bloc/signin/signin.state.dart' show SignInLoading;
import '../../../models/signin.credentials.model.dart' show SignInCredentialsModel;
import '../../../utils/dialog.utils.dart' show showAuthDialog;
import '../../../validators/signin.validator.dart' show SignInValidator;
import '../../shared/buttons/social.login.button.dart' show SocialLoginButton, SocialPlatform;
import '../../dialog/forgotpassword.dialog.widget.dart' show ForgotPasswordDialog;
import '../../dialog/signup.dialog.widget.dart' show SignUpDialog;
import '../../shared/divider/divider.with.label.widget.dart' show DividerWithLabel;
import '../../shared/formtitle/auth.form.title.widget.dart' show AuthFormTitle;
import '../../shared/redirect/auth.redirect.button.dart'
    show AuthRedirectButton, AuthRedirectAction;
import '../../shared/termsconditions/termsconditions.widget.dart' show TermsAndConditions;

class SignInForm extends StatefulWidget {
  final VoidCallback? onGuestContinue;

  const SignInForm({super.key, this.onGuestContinue});

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
  /// Passes the onGuestContinue callback to maintain consistent behavior.
  Future<void> _showSignUpDialog() async {
    await showAuthDialog(
      context,
      SignUpDialog(onGuestContinue: widget.onGuestContinue),
      closeExisting: true,
    );
  }

  /// Shows the forgot password dialog with a slide-up animation.
  /// Closes the current dialog before opening the new one.
  Future<void> _showForgotPasswordDialog() async {
    await showAuthDialog(context, const ForgotPasswordDialog(), closeExisting: true);
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

  /// Handles guest access.
  /// Closes the dialog and executes the onGuestContinue callback if provided,
  /// otherwise defaults to navigating to home.
  void _handleContinueAsGuest() async {
    await OnboardingUtil.markCompleted();

    if (mounted) {
      Navigator.of(context).pop();

      // If custom callback provided, use it; otherwise navigate to home
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
    final isLoading = context.select<SignInBloc, bool>((bloc) => bloc.state is SignInLoading);

    final isSocialLoading = isGoogleLoading || isFacebookLoading;

    return Form(
      key: _formKey,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: context.sizing.s32),
        child: Column(
          spacing: context.sizing.s16,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Logo(type: LogoType.icon, width: context.sizing.s64, isDarkTheme: context.isDarkMode),

            AuthFormTitle(text: t.auth.signIn.title),

            Wrap(
              spacing: context.sizing.s12,
              runSpacing: context.sizing.s12,
              alignment: WrapAlignment.center,
              children: [
                InputField(
                  isFilled: true,
                  isDisabled: isLoading,
                  label: t.auth.signIn.emailLabel,
                  controller: _credentialsController,
                  validator: SignInValidator.credentials(t.auth.signIn.emailLabel),
                ),
                InputField(
                  isFilled: true,
                  isPassword: true,
                  isDisabled: isLoading,
                  controller: _passwordController,
                  label: t.auth.signIn.passwordLabel,
                  validator: SignInValidator.password(t.auth.signIn.passwordLabel),
                ),
                AuthRedirectButton(
                  isCentered: false,
                  onPressed: _showForgotPasswordDialog,
                  actionType: AuthRedirectAction.forgotPassword,
                ),
              ],
            ),

            TermsAndConditions(),

            FadeAnimation(
              delay: 0.65,
              child: SolidButton(
                isFull: true,
                size: ButtonSize.sm,
                isLoading: isLoading,
                isDisabled: isLoading,
                onPressed: _handleSignIn,
                text: t.auth.signIn.submitButton,
              ),
            ),

            DividerWithLabel(label: t.auth.signIn.orContinueWith),

            Row(
              spacing: context.sizing.s12,
              children: [
                Expanded(
                  child: SocialLoginButton(
                    size: ButtonSize.sm,
                    onPressed: _handleGoogleSignIn,
                    platform: SocialPlatform.google,
                    isLoading: isGoogleLoading,
                    isDisabled: isLoading || isSocialLoading,
                  ),
                ),
                Expanded(
                  child: SocialLoginButton(
                    size: ButtonSize.sm,
                    onPressed: _handleFacebookSignIn,
                    platform: SocialPlatform.facebook,
                    isLoading: isFacebookLoading,
                    isDisabled: isLoading || isSocialLoading,
                  ),
                ),
              ],
            ),

            OutlineButton(
              size: ButtonSize.sm,
              onPressed: _handleContinueAsGuest,
              text: t.shared.buttons.continueAsGuest,
            ),

            AuthRedirectButton(
              isCentered: true,
              onPressed: _showSignUpDialog,
              actionType: AuthRedirectAction.dontHaveAccount,
            ),
          ],
        ),
      ),
    );
  }
}
