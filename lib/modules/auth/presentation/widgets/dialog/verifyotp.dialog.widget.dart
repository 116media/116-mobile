import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart' show BlocListener, BlocProvider;

import '../../../../../shared/presentation/themes/extensions/build.context.extension.dart';
import '../../../../../shared/infrastructure/service.locator.dart' show sl;
import '../../../../../shared/presentation/utils/colors.util.dart' show ColorsUtil;
import '../../../../../shared/presentation/utils/dialog.util.dart' show DialogUtil;
import '../../../../home/presentation/constants/home.constants.dart' show kHomeRoutePath;
import '../../bloc/verifyotp/verifyotp.bloc.dart' show VerifyOtpBloc;
import '../../bloc/verifyotp/verifyotp.state.dart' show VerifyOtpState, VerifyOtpSuccess, VerifyOtpFailure;
import '../forms/verifyotp/verifyotp.form.widget.dart' show VerifyOtpForm;

/// A dialog widget that displays the OTP verification form.
///
/// This widget presents a modal dialog with rounded corners and theme-aware
/// background color. The dialog is positioned at the bottom of the screen
/// and contains the [VerifyOtpForm] widget with BLoC integration.
///
/// Listens to [VerifyOtpBloc] states and handles:
/// - Success: Navigates to home screen
/// - Failure: Shows error dialog
class VerifyOtpDialog extends StatefulWidget {
  final String? email;

  const VerifyOtpDialog({super.key, this.email});

  @override
  State<VerifyOtpDialog> createState() => _VerifyOtpDialogState();
}

class _VerifyOtpDialogState extends State<VerifyOtpDialog> {
  void _showErrorMessage(String message) {
    DialogUtil.error(context, message: message);
  }

  @override
  Widget build(BuildContext context) {
    final backgroundColor = context.isDarkMode ? ColorsUtil.slate800 : ColorsUtil.slate200;

    return BlocProvider(
      create: (context) => sl<VerifyOtpBloc>(),
      child: BlocListener<VerifyOtpBloc, VerifyOtpState>(
        listener: (context, state) {
          if (state is VerifyOtpSuccess) {
            Navigator.of(context).pop();
            context.go(kHomeRoutePath);
            return;
          }

          if (state is VerifyOtpFailure) {
            _showErrorMessage(state.failure.detail);
            return;
          }
        },
        child: Scaffold(
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
                child: Center(child: VerifyOtpForm(email: widget.email)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
