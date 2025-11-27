import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart' show BlocBuilder;

import '../../../../../shared/presentation/extensions/string.extension.dart';
import '../../../../../platform/session/presentation/bloc/session.bloc.dart' show SessionBloc;
import '../../../../../platform/session/presentation/bloc/session.state.dart'
    show SessionState, SessionSuccess;
import '../../../../../shared/infrastructure/service.locator.dart' show sl;
import '../../../../../shared/presentation/utils/colors.util.dart' show ColorsUtil;
import '../../../../auth/application/data-sources/auth.local.datasource.port.dart'
    show IAuthLocalDataSource;
import '../../../../../shared/presentation/themes/extensions/build.context.extension.dart';

/// A greeting card widget that displays a personalized welcome message.
///
/// Only shows greeting for authenticated users (not guests).
/// Displays "Hi, {username}" with a waving hand emoji.
///
/// Uses BLoC to reactively listen to session state changes
/// and fetches user data from local storage.
class GreetingCard extends StatelessWidget {
  const GreetingCard({super.key});

  /// Retrieves the username from local storage.
  Future<String?> _getUserName() async {
    final localDataSource = sl<IAuthLocalDataSource>();
    final user = await localDataSource.getUser();
    return user?.userName;
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SessionBloc, SessionState>(
      builder: (context, state) {
        // Only show greeting for authenticated users (not guests)
        if (state is! SessionSuccess || state.sessionState.isGuest) {
          return const SizedBox.shrink();
        }

        return FutureBuilder<String?>(
          future: _getUserName(),
          builder: (context, snapshot) {
            final userName = snapshot.data;

            // Don't show if no username available
            if (userName == null || userName.isEmpty) {
              return const SizedBox.shrink();
            }

            return Container(
              padding: EdgeInsets.only(top: context.sizing.s12, bottom: context.sizing.s24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hi, ${userName.toCapitalized()} 👋",
                    style: context.textTheme.headlineMedium,
                  ),
                  Text(
                    "When words stop coming out, music pops up.",
                    style: context.textTheme.labelSmall?.copyWith(
                      color: context.isDarkMode
                          ? ColorsUtil.white.withValues(alpha: context.sizing.s0_5)
                          : ColorsUtil.black.withValues(alpha: context.sizing.s0_5),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
