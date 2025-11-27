import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart' show BlocBuilder;

import '../../../../../modules/auth/application/data-sources/auth.local.datasource.port.dart'
    show IAuthLocalDataSource;
import '../../../../../modules/auth/infrastructure/models/hive/user/user.model.dart' show UserModel;
import '../../../../../platform/session/presentation/bloc/session.bloc.dart' show SessionBloc;
import '../../../../../platform/session/presentation/bloc/session.state.dart'
    show SessionState, SessionSuccess;
import '../../../../../shared/infrastructure/service.locator.dart' show sl;
import '../profile/authenticated.profile.card.dart' show AuthenticatedProfileCard;
import '../profile/guest.profile.card.dart' show GuestProfileCard;

/// Profile section widget that adapts based on authentication state.
///
/// Displays [AuthenticatedProfileCard] for logged-in users with their profile info,
/// or [GuestProfileCard] for guests with a sign-in prompt. Listens to [SessionBloc]
/// to determine authentication status and loads user data from local storage.
class ProfileSection extends StatelessWidget {
  const ProfileSection({super.key});

  Future<UserModel?> _getUser() async {
    final localDataSource = sl<IAuthLocalDataSource>();
    return localDataSource.getUser();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SessionBloc, SessionState>(
      builder: (context, state) {
        final isAuthenticated = state is SessionSuccess && !state.sessionState.isGuest;

        if (!isAuthenticated) {
          return GuestProfileCard();
        }

        return FutureBuilder<UserModel?>(
          future: _getUser(),
          builder: (context, snapshot) {
            final user = snapshot.data;
            return AuthenticatedProfileCard(user: user);
          },
        );
      },
    );
  }
}
