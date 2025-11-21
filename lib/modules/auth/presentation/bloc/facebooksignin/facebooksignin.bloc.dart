import 'package:flutter_bloc/flutter_bloc.dart' show Bloc, Emitter;

import '../../../application/usecases/facebooksignin.usecase.dart' show FacebookSignInUseCase;
import 'facebooksignin.event.dart' show FacebookSignInEvent, FacebookSignInSubmitted;
import 'facebooksignin.state.dart'
    show FacebookSignInState, FacebookSignInInitial, FacebookSignInLoading, FacebookSignInSuccess, FacebookSignInFailure;

/// BLoC for handling Facebook sign-in authentication flow.
///
/// Manages Facebook sign-in state and coordinates with FacebookSignInUseCase to
/// authenticate users via Facebook OAuth. Emits different states based on the
/// authentication result (loading, success, failure).
class FacebookSignInBloc extends Bloc<FacebookSignInEvent, FacebookSignInState> {
  final FacebookSignInUseCase _facebookSignInUseCase;

  FacebookSignInBloc(this._facebookSignInUseCase) : super(const FacebookSignInInitial()) {
    on<FacebookSignInSubmitted>(_onFacebookSignInSubmitted);
  }

  Future<void> _onFacebookSignInSubmitted(FacebookSignInSubmitted event, Emitter<FacebookSignInState> emit) async {
    emit(const FacebookSignInLoading());

    final result = await _facebookSignInUseCase.execute(null);

    result.fold(
      (failure) => emit(FacebookSignInFailure(failure)),
      (response) => emit(FacebookSignInSuccess(response)),
    );
  }
}
