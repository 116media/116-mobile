import 'package:flutter_bloc/flutter_bloc.dart' show Bloc, Emitter;

import '../../../application/usecases/signup.usecase.dart' show SignUpUseCase;
import 'signup.event.dart' show SignUpEvent, SignUpSubmitted;
import 'signup.state.dart'
    show SignUpState, SignUpInitial, SignUpLoading, SignUpSuccess, SignUpFailure;

/// BLoC for handling sign up registration flow.
///
/// Manages sign up state and coordinates with SignUpUseCase to
/// register new users. Emits different states based on the registration
/// result (loading, success, failure).
class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final SignUpUseCase _signUpUseCase;

  SignUpBloc(this._signUpUseCase) : super(const SignUpInitial()) {
    on<SignUpSubmitted>(_onSignUpSubmitted);
  }

  Future<void> _onSignUpSubmitted(SignUpSubmitted event, Emitter<SignUpState> emit) async {
    emit(const SignUpLoading());

    final result = await _signUpUseCase.execute(event.credentials);

    result.fold(
      (failure) => emit(SignUpFailure(failure)),
      (response) => emit(SignUpSuccess(response)),
    );
  }
}
