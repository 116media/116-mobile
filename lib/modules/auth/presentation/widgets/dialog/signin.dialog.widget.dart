import 'package:flutter/material.dart';

import '../../../../../shared/themes/extensions/build.context.extension.dart';
import '../../../../../shared/utils/colors.util.dart' show ColorsUtil;
import '../forms/signin/signin.form.widget.dart' show SignInForm;

class SignInDialog extends StatefulWidget {
  const SignInDialog({super.key});

  @override
  State<SignInDialog> createState() => _SignInDialogState();
}

class _SignInDialogState extends State<SignInDialog> {
  @override
  Widget build(BuildContext context) {
    final backgroundColor = context.isDarkMode ? ColorsUtil.slate800 : ColorsUtil.slate200;

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Align(
        alignment: Alignment.bottomCenter,
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.all(context.sizing.s24),
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.all(Radius.circular(context.sizing.s12)),
            ),
            child: const SignInForm(),
          ),
        ),
      ),
    );
  }
}
