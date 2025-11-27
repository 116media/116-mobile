import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart' show BlocBuilder, BlocProvider;
import 'package:go_router/go_router.dart' show GoRouter;

import '../../../../modules/home/presentation/constants/home.constants.dart' show kHomeRoutePath;
import '../../../../platform/preferences/presentation/bloc/preferences.bloc.dart'
    show PreferencesBloc;
import '../../../../platform/preferences/presentation/bloc/preferences.event.dart'
    show PreferencesLoadStarted;
import '../../../../platform/preferences/presentation/bloc/preferences.state.dart'
    show PreferencesState, PreferencesSuccess;
import '../../../../shared/infrastructure/service.locator.dart' show sl;
import '../../../../shared/presentation/themes/extensions/build.context.extension.dart';
import '../../../../shared/presentation/utils/colors.util.dart' show ColorsUtil;
import '../../../../shared/presentation/utils/dialog.util.dart' show DialogUtil;
import '../../../../shared/presentation/widgets/app-version/appversion.widget.dart' show AppVersion;
import '../widgets/sections/account.section.widget.dart' show AccountSection;
import '../widgets/sections/logout.section.widget.dart' show LogoutSection;
import '../widgets/sections/preferences.section.widget.dart' show PreferencesSection;
import '../widgets/sections/profile.section.widget.dart' show ProfileSection;
import '../widgets/sections/followus.section.widget.dart' show FollowUsSection;
import '../widgets/sections/support.section.widget.dart' show SupportSection;

/// Settings screen displaying user profile, preferences, and account options.
///
/// Provides access to:
/// - Profile editing (authenticated users)
/// - Theme, language, and notification preferences
/// - Account & security settings
/// - Support links
/// - Social media links
/// - Logout functionality
class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  void _showLogoutDialog(BuildContext context) {
    DialogUtil.confirm(
      context,
      title: 'Log Out',
      message: 'Are you sure you want to log out?',
      confirmText: 'Log Out',
      cancelText: 'Cancel',
      icon: Icons.warning_amber_rounded,
      iconColor: ColorsUtil.error,
      cancelColor: ColorsUtil.error,
      confirmColor: ColorsUtil.error,
      onConfirm: () {
        // TODO: Implement logout logic
        Navigator.of(context).pop();
        GoRouter.of(context).go(kHomeRoutePath);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<PreferencesBloc>()..add(const PreferencesLoadStarted()),
      child: Scaffold(
        appBar: AppBar(title: const Text('Settings'), centerTitle: true),
        body: BlocBuilder<PreferencesBloc, PreferencesState>(
          builder: (context, prefsState) {
            if (prefsState is! PreferencesSuccess) {
              return const Center(child: CircularProgressIndicator());
            }

            return SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: context.sizing.s16),
                child: Column(
                  spacing: context.sizing.s24,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const ProfileSection(),
                    const AccountSection(),
                    const PreferencesSection(),
                    const SupportSection(),
                    const FollowUsSection(),
                    LogoutSection(onLogout: () => _showLogoutDialog(context)),
                    AppVersion(),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
