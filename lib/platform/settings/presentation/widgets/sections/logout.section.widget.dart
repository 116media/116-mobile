import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart' show BlocBuilder;

import '../../../../../../../../shared/presentation/themes/extensions/build.context.extension.dart';
import '../../../../../shared/presentation/utils/colors.util.dart' show ColorsUtil;
import '../../../../../shared/presentation/widgets/buttons/enums/button.size.enum.dart'
    show ButtonSize;
import '../../../../../shared/presentation/widgets/buttons/outline.button.dart' show OutlineButton;
import '../../../../session/presentation/bloc/session.bloc.dart' show SessionBloc;
import '../../../../session/presentation/bloc/session.state.dart' show SessionState, SessionSuccess;

/// Settings section that displays a logout button for authenticated users.
///
/// This widget is only shown when the current session represents a
/// logged-in, non-guest user. When pressed, the logout button triggers
/// the provided [onLogout] callback, allowing the parent to handle
/// session termination or cleanup logic.
class LogoutSection extends StatelessWidget {
  final VoidCallback onLogout;

  const LogoutSection({super.key, required this.onLogout});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SessionBloc, SessionState>(
      builder: (context, state) {
        final isAuthenticated = state is SessionSuccess && !state.sessionState.isGuest;

        if (!isAuthenticated) {
          return const SizedBox.shrink();
        }

        return Padding(
          padding: EdgeInsets.symmetric(vertical: context.sizing.s24),
          child: OutlineButton(
            text: 'Log Out',
            onPressed: onLogout,
            size: ButtonSize.sm,
            color: ColorsUtil.error,
          ),
        );
      },
    );
  }
}
