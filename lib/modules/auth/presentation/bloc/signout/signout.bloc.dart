import 'package:flutter_bloc/flutter_bloc.dart' show Bloc, Emitter;

import '../../../../../platform/session/application/usecases/update.auth.status.usecase.dart'
    show UpdateAuthStatusUseCase;
import '../../../../../platform/session/domain/enums/auth.status.enum.dart' show AuthStatus;
import '../../../application/usecases/signout.usecase.dart' show SignOutUseCase;
import 'signout.event.dart' show SignOutEvent, SignOutSubmitted;
import 'signout.state.dart'
    show SignOutState, SignOutInitial, SignOutLoading, SignOutSuccess, SignOutFailure;

/// BLoC for handling user sign out flow.
///
/// Manages sign out state and coordinates with SignOutUseCase to
/// clear local session data (auth token and user profile), and
/// UpdateAuthStatusUseCase to reset session state to guest.
/// Emits different states based on the sign out result.
class SignOutBloc extends Bloc<SignOutEvent, SignOutState> {
  final SignOutUseCase _signOutUseCase;
  final UpdateAuthStatusUseCase _updateAuthStatusUseCase;

  SignOutBloc(this._signOutUseCase, this._updateAuthStatusUseCase) : super(const SignOutInitial()) {
    on<SignOutSubmitted>(_onSignOutSubmitted);
  }

  /// Handles sign out request event.
  ///
  /// Executes the sign out use case to clear auth data (token, user),
  /// then updates session state to guest status with null userId.
  /// Emits appropriate states (loading, success, or failure) based on the result.
  Future<void> _onSignOutSubmitted(SignOutSubmitted event, Emitter<SignOutState> emit) async {
    emit(const SignOutLoading());

    final result = await _signOutUseCase.execute(null);

    await result.fold((failure) async => emit(SignOutFailure(failure)), (response) async {
      // Update session state to guest after successful sign out
      final sessionResult = await _updateAuthStatusUseCase.execute((
        status: AuthStatus.guest,
        userId: null,
      ));

      sessionResult.fold(
        (failure) => emit(SignOutFailure(failure)),
        (_) => emit(SignOutSuccess(response)),
      );
    });
  }
}
