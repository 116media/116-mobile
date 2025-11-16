import 'package:flutter/material.dart';

import '../../../../../../shared/presentation/themes/extensions/build.context.extension.dart';
import '../../../../../../shared/presentation/widgets/inputfields/otppinfield.widget.dart'
    show OtpPinField, OtpPinFieldState;

class VerifyOtpForm extends StatefulWidget {
  final String? email;

  const VerifyOtpForm({super.key, this.email});

  @override
  State<VerifyOtpForm> createState() => _VerifyOtpFormState();
}

class _VerifyOtpFormState extends State<VerifyOtpForm> {
  final GlobalKey<OtpPinFieldState> _otpKey = GlobalKey<OtpPinFieldState>();
  bool _isVerifying = false;

  /// Handles OTP submission
  void _handleOtpCompleted(String otp) {
    setState(() => _isVerifying = true);

    // TODO: Implement OTP verification
    // If email not provided, fetch from cached user
    // final email = widget.email ?? (await getUser()).email;
    // final credentials = VerifyOtpCredentialsModel(
    //   otp: otp,
    //   email: email,
    //   purpose: OtpPurpose.emailVerification,
    // );

    debugPrint('OTP entered: $otp for email: ${widget.email}');

    // Simulate verification
    Future.delayed(const Duration(seconds: 2), () {
      if (mounted) {
        setState(() => _isVerifying = false);
        Navigator.of(context).pop();
      }
    });
  }

  /// Handles resend OTP
  void _handleResendOtp() {
    // TODO: Implement resend OTP logic
    debugPrint('Resending OTP to: ${widget.email}');

    // Clear current OTP
    _otpKey.currentState?.clear();
  }

  @override
  Widget build(BuildContext context) {
    final textColor = context.isDarkMode ? Colors.white : Colors.black;

    return Padding(
      padding: EdgeInsets.symmetric(vertical: context.sizing.s32),
      child: Column(
        spacing: context.sizing.s12,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Icon
          Icon(Icons.email_outlined, size: context.sizing.s48, color: context.primaryColor),

          // Title
          Text(
            'Verify Your Email',
            style: context.textTheme.titleLarge?.copyWith(
              color: textColor,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),

          // Message
          Text(
            'Please enter the 6-digit code sent to ${widget.email ?? 'your email'}',
            style: context.textTheme.bodyMedium?.copyWith(color: textColor.withValues(alpha: 0.7)),
            textAlign: TextAlign.center,
          ),

          // OTP Pin Field
          OtpPinField(
            key: _otpKey,
            length: 6,
            isDisabled: _isVerifying,
            onCompleted: _handleOtpCompleted,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter OTP';
              }
              if (value.length != 6) {
                return 'OTP must be 6 digits';
              }
              return null;
            },
          ),

          // Resend OTP button
          TextButton(
            onPressed: _isVerifying ? null : _handleResendOtp,
            child: Text(
              'Resend OTP',
              style: TextStyle(
                color: _isVerifying ? textColor.withValues(alpha: 0.3) : context.primaryColor,
              ),
            ),
          ),

          // Cancel button
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text('Cancel', style: TextStyle(color: textColor.withValues(alpha: 0.7))),
          ),
        ],
      ),
    );
  }
}
