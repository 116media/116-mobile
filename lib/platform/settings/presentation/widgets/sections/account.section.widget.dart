import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart' show BlocBuilder;

import '../../../../../i18n/strings.g.dart' show t;
import '../../../../../shared/presentation/themes/extensions/build.context.extension.dart';
import '../../../../../platform/session/presentation/bloc/session.bloc.dart' show SessionBloc;
import '../../../../../platform/session/presentation/bloc/session.state.dart'
    show SessionState, SessionSuccess;
import '../../../../../shared/presentation/utils/colors.util.dart' show ColorsUtil;
import '../../../../../shared/presentation/utils/dialog.util.dart' show DialogUtil;
import '../items/settings.tile.widget.dart' show SettingsTile;
import 'settings.section.header.widget.dart' show SettingsSectionHeader;

/// Settings section that provides account-related actions such as
/// updating the password, managing privacy and security options, and
/// initiating account deletion.
///
/// This section is only visible when the user is authenticated and
/// not browsing as a guest. It does not render any UI when the session
/// state does not represent a logged-in user.
///
/// The delete account option triggers a confirmation dialog before
/// proceeding with the destructive action.
class AccountSection extends StatelessWidget {
  const AccountSection({super.key});

  void _showDeleteAccountDialog(BuildContext context) {
    DialogUtil.confirm(
      context,
      title: t.settings.account.deleteTitle,
      message: t.settings.account.deleteMessage,
      confirmText: t.shared.common.delete,
      cancelText: t.shared.common.cancel,
      icon: Icons.warning_amber_rounded,
      iconColor: ColorsUtil.error,
      cancelColor: ColorsUtil.error,
      confirmColor: ColorsUtil.error,
      onConfirm: () {
        // TODO: Implement delete account logic
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SessionBloc, SessionState>(
      builder: (context, state) {
        final isAuthenticated = state is SessionSuccess && !state.sessionState.isGuest;

        if (!isAuthenticated) {
          return const SizedBox.shrink();
        }

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SettingsSectionHeader(title: t.settings.account.title),
            Column(
              children: [
                SettingsTile(
                  title: t.settings.account.password,
                  icon: Icons.lock_outline,
                  subtitle: t.settings.account.passwordSubtitle,
                  iconBackgroundColor: ColorsUtil.blue500,
                  onTap: () {
                    // TODO: Navigate to change password
                  },
                ),
                SettingsTile(
                  title: t.settings.account.privacySecurity,
                  icon: Icons.shield_outlined,
                  iconBackgroundColor: ColorsUtil.purple500,
                  onTap: () {
                    // TODO: Navigate to privacy settings
                  },
                ),
                SettingsTile(
                  title: t.settings.account.deleteTitle,
                  icon: Icons.delete_outline,
                  textColor: ColorsUtil.error,
                  iconBackgroundColor: ColorsUtil.error,
                  trailing: Icon(
                    size: context.sizing.s18,
                    Icons.adaptive.arrow_forward,
                    color: ColorsUtil.red500.withValues(alpha: context.sizing.s0_5),
                  ),
                  onTap: () => _showDeleteAccountDialog(context),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
