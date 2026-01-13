import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart' show BlocBuilder;

import '../../../../../i18n/strings.g.dart' show t;
import '../../../../../../../../shared/presentation/themes/extensions/build.context.extension.dart';
import '../../../../../shared/presentation/utils/colors.util.dart' show ColorsUtil;
import '../../../../../shared/presentation/widgets/buttons/enums/button.size.enum.dart'
    show ButtonSize;
import '../../../../../shared/presentation/widgets/buttons/outline.button.dart' show OutlineButton;
import '../../../../session/presentation/bloc/session.bloc.dart' show SessionBloc;
import '../../../../session/presentation/bloc/session.state.dart' show SessionState, SessionSuccess;

/// Settings section that displays a signout button for authenticated users.
///
/// This widget is only shown when the current session represents a
/// logged-in, non-guest user. When pressed, the signout button triggers
/// the provided [onSignOut] callback, allowing the parent to handle
/// session termination or cleanup logic.
class SignOutSection extends StatelessWidget {
  final VoidCallback onSignOut;

  const SignOutSection({super.key, required this.onSignOut});

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
            onPressed: onSignOut,
            size: ButtonSize.sm,
            color: ColorsUtil.error,
            text: t.settings.signout.button,
          ),
        );
      },
    );
  }
}
