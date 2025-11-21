import 'package:flutter_bloc/flutter_bloc.dart' show Bloc, Emitter;

import '../../../application/usecases/googlesignin.usecase.dart' show GoogleSignInUseCase;
import 'googlesignin.event.dart' show GoogleSignInEvent, GoogleSignInSubmitted;
import 'googlesignin.state.dart'
    show GoogleSignInState, GoogleSignInInitial, GoogleSignInLoading, GoogleSignInSuccess, GoogleSignInFailure;

/// BLoC for handling Google sign-in authentication flow.
///
/// Manages Google sign-in state and coordinates with GoogleSignInUseCase to
/// authenticate users via Google OAuth. Emits different states based on the
/// authentication result (loading, success, failure).
class GoogleSignInBloc extends Bloc<GoogleSignInEvent, GoogleSignInState> {
  final GoogleSignInUseCase _googleSignInUseCase;

  GoogleSignInBloc(this._googleSignInUseCase) : super(const GoogleSignInInitial()) {
    on<GoogleSignInSubmitted>(_onGoogleSignInSubmitted);
  }

  Future<void> _onGoogleSignInSubmitted(GoogleSignInSubmitted event, Emitter<GoogleSignInState> emit) async {
    emit(const GoogleSignInLoading());

    final result = await _googleSignInUseCase.execute(null);

    result.fold(
      (failure) => emit(GoogleSignInFailure(failure)),
      (response) => emit(GoogleSignInSuccess(response)),
    );
  }
}
