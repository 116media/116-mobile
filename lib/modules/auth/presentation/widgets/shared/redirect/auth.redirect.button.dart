import 'package:flutter/cupertino.dart';

import '../../../../../../i18n/strings.g.dart' show t;
import '../../../../../../shared/presentation/themes/extensions/build.context.extension.dart';

/// Enum representing different types of authentication redirect actions.
///
/// Each action type corresponds to a specific authentication flow context
/// and determines the text and link displayed in the [AuthRedirectButton].
enum AuthRedirectAction {
  haveAccount,
  dontHaveAccount,
  haveReceiveCode,
  backToSignin,
  forgotPassword,
}

/// A Cupertino-style text button that displays contextual authentication redirect messages.
///
/// This widget provides a flexible way to display authentication-related prompts
/// with optional action links. The displayed text and link automatically adjust
/// based on the [actionType] parameter.
///
/// Uses [CupertinoButton] for consistent iOS-style tap feedback across all platforms.
class AuthRedirectButton extends StatelessWidget {
  final bool isLeft;
  final bool isCentered;
  final bool isDisabled;
  final String? suffixText;
  final VoidCallback onPressed;
  final AuthRedirectAction actionType;

  /// Creates an authentication redirect button.
  ///
  /// The [onPressed] and [actionType] parameters are required.
  /// By default, the button is centered ([isCentered] = true) and
  /// left-aligned when not centered ([isLeft] = false).
  /// The [suffixText] can be used to add additional text after the link (e.g., countdown timer).
  const AuthRedirectButton({
    super.key,
    required this.onPressed,
    required this.actionType,
    this.suffixText,
    this.isLeft = false,
    this.isCentered = true,
    this.isDisabled = false,
  });

  /// Returns the main text and optional link text based on the action type.
  ({String mainText, String? linkText}) _getTextContent(BuildContext context) {
    return switch (actionType) {
      AuthRedirectAction.haveAccount => (
        mainText: "${t.auth.signUp.haveAccount} ",
        linkText: t.auth.signUp.signInLink,
      ),
      AuthRedirectAction.dontHaveAccount => (
        mainText: "${t.auth.signIn.noAccount} ",
        linkText: t.auth.signIn.signUpLink,
      ),
      AuthRedirectAction.haveReceiveCode => (
        mainText: "${t.auth.resendOtp.resendCode} ",
        linkText: t.auth.resendOtp.resendButton,
      ),
      AuthRedirectAction.backToSignin => (
        mainText: "${t.auth.forgotPassword.backToSignIn} ",
        linkText: t.auth.signIn.signUpLink,
      ),
      AuthRedirectAction.forgotPassword => (mainText: t.auth.signIn.forgotPassword, linkText: null),
    };
  }

  /// Returns the main axis alignment based on centering and alignment preferences.
  MainAxisAlignment _getMainAxisAlignment() {
    if (isCentered) return MainAxisAlignment.center;
    return isLeft ? MainAxisAlignment.start : MainAxisAlignment.end;
  }

  @override
  Widget build(BuildContext context) {
    final textContent = _getTextContent(context);

    final mainText = textContent.mainText;
    final linkText = textContent.linkText;

    return CupertinoButton(
      padding: EdgeInsets.zero,
      onPressed: isDisabled ? null : onPressed,
      child: Opacity(
        opacity: isDisabled ? 0.3 : 1.0,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: _getMainAxisAlignment(),
          children: [
            Text(
              mainText,
              style: context.textTheme.bodySmall?.copyWith(fontWeight: FontWeight.w600),
            ),
            linkText != null
                ? Text(
                    linkText,
                    style: context.textTheme.bodySmall?.copyWith(
                      color: context.colors.primary,
                      fontWeight: FontWeight.w800,
                      decoration: TextDecoration.underline,
                      decorationColor: context.colors.primary,
                    ),
                  )
                : const SizedBox.shrink(),
            if (suffixText != null)
              Text(
                suffixText!,
                style: context.textTheme.bodySmall?.copyWith(fontWeight: FontWeight.w600),
              ),
          ],
        ),
      ),
    );
  }
}
