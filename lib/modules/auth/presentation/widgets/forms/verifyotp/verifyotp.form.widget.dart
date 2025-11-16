import 'dart:async';

import 'package:flutter/material.dart';

import '../../../../../../shared/presentation/themes/extensions/build.context.extension.dart';
import '../../../../../../shared/presentation/utils/colors.util.dart' show ColorsUtil;
import '../../../../../../shared/presentation/widgets/otppinfields/otppinfield.widget.dart'
    show OtpPinField, OtpPinFieldState;
import '../../../../../../shared/presentation/widgets/logo/logo.widget.dart' show Logo, LogoType;
import '../../../constants/auth.validation.constants.dart' show kOtpResendCountdown;
import '../../../validators/verifyotp.validator.dart' show VerifyOtpValidator;
import '../../shared/buttons/outline.button.dart' show OutlineButton;
import '../../shared/formtitle/auth.form.title.widget.dart' show AuthFormTitle;
import '../../shared/redirect/auth.redirect.button.dart'
    show AuthRedirectButton, AuthRedirectAction;

class VerifyOtpForm extends StatefulWidget {
  final String? email;

  const VerifyOtpForm({super.key, this.email});

  @override
  State<VerifyOtpForm> createState() => _VerifyOtpFormState();
}

class _VerifyOtpFormState extends State<VerifyOtpForm> {
  Timer? _timer;
  bool _isVerifying = false;
  int _countdown = kOtpResendCountdown;
  final GlobalKey<OtpPinFieldState> _otpKey = GlobalKey<OtpPinFieldState>();

  @override
  void initState() {
    super.initState();
    _startCountdown();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  /// Starts the countdown timer
  void _startCountdown() {
    _timer?.cancel();
    setState(() => _countdown = kOtpResendCountdown);

    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (!mounted) {
        timer.cancel();
        return;
      }

      setState(() {
        if (_countdown > 0) {
          _countdown--;
        } else {
          timer.cancel();
        }
      });
    });
  }

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
    if (_countdown > 0) return;

    // TODO: Implement resend OTP logic
    debugPrint('Resending OTP to: ${widget.email}');

    // Clear current OTP
    _otpKey.currentState?.clear();

    // Restart countdown
    _startCountdown();
  }

  @override
  Widget build(BuildContext context) {
    final textColor = context.isDarkMode ? ColorsUtil.white : ColorsUtil.black;

    return Padding(
      padding: EdgeInsets.symmetric(vertical: context.sizing.s32),
      child: Column(
        spacing: context.sizing.s20,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Logo(type: LogoType.icon, width: context.sizing.s64, isDarkTheme: context.isDarkMode),

          const AuthFormTitle(text: "Verify Your Email"),

          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style: context.textTheme.bodyMedium?.copyWith(
                color: textColor.withValues(alpha: 0.7),
              ),
              children: [
                const TextSpan(text: "Please enter the 6-digit verification code we've sent to "),
                if (widget.email != null)
                  TextSpan(
                    text: widget.email!,
                    style: const TextStyle(fontWeight: FontWeight.w700),
                  )
                else
                  const TextSpan(text: 'your email'),
              ],
            ),
          ),

          // OTP Pin Field
          OtpPinField(
            length: 6,
            key: _otpKey,
            isFilled: true,
            isDisabled: _isVerifying,
            onCompleted: _handleOtpCompleted,
            validator: VerifyOtpValidator.otp('OTP Code'),
          ),

          // Resend OTP button
          AuthRedirectButton(
            onPressed: _handleResendOtp,
            isDisabled: _isVerifying || _countdown > 0,
            actionType: AuthRedirectAction.haveReceiveCode,
            suffixText: _countdown > 0 ? ' in $_countdown seconds' : null,
          ),

          OutlineButton(text: 'Cancel', onPressed: () => Navigator.of(context).pop()),
        ],
      ),
    );
  }
}
