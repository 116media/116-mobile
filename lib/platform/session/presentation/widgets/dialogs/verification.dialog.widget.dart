import 'package:flutter/material.dart';

import '../../../../../shared/presentation/themes/extensions/build.context.extension.dart';
import '../../../../../shared/presentation/utils/colors.util.dart' show ColorsUtil;
import '../../../../../shared/presentation/widgets/buttons/solid.button.dart' show SolidButton;

/// A dialog widget that prompts unverified users to verify their email.
///
/// This widget presents a modal dialog with a message explaining that
/// email verification is required to perform certain actions. The dialog
/// includes a button to resend verification email and a dismiss button.
class VerificationDialog extends StatelessWidget {
  const VerificationDialog({super.key});

  @override
  Widget build(BuildContext context) {
    final backgroundColor = context.isDarkMode ? ColorsUtil.slate800 : ColorsUtil.slate200;
    final textColor = context.isDarkMode ? Colors.white : Colors.black;

    return Dialog(
      backgroundColor: Colors.transparent,
      child: Container(
        padding: EdgeInsets.all(context.sizing.s24),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.all(Radius.circular(context.sizing.s12)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Icon
            Icon(
              Icons.email_outlined,
              size: context.sizing.s48,
              color: context.primaryColor,
            ),
            SizedBox(height: context.sizing.s16),

            // Title
            Text(
              'Verify Your Email',
              style: context.textTheme.titleLarge?.copyWith(
                color: textColor,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: context.sizing.s12),

            // Message
            Text(
              'Please verify your email address to perform this action. Check your inbox for the verification link.',
              style: context.textTheme.bodyMedium?.copyWith(
                color: textColor.withValues(alpha: 0.7),
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: context.sizing.s24),

            // Resend verification button
            SolidButton(
              text: 'Resend Verification Email',
              onPressed: () {
                // TODO: Implement resend verification email
                Navigator.of(context).pop();
              },
            ),
            SizedBox(height: context.sizing.s12),

            // Dismiss button
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text(
                'Cancel',
                style: TextStyle(color: textColor.withValues(alpha: 0.7)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}