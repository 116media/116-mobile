import 'package:flutter_bloc/flutter_bloc.dart' show Bloc, Emitter;

import '../../../application/usecases/signin.usecase.dart' show SignInUseCase;
import 'signin.event.dart' show SignInEvent, SignInSubmitted;
import 'signin.state.dart'
    show SignInState, SignInInitial, SignInLoading, SignInSuccess, SignInFailure;

/// BLoC for handling sign in authentication flow.
///
/// Manages sign in state and coordinates with SignInUseCase to
/// authenticate users. Emits different states based on the authentication
/// result (loading, success, failure).
class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final SignInUseCase _signInUseCase;

  SignInBloc(this._signInUseCase) : super(const SignInInitial()) {
    on<SignInSubmitted>(_onSignInSubmitted);
  }

  Future<void> _onSignInSubmitted(SignInSubmitted event, Emitter<SignInState> emit) async {
    emit(const SignInLoading());

    final result = await _signInUseCase.execute(event.credentials);

    result.fold(
      (failure) => emit(SignInFailure(failure)),
      (response) => emit(SignInSuccess(response)),
    );
  }
}
