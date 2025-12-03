import 'package:flutter/material.dart';
import 'package:gap/gap.dart' show Gap;

import '../../../../../modules/auth/infrastructure/models/hive/user/user.model.dart' show UserModel;
import '../../../../../shared/presentation/animations/fade.animation.dart' show FadeAnimation;
import '../../../../../shared/presentation/themes/extensions/build.context.extension.dart';
import '../../../../../shared/presentation/utils/colors.util.dart' show ColorsUtil;
import '../../../../../shared/presentation/widgets/buttons/enums/button.size.enum.dart'
    show ButtonSize;
import '../../../../../shared/presentation/widgets/buttons/solid.button.dart' show SolidButton;
import '../dialogs/updateprofile.dialog.widget.dart' show UpdateProfileDialog;

/// Profile card widget for authenticated users in the settings screen.
///
/// Displays user information including avatar, username, and email, along with
/// an "Edit Profile" button for updating profile details. The avatar includes
/// a camera badge for avatar updates
class AuthenticatedProfileCard extends StatelessWidget {
  final UserModel? user;

  const AuthenticatedProfileCard({super.key, this.user});

  void _showEditProfileDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => UpdateProfileDialog(user: user),
    );
  }

  @override
  Widget build(BuildContext context) {
    final email = user?.email ?? '';
    final userName = user?.userName ?? 'User';
    final avatarUrl = user?.avatar?.storageUrl;

    return Container(
      padding: EdgeInsets.symmetric(vertical: context.sizing.s24),
      child: Column(
        children: [
          // Avatar with edit badge
          Stack(
            children: [
              CircleAvatar(
                radius: context.sizing.s48,
                backgroundColor: context.primaryColor.withValues(alpha: 0.1),
                backgroundImage: avatarUrl != null ? NetworkImage(avatarUrl) : null,
                child: avatarUrl == null
                    ? Icon(Icons.person, size: context.sizing.s48, color: context.primaryColor)
                    : null,
              ),
              Positioned(
                right: 0,
                bottom: 0,
                child: GestureDetector(
                  onTap: () {
                    // TODO: Implement avatar change functionality
                  },
                  child: Container(
                    padding: EdgeInsets.all(context.sizing.s6),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: context.primaryColor,
                      border: Border.all(
                        width: 2,
                        color: Theme.of(context).scaffoldBackgroundColor,
                      ),
                    ),
                    child: Icon(Icons.camera_alt, size: context.sizing.s16, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
          Gap(context.sizing.s16),

          // Username
          Text(
            userName,
            style: context.textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w600),
          ),
          Gap(context.sizing.s4),

          // Email
          if (email.isNotEmpty)
            Text(email, style: context.textTheme.bodyMedium?.copyWith(color: ColorsUtil.gray500)),
          Gap(context.sizing.s24),

          // Edit Profile Button
          FadeAnimation(
            delay: 0.65,
            child: SolidButton(
              isFull: true,
              size: ButtonSize.sm,
              text: "Edit Profile",
              isLoading: false,
              isDisabled: false,
              onPressed: () => _showEditProfileDialog(context),
            ),
          ),
        ],
      ),
    );
  }
}
