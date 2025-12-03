import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart' show BlocBuilder;
import 'package:gap/gap.dart' show Gap;
import 'package:go_router/go_router.dart' show GoRouter;

import '../../../../platform/session/presentation/bloc/session.bloc.dart' show SessionBloc;
import '../../../../platform/session/presentation/bloc/session.state.dart'
    show SessionState, SessionSuccess;
import '../../themes/extensions/build.context.extension.dart';
import '../../utils/colors.util.dart' show ColorsUtil;

/// Side menu layout that displays navigation options and user info.
///
/// Appears when the user swipes right or taps the hamburger menu.
/// The menu slides in from the left while the main content pushes right.
class SideMenuLayout extends StatelessWidget {
  final VoidCallback onClose;

  const SideMenuLayout({super.key, required this.onClose});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).colorScheme.primary,
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildHeader(context),
            Expanded(child: _buildMenuItems(context)),
            _buildFooter(context),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return BlocBuilder<SessionBloc, SessionState>(
      builder: (context, state) {
        final isAuthenticated = state is SessionSuccess && !state.sessionState.isGuest;

        return Container(
          padding: EdgeInsets.all(context.sizing.s24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: context.sizing.s32,
                backgroundColor: ColorsUtil.white.withValues(alpha: 0.2),
                child: Icon(
                  isAuthenticated ? Icons.person : Icons.person_outline,
                  size: context.sizing.s32,
                  color: ColorsUtil.white,
                ),
              ),
              Gap(context.sizing.s16),
              Text(
                isAuthenticated ? 'Welcome back!' : 'Guest User',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: ColorsUtil.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              if (!isAuthenticated) ...[
                Gap(context.sizing.s8),
                Text(
                  'Sign in to access all features',
                  style: Theme.of(
                    context,
                  ).textTheme.bodySmall?.copyWith(color: ColorsUtil.white.withValues(alpha: 0.7)),
                ),
              ],
            ],
          ),
        );
      },
    );
  }

  Widget _buildMenuItems(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(vertical: context.sizing.s8),
      children: [
        _MenuItem(
          icon: Icons.home_outlined,
          label: 'Home',
          onTap: () {
            onClose();
            GoRouter.of(context).go('/home');
          },
        ),
        _MenuItem(
          icon: Icons.explore_outlined,
          label: 'Discover',
          onTap: () {
            onClose();
            GoRouter.of(context).go('/discover');
          },
        ),
        _MenuItem(
          icon: Icons.live_tv_outlined,
          label: 'Shows',
          onTap: () {
            onClose();
            GoRouter.of(context).go('/shows');
          },
        ),
        _MenuItem(
          icon: Icons.favorite_outline,
          label: 'Favorites',
          onTap: () {
            onClose();
            GoRouter.of(context).go('/favorite');
          },
        ),
        Divider(
          color: ColorsUtil.white.withValues(alpha: 0.2),
          indent: context.sizing.s24,
          endIndent: context.sizing.s24,
        ),
        _MenuItem(
          icon: Icons.settings_outlined,
          label: 'Settings',
          onTap: () {
            onClose();
            // TODO: Navigate to settings
          },
        ),
        _MenuItem(
          icon: Icons.help_outline,
          label: 'Help & Support',
          onTap: () {
            onClose();
            // TODO: Navigate to help
          },
        ),
      ],
    );
  }

  Widget _buildFooter(BuildContext context) {
    return BlocBuilder<SessionBloc, SessionState>(
      builder: (context, state) {
        final isAuthenticated = state is SessionSuccess && !state.sessionState.isGuest;

        return Container(
          padding: EdgeInsets.all(context.sizing.s24),
          child: _MenuItem(
            icon: isAuthenticated ? Icons.logout : Icons.login,
            label: isAuthenticated ? 'Sign Out' : 'Sign In',
            onTap: () {
              onClose();
              if (isAuthenticated) {
                // TODO: Implement sign out
              } else {
                // TODO: Navigate to sign in
              }
            },
          ),
        );
      },
    );
  }
}

class _MenuItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  const _MenuItem({required this.icon, required this.label, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: ColorsUtil.white, size: context.sizing.s24),
      title: Text(
        label,
        style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: ColorsUtil.white),
      ),
      onTap: onTap,
      contentPadding: EdgeInsets.symmetric(
        horizontal: context.sizing.s24,
        vertical: context.sizing.s4,
      ),
    );
  }
}
