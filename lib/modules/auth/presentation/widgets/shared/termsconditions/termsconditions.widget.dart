import 'package:flutter/material.dart';

import '../../../../../../shared/presentation/themes/extensions/build.context.extension.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: "",
        children: [
          TextSpan(
            text: "By continuing, you acknowledge that you understand and agree to the ",
            style: context.textTheme.bodySmall,
          ),
          WidgetSpan(
            child: GestureDetector(
              onTap: () {
                // Navigate to terms & conditions screen
              },
              child: Text(
                "Terms & Conditions",
                style: context.textTheme.bodySmall?.copyWith(
                  color: context.colors.primary,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                  decorationColor: context.colors.primary,
                ),
              ),
            ),
          ),
          TextSpan(text: " and ", style: context.textTheme.bodySmall),
          WidgetSpan(
            child: GestureDetector(
              onTap: () {
                // Navigate to privacy policy screen
              },
              child: Text(
                "Privacy Policy",
                style: context.textTheme.bodySmall?.copyWith(
                  color: context.colors.primary,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                  decorationColor: context.colors.primary,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
