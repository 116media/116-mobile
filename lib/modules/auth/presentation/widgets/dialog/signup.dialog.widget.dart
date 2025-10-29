import 'package:flutter/material.dart';

import '../../../../../shared/themes/extensions/build.context.extension.dart';
import '../../../../../shared/utils/colors.util.dart' show ColorsUtil;
import '../forms/signup/signup.form.widget.dart' show SignUpForm;

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
      body: SafeArea(
        child: Align(
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
              child: const Center(child: SignUpForm()),
            ),
          ),
        ),
      ),
    );
  }
}
