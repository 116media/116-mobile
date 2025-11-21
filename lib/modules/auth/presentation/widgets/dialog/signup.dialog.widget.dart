import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart'
    show BlocListener, BlocProvider, MultiBlocProvider, MultiBlocListener;

import '../../../../../platform/onboarding/presentation/utils/onboarding.util.dart'
    show OnboardingUtil;
import '../../../../../shared/presentation/themes/extensions/build.context.extension.dart';
import '../../../../../shared/infrastructure/service.locator.dart' show sl;
import '../../../../../shared/presentation/utils/colors.util.dart' show ColorsUtil;
import '../../../../../shared/presentation/utils/dialog.util.dart' show DialogUtil;
import '../../../../home/presentation/constants/home.constants.dart' show kHomeRoutePath;
import '../../bloc/facebooksignin/facebooksignin.bloc.dart' show FacebookSignInBloc;
import '../../bloc/facebooksignin/facebooksignin.state.dart'
    show FacebookSignInState, FacebookSignInSuccess, FacebookSignInFailure;
import '../../bloc/googlesignin/googlesignin.bloc.dart' show GoogleSignInBloc;
import '../../bloc/googlesignin/googlesignin.state.dart'
    show GoogleSignInState, GoogleSignInSuccess, GoogleSignInFailure;
import '../../bloc/signup/signup.bloc.dart' show SignUpBloc;
import '../../bloc/signup/signup.state.dart' show SignUpState, SignUpSuccess, SignUpFailure;
import '../../utils/dialog.utils.dart' show showAuthDialog;
import '../forms/signup/signup.form.widget.dart' show SignUpForm;
import 'verifyotp.dialog.widget.dart' show VerifyOtpDialog;

/// A dialog widget that displays the sign-up form.
///
/// This widget presents a modal dialog with rounded corners and theme-aware
/// background color. The dialog is positioned at the bottom of the screen
/// and contains the [SignUpForm] widget with BLoC integration.
///
/// Listens to [SignUpBloc] states and handles:
/// - Success with unverified account: Shows verification dialog
/// - Failure: Shows error dialog
class SignUpDialog extends StatefulWidget {
  const SignUpDialog({super.key});

  @override
  State<SignUpDialog> createState() => _SignUpDialogState();
}

class _SignUpDialogState extends State<SignUpDialog> {
  Future<void> _signUpStateListener(BuildContext context, SignUpState state) async {
    if (state is SignUpSuccess) {
      final String email = state.authResponse.user.email ?? '';
      await showAuthDialog(context, VerifyOtpDialog(email: email), closeExisting: true);
    } else if (state is SignUpFailure) {
      DialogUtil.error(context, message: state.failure.detail);
    }
  }

  Future<void> _googleSignInStateListener(BuildContext ctx, GoogleSignInState state) async {
    if (state is GoogleSignInSuccess) {
      await OnboardingUtil.markCompleted();

      if (!ctx.mounted) return;

      Navigator.of(ctx).pop();
      ctx.go(kHomeRoutePath);
    } else if (state is GoogleSignInFailure) {
      DialogUtil.error(context, message: state.failure.detail);
    }
  }

  Future<void> _facebookSignInStateListener(BuildContext ctx, FacebookSignInState state) async {
    if (state is FacebookSignInSuccess) {
      await OnboardingUtil.markCompleted();

      if (!ctx.mounted) return;

      Navigator.of(ctx).pop();
      ctx.go(kHomeRoutePath);
    } else if (state is FacebookSignInFailure) {
      DialogUtil.error(context, message: state.failure.detail);
    }
  }

  @override
  Widget build(BuildContext context) {
    final backgroundColor = context.isDarkMode ? ColorsUtil.slate800 : ColorsUtil.slate200;

    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => sl<SignUpBloc>()),
        BlocProvider(create: (context) => sl<GoogleSignInBloc>()),
        BlocProvider(create: (context) => sl<FacebookSignInBloc>()),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<SignUpBloc, SignUpState>(listener: _signUpStateListener),
          BlocListener<GoogleSignInBloc, GoogleSignInState>(listener: _googleSignInStateListener),
          BlocListener<FacebookSignInBloc, FacebookSignInState>(listener: _facebookSignInStateListener),
        ],
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
                child: const Center(child: SignUpForm()),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
