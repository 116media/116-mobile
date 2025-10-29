import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

import '../../../../../../shared/themes/extensions/build.context.extension.dart';

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

/// A platform-aware text button that displays contextual authentication redirect messages.
///
/// This widget provides a flexible way to display authentication-related prompts
/// with optional action links. The displayed text and link automatically adjust
/// based on the [actionType] parameter.
class AuthRedirectButton extends StatelessWidget {
  final bool isLeft;
  final bool isCentered;
  final VoidCallback onPressed;
  final AuthRedirectAction actionType;

  /// Creates an authentication redirect button.
  ///
  /// The [onPressed] and [actionType] parameters are required.
  /// By default, the button is centered ([isCentered] = true) and
  /// left-aligned when not centered ([isLeft] = false).
  const AuthRedirectButton({
    super.key,
    required this.onPressed,
    required this.actionType,
    this.isCentered = true,
    this.isLeft = false,
  });

  /// Returns the main text and optional link text based on the action type.
  ({String mainText, String? linkText}) _getTextContent() {
    return switch (actionType) {
      AuthRedirectAction.haveAccount => (
        mainText: "Already have an account? ",
        linkText: "Sign In",
      ),
      AuthRedirectAction.dontHaveAccount => (
        mainText: "Don't have an account? ",
        linkText: "Sign Up",
      ),
      AuthRedirectAction.haveReceiveCode => (
        mainText: "Haven't received any code? ",
        linkText: "Resend",
      ),
      AuthRedirectAction.backToSignin => (mainText: "Want to go back? ", linkText: "Sign In"),
      AuthRedirectAction.forgotPassword => (mainText: "Forgot your password?", linkText: null),
    };
  }

  /// Returns the main axis alignment based on centering and alignment preferences.
  MainAxisAlignment _getMainAxisAlignment() {
    if (isCentered) return MainAxisAlignment.center;
    return isLeft ? MainAxisAlignment.start : MainAxisAlignment.end;
  }

  @override
  Widget build(BuildContext context) {
    final textContent = _getTextContent();

    final mainText = textContent.mainText;
    final linkText = textContent.linkText;

    final content = Row(
      mainAxisAlignment: _getMainAxisAlignment(),
      mainAxisSize: MainAxisSize.max,
      children: [
        Text(
          mainText,
          style: Theme.of(context).textTheme.bodySmall?.copyWith(fontWeight: FontWeight.w600),
        ),
        linkText != null
            ? Text(
                linkText,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: context.colors.primary,
                  fontWeight: FontWeight.w800,
                  decoration: TextDecoration.underline,
                  decorationColor: context.colors.primary,
                ),
              )
            : const SizedBox.shrink(),
      ],
    );

    return PlatformWidget(
      material: (context, platform) => Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onPressed,
          splashFactory: InkRipple.splashFactory,
          borderRadius: BorderRadius.circular(context.sizing.s8),
          splashColor: context.colors.primary.withAlpha(context.sizing.s24.toInt()),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: context.sizing.s12),
            child: content,
          ),
        ),
      ),
      cupertino: (context, platform) =>
          PlatformTextButton(onPressed: onPressed, padding: EdgeInsets.zero, child: content),
    );
  }
}
