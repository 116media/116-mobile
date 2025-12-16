import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart'
    show BlocBuilder, BlocListener, BlocProvider, ReadContext;

import '../../../../i18n/strings.g.dart' show t;
import '../../../../modules/auth/presentation/bloc/signout/signout.bloc.dart' show SignOutBloc;
import '../../../../modules/auth/presentation/bloc/signout/signout.event.dart'
    show SignOutSubmitted;
import '../../../../modules/auth/presentation/bloc/signout/signout.state.dart'
    show SignOutState, SignOutSuccess, SignOutFailure;
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
import '../widgets/sections/signout.section.widget.dart' show SignOutSection;
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
/// - Sign-out functionality
class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  void _signOutStateListener(BuildContext ctx, SignOutState state) {
    if (state is SignOutSuccess) {
      final rootContext = Navigator.of(ctx, rootNavigator: true).context;

      WidgetsBinding.instance.addPostFrameCallback((_) async {
        if (rootContext.mounted) {
          DialogUtil.success(rootContext, message: t.settings.signout.success);
        }
      });
    } else if (state is SignOutFailure) {
      DialogUtil.error(ctx, message: state.failure.detail);
    }
  }

  void _showSignOutDialog(BuildContext context) {
    DialogUtil.confirm(
      context,
      title: t.settings.signout.title,
      message: t.settings.signout.message,
      confirmText: t.settings.signout.confirm,
      cancelText: t.shared.common.cancel,
      icon: Icons.warning_amber_rounded,
      iconColor: ColorsUtil.error,
      cancelColor: ColorsUtil.error,
      confirmColor: ColorsUtil.error,
      onConfirm: () {
        Navigator.of(context).pop();
        context.read<SignOutBloc>().add(const SignOutSubmitted());
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<PreferencesBloc>()..add(const PreferencesLoadStarted()),
      child: BlocProvider(
        create: (context) => sl<SignOutBloc>(),
        child: BlocListener<SignOutBloc, SignOutState>(
          listener: _signOutStateListener,
          child: Scaffold(
            appBar: AppBar(title: Text(t.settings.title), centerTitle: true),
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
                        SignOutSection(onSignOut: () => _showSignOutDialog(context)),
                        AppVersion(),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
