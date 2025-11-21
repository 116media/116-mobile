import 'package:flutter_bloc/flutter_bloc.dart' show Bloc, Emitter;

import '../../../../../platform/session/application/usecases/update.auth.status.usecase.dart'
    show UpdateAuthStatusUseCase;
import '../../../../../platform/session/domain/enums/auth.status.enum.dart' show AuthStatus;
import '../../../application/usecases/googlesignin.usecase.dart' show GoogleSignInUseCase;
import 'googlesignin.event.dart' show GoogleSignInEvent, GoogleSignInSubmitted;
import 'googlesignin.state.dart'
    show GoogleSignInState, GoogleSignInInitial, GoogleSignInLoading, GoogleSignInSuccess, GoogleSignInFailure;

/// BLoC for handling Google sign-in authentication flow.
///
/// Manages Google sign-in state and coordinates with GoogleSignInUseCase to
/// authenticate users via Google OAuth. Updates session auth status on success.
/// Emits different states based on the authentication result
/// (loading, success, failure).
class GoogleSignInBloc extends Bloc<GoogleSignInEvent, GoogleSignInState> {
  final GoogleSignInUseCase _googleSignInUseCase;
  final UpdateAuthStatusUseCase _updateAuthStatusUseCase;

  GoogleSignInBloc(this._googleSignInUseCase, this._updateAuthStatusUseCase)
      : super(const GoogleSignInInitial()) {
    on<GoogleSignInSubmitted>(_onGoogleSignInSubmitted);
  }

  Future<void> _onGoogleSignInSubmitted(GoogleSignInSubmitted event, Emitter<GoogleSignInState> emit) async {
    emit(const GoogleSignInLoading());

    final result = await _googleSignInUseCase.execute(null);

    await result.fold(
      (failure) async => emit(GoogleSignInFailure(failure)),
      (response) async {
        // Social login users are already verified by the provider
        await _updateAuthStatusUseCase.execute((
          status: AuthStatus.authenticated,
          userId: response.user.id,
        ));

        emit(GoogleSignInSuccess(response));
      },
    );
  }
}
