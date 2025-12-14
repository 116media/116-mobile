import 'package:flutter/material.dart';

import '../../../../../../shared/presentation/themes/extensions/build.context.extension.dart';
import '../../../../../../i18n/strings.g.dart' show t;

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: "",
        children: [
          TextSpan(text: t.auth.termsAndConditions.prefix, style: context.textTheme.bodySmall),
          WidgetSpan(
            child: GestureDetector(
              onTap: () {
                // TODO: Navigate to terms & conditions screen
              },
              child: Text(
                t.auth.termsAndConditions.termsLink,
                style: context.textTheme.bodySmall?.copyWith(
                  color: context.colors.primary,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                  decorationColor: context.colors.primary,
                ),
              ),
            ),
          ),
          TextSpan(text: t.auth.termsAndConditions.and, style: context.textTheme.bodySmall),
          WidgetSpan(
            child: GestureDetector(
              onTap: () {
                //TODO: Navigate to privacy policy screen
              },
              child: Text(
                t.auth.termsAndConditions.privacyLink,
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
