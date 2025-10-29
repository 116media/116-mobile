import 'package:flutter/material.dart';

import '../../../../../shared/themes/extensions/build.context.extension.dart';
import '../../../../../shared/utils/colors.util.dart' show ColorsUtil;
import '../forms/signup/signup.form.widget.dart' show SignUpForm;

/// A dialog widget that displays the sign-up form.
///
/// This widget presents a modal dialog with rounded corners and theme-aware
/// background color. The dialog is positioned at the bottom of the screen
/// and contains the [SignUpForm] widget.
class SignUpDialog extends StatefulWidget {
  const SignUpDialog({super.key});

  @override
  State<SignUpDialog> createState() => _SignUpDialogState();
}

class _SignUpDialogState extends State<SignUpDialog> {
  @override
  Widget build(BuildContext context) {
    final backgroundColor = context.isDarkMode ? ColorsUtil.slate800 : ColorsUtil.slate200;

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Align(
        alignment: Alignment.bottomCenter,
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.all(context.sizing.s24),
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.all(Radius.circular(context.sizing.s12)),
            ),
            child: Center(child: const SignUpForm()),
          ),
        ),
      ),
    );
  }
}
