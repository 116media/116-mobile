import 'package:flutter/material.dart';

import '../../../../../shared/presentation/themes/extensions/build.context.extension.dart';
import '../../../../../shared/presentation/utils/colors.util.dart' show ColorsUtil;
import '../forms/verifyotp/verifyotp.form.widget.dart' show VerifyOtpForm;

/// A dialog widget that displays the OTP verification form.
///
/// This widget presents a modal dialog with rounded corners and theme-aware
/// background color. The dialog is positioned at the bottom of the screen
/// and contains the [VerifyOtpForm] widget.
class VerifyOtpDialog extends StatelessWidget {
  final String? email;

  const VerifyOtpDialog({super.key, this.email});

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
            child: Center(child: VerifyOtpForm(email: email)),
          ),
        ),
      ),
    );
  }
}
