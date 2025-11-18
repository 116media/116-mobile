import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart' show ReadContext, WatchContext;

import '../../../../../../shared/presentation/animations/fade.animation.dart' show FadeAnimation;
import '../../../../../../shared/presentation/themes/extensions/build.context.extension.dart';
import '../../../../../../shared/presentation/utils/colors.util.dart' show ColorsUtil;
import '../../../../../../shared/presentation/widgets/buttons/enums/button.size.enum.dart'
    show ButtonSize;
import '../../../../../../shared/presentation/widgets/buttons/solid.button.dart' show SolidButton;
import '../../../../../../shared/presentation/widgets/logo/logo.widget.dart' show Logo, LogoType;
import '../../../../../../shared/presentation/widgets/otppinfields/otppinfield.widget.dart'
    show OtpPinField, OtpPinFieldState;
import '../../../../domain/enums/otppurpose.enum.dart' show OtpPurpose;
import '../../../bloc/resendotp/resendotp.bloc.dart';
import '../../../bloc/resendotp/resendotp.event.dart';
import '../../../bloc/resendotp/resendotp.state.dart';
import '../../../bloc/verifyotp/verifyotp.bloc.dart';
import '../../../bloc/verifyotp/verifyotp.event.dart';
import '../../../bloc/verifyotp/verifyotp.state.dart';
import '../../../constants/auth.validation.constants.dart' show kOtpResendCountdown;
import '../../../models/resendotp.credentials.model.dart';
import '../../../models/verifyotp.credentials.model.dart';
import '../../../validators/verifyotp.validator.dart' show VerifyOtpValidator;
import '../../shared/buttons/outline.button.dart' show OutlineButton;
import '../../shared/formtitle/auth.form.title.widget.dart' show AuthFormTitle;
import '../../shared/redirect/auth.redirect.button.dart'
    show AuthRedirectButton, AuthRedirectAction;

class VerifyOtpForm extends StatefulWidget {
  final String? email;
  final OtpPurpose purpose;
  final void Function(String otp)? onOtpSubmitted;

  const VerifyOtpForm({
    super.key,
    this.email,
    this.purpose = OtpPurpose.emailVerification,
    this.onOtpSubmitted,
  });

  @override
  State<VerifyOtpForm> createState() => _VerifyOtpFormState();
}

class _VerifyOtpFormState extends State<VerifyOtpForm> {
  Timer? _timer;
  int _countdown = kOtpResendCountdown;
  final TextEditingController _otpController = TextEditingController();
  final GlobalKey<OtpPinFieldState> _otpKey = GlobalKey<OtpPinFieldState>();

  @override
  void initState() {
    super.initState();
    _startCountdown();
    _otpController.addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    _otpController.dispose();
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

  /// Handles verify button press
  void _handleVerifyOtp() {
    if (_otpController.text.length != 6) return;

    final otp = _otpController.text;
    final credentials = VerifyOtpCredentialsModel(
      email: widget.email!,
      otp: otp,
      purpose: widget.purpose,
    );

    widget.onOtpSubmitted?.call(otp);
    context.read<VerifyOtpBloc>().add(VerifyOtpSubmitted(credentials));
  }

  /// Handles resend OTP
  void _handleResendOtp() {
    if (_countdown > 0) return;

    final credentials = ResendOtpCredentialsModel(email: widget.email!, purpose: widget.purpose);
    context.read<ResendOtpBloc>().add(ResendOtpSubmitted(credentials));

    _otpKey.currentState?.clear();
    _startCountdown();
  }

  @override
  Widget build(BuildContext context) {
    final textColor = context.isDarkMode ? ColorsUtil.white : ColorsUtil.black;

    final verifyState = context.watch<VerifyOtpBloc>().state;
    final resendState = context.watch<ResendOtpBloc>().state;

    final isVerifying = verifyState is VerifyOtpLoading;
    final isResending = resendState is ResendOtpLoading;
    final isLoading = isVerifying || isResending;

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
            isDisabled: isLoading,
            controller: _otpController,
            validator: VerifyOtpValidator.otp('OTP Code'),
          ),

          // Resend OTP button
          AuthRedirectButton(
            onPressed: _handleResendOtp,
            isDisabled: isLoading || _countdown > 0,
            actionType: AuthRedirectAction.haveReceiveCode,
            suffixText: _countdown > 0 ? ' in $_countdown seconds' : null,
          ),

          // Verify button
          FadeAnimation(
            delay: 0.65,
            child: SolidButton(
              isFull: true,
              text: "Verify",
              size: ButtonSize.sm,
              isLoading: isLoading,
              isDisabled: isLoading || _otpController.text.length != 6,
              onPressed: _handleVerifyOtp,
            ),
          ),

          OutlineButton(text: 'Cancel', onPressed: () => Navigator.of(context).pop()),
        ],
      ),
    );
  }
}
