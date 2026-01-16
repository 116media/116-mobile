import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart'
    show BlocListener, BlocProvider, MultiBlocListener, MultiBlocProvider;
import 'package:go_router/go_router.dart' show GoRouterHelper;

import '../../../../../i18n/strings.g.dart' show t;
import '../../../../../platform/onboarding/presentation/utils/onboarding.util.dart'
    show OnboardingUtil;
import '../../../../../shared/infrastructure/service.locator.dart' show sl;
import '../../../../../shared/presentation/themes/extensions/build.context.extension.dart';
import '../../../../../shared/presentation/utils/colors.util.dart' show ColorsUtil;
import '../../../../../shared/presentation/utils/dialog.util.dart' show DialogUtil;
import '../../../../../shared/presentation/widgets/bottomsheet/bottomsheet.pullbar.dart'
    show BottomSheetPullBar;
import '../../../../home/presentation/constants/home.constants.dart' show kHomeRoutePath;
import '../../bloc/resendotp/resendotp.bloc.dart' show ResendOtpBloc;
import '../../bloc/resendotp/resendotp.state.dart'
    show ResendOtpState, ResendOtpSuccess, ResendOtpFailure;
import '../../bloc/verifyotp/verifyotp.bloc.dart' show VerifyOtpBloc;
import '../../bloc/verifyotp/verifyotp.state.dart'
    show VerifyOtpState, VerifyOtpSuccess, VerifyOtpFailure;
import '../forms/verifyotp/verifyotp.form.widget.dart' show VerifyOtpForm;

/// A dialog widget that displays the OTP verification form.
///
/// This widget presents a modal dialog with rounded corners and theme-aware
/// background color. The dialog is positioned at the bottom of the screen
/// and contains the [VerifyOtpForm] widget with BLoC integration.
///
/// Listens to:
/// - [VerifyOtpBloc] states: Success navigates to home, Failure shows error
/// - [ResendOtpBloc] states: Success shows confirmation, Failure shows error
class VerifyOtpDialog extends StatefulWidget {
  final String? email;

  const VerifyOtpDialog({super.key, this.email});

  @override
  State<VerifyOtpDialog> createState() => _VerifyOtpDialogState();
}

class _VerifyOtpDialogState extends State<VerifyOtpDialog> {
  final GlobalKey<State<VerifyOtpForm>> _formKey = GlobalKey<State<VerifyOtpForm>>();

  void _clearOtpField() {
    final formState = _formKey.currentState;
    if (formState != null) {
      (formState as dynamic).clearOtp();
    }
  }

  Future<void> _verifyOtpStateListener(BuildContext ctx, VerifyOtpState state) async {
    if (state is VerifyOtpSuccess) {
      final rootContext = Navigator.of(ctx, rootNavigator: true).context;
      await OnboardingUtil.markCompleted();
      if (!ctx.mounted) return;
      Navigator.of(ctx).pop();
      ctx.go(kHomeRoutePath);

      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (rootContext.mounted) {
          DialogUtil.success(rootContext, message: t.auth.verifyOtp.completed);
        }
      });
    } else if (state is VerifyOtpFailure) {
      _clearOtpField();
      DialogUtil.error(context, failure: state.failure);
    }
  }

  void _resendOtpStateListener(ResendOtpState state) {
    if (state is ResendOtpSuccess) {
      DialogUtil.success(context, message: t.auth.resendOtp.success);
    } else if (state is ResendOtpFailure) {
      DialogUtil.error(context, failure: state.failure);
    }
  }

  @override
  Widget build(BuildContext context) {
    final backgroundColor = context.isDarkMode ? ColorsUtil.slate800 : ColorsUtil.slate200;

    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => sl<VerifyOtpBloc>()),
        BlocProvider(create: (context) => sl<ResendOtpBloc>()),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<VerifyOtpBloc, VerifyOtpState>(
            listener: (context, state) => _verifyOtpStateListener(context, state),
          ),
          BlocListener<ResendOtpBloc, ResendOtpState>(
            listener: (context, state) => _resendOtpStateListener(state),
          ),
        ],
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Align(
            alignment: Alignment.bottomCenter,
            child: SingleChildScrollView(
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.only(
                  top: context.sizing.s12,
                  left: context.sizing.s24,
                  right: context.sizing.s24,
                  bottom: context.sizing.s24,
                ),
                decoration: BoxDecoration(
                  color: backgroundColor,
                  borderRadius: BorderRadius.all(Radius.circular(context.sizing.s12)),
                ),
                child: Column(
                  children: [
                    const BottomSheetPullBar(),
                    Center(
                      child: VerifyOtpForm(key: _formKey, email: widget.email),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
