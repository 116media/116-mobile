import 'package:flutter_bloc/flutter_bloc.dart' show Bloc, Emitter;

import '../../../../../platform/session/application/usecases/update.auth.status.usecase.dart'
    show UpdateAuthStatusUseCase;
import '../../../../../platform/session/domain/enums/auth.status.enum.dart' show AuthStatus;
import '../../../application/usecases/facebooksignin.usecase.dart' show FacebookSignInUseCase;
import 'facebooksignin.event.dart' show FacebookSignInEvent, FacebookSignInSubmitted;
import 'facebooksignin.state.dart'
    show
        FacebookSignInState,
        FacebookSignInInitial,
        FacebookSignInLoading,
        FacebookSignInSuccess,
        FacebookSignInFailure;

/// BLoC for handling Facebook sign-in authentication flow.
///
/// Manages Facebook sign-in state and coordinates with FacebookSignInUseCase to
/// authenticate users via Facebook OAuth. Updates session auth status on success.
/// Emits different states based on the authentication result
/// (loading, success, failure).
class FacebookSignInBloc extends Bloc<FacebookSignInEvent, FacebookSignInState> {
  final FacebookSignInUseCase _facebookSignInUseCase;
  final UpdateAuthStatusUseCase _updateAuthStatusUseCase;

  FacebookSignInBloc(this._facebookSignInUseCase, this._updateAuthStatusUseCase)
    : super(const FacebookSignInInitial()) {
    on<FacebookSignInSubmitted>(_onFacebookSignInSubmitted);
  }

  Future<void> _onFacebookSignInSubmitted(
    FacebookSignInSubmitted event,
    Emitter<FacebookSignInState> emit,
  ) async {
    emit(const FacebookSignInLoading());

    final result = await _facebookSignInUseCase.execute(null);

    await result.fold((failure) async => emit(FacebookSignInFailure(failure)), (response) async {
      // Social login users are already verified by the provider
      await _updateAuthStatusUseCase.execute((
        status: AuthStatus.authenticated,
        userId: response.user.id,
      ));

      emit(FacebookSignInSuccess(response));
    });
  }
}
