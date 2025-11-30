import 'package:flutter/material.dart';
import 'package:gap/gap.dart' show Gap;

import '../../../../../modules/auth/presentation/utils/dialog.utils.dart' show showAuthDialog;
import '../../../../../modules/auth/presentation/widgets/dialog/signin.dialog.widget.dart'
    show SignInDialog;
import '../../../../../shared/presentation/animations/fade.animation.dart' show FadeAnimation;
import '../../../../../shared/presentation/themes/extensions/build.context.extension.dart';
import '../../../../../shared/presentation/utils/colors.util.dart' show ColorsUtil;
import '../../../../../shared/presentation/widgets/buttons/enums/button.size.enum.dart'
    show ButtonSize;
import '../../../../../shared/presentation/widgets/buttons/solid.button.dart' show SolidButton;

/// Profile card widget for guest (unauthenticated) users in the settings screen.
///
/// Displays a prompt encouraging guest users to sign in, featuring a generic
/// avatar, "Guest Mode" label, motivational message, and a "Sign In" button
/// that triggers the authentication dialog.
///
/// When the sign-in button is pressed, opens [SignInDialog] with an empty
/// guest continuation callback to keep the user on the settings page rather
/// than redirecting to home after dismissal.
class GuestProfileCard extends StatefulWidget {
  const GuestProfileCard({super.key});

  @override
  State<GuestProfileCard> createState() => _GuestProfileCardState();
}

class _GuestProfileCardState extends State<GuestProfileCard> {
  /// Shows the sign-in dialog with a slide-up animation.
  /// Guest continuation will not redirect to home (stays on settings page).
  Future<void> _showSignInDialog() async {
    await showAuthDialog(context, SignInDialog(onGuestContinue: () {}), barrierDismissible: true);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: context.sizing.s24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: context.sizing.s48,
            backgroundColor: context.primaryColor.withValues(alpha: context.sizing.s0_5),
            child: Icon(
              Icons.person_outline,
              size: context.sizing.s48,
              color: context.primaryColor,
            ),
          ),
          Gap(context.sizing.s12),
          Text(
            'Guest Mode',
            style: context.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w600),
          ),
          Gap(context.sizing.s12),
          Text(
            'Sign in to get closer to the artists, the stories, and the heartbeat of the game.',
            textAlign: TextAlign.center,
            style: context.textTheme.bodyMedium?.copyWith(color: ColorsUtil.gray500),
          ),
          Gap(context.sizing.s24),
          FadeAnimation(
            delay: 0.65,
            child: SolidButton(
              isFull: true,
              size: ButtonSize.sm,
              text: "Sign In",
              isLoading: false,
              isDisabled: false,
              onPressed: _showSignInDialog,
            ),
          ),
        ],
      ),
    );
  }
}
