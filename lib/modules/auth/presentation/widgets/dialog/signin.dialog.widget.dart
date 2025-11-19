import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart' show BlocListener, BlocProvider;

import '../../../../../platform/onboarding/presentation/utils/onboarding.util.dart'
    show OnboardingUtil;
import '../../../../../shared/presentation/themes/extensions/build.context.extension.dart';
import '../../../../../shared/infrastructure/service.locator.dart' show sl;
import '../../../../../shared/presentation/utils/colors.util.dart' show ColorsUtil;
import '../../../../../shared/presentation/utils/dialog.util.dart' show DialogUtil;
import '../../../../home/presentation/constants/home.constants.dart' show kHomeRoutePath;
import '../../bloc/signin/signin.bloc.dart' show SignInBloc;
import '../../bloc/signin/signin.state.dart' show SignInState, SignInSuccess, SignInFailure;
import '../forms/signin/signin.form.widget.dart' show SignInForm;

/// A dialog widget that displays the sign-in form.
///
/// This widget presents a modal dialog with rounded corners and theme-aware
/// background color. The dialog is positioned at the bottom of the screen
/// and contains the [SignInForm] widget with BLoC integration.
///
/// Listens to [SignInBloc] states and handles:
/// - Success: Navigates to home screen
/// - Failure: Shows error dialog
class SignInDialog extends StatefulWidget {
  const SignInDialog({super.key});

  @override
  State<SignInDialog> createState() => _SignInDialogState();
}

class _SignInDialogState extends State<SignInDialog> {
  Future<void> _signInStateListener(BuildContext ctx, SignInState state) async {
    if (state is SignInSuccess) {
      await OnboardingUtil.markCompleted();

      if (!ctx.mounted) return;

      Navigator.of(ctx).pop();
      ctx.go(kHomeRoutePath);
    } else if (state is SignInFailure) {
      DialogUtil.error(context, message: state.failure.detail);
    }
  }

  @override
  Widget build(BuildContext context) {
    final backgroundColor = context.isDarkMode ? ColorsUtil.slate800 : ColorsUtil.slate200;

    return BlocProvider(
      create: (context) => sl<SignInBloc>(),
      child: BlocListener<SignInBloc, SignInState>(
        listener: _signInStateListener,
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
                child: const Center(child: SignInForm()),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
