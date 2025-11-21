import 'package:flutter_bloc/flutter_bloc.dart' show Bloc, Emitter;

import '../../../../../platform/session/application/usecases/update.auth.status.usecase.dart'
    show UpdateAuthStatusUseCase;
import '../../../../../platform/session/domain/enums/auth.status.enum.dart' show AuthStatus;
import '../../../application/usecases/signup.usecase.dart' show SignUpUseCase;
import 'signup.event.dart' show SignUpEvent, SignUpSubmitted;
import 'signup.state.dart'
    show SignUpState, SignUpInitial, SignUpLoading, SignUpSuccess, SignUpFailure;

/// BLoC for handling sign up registration flow.
///
/// Manages sign up state and coordinates with SignUpUseCase to
/// register new users. Updates session auth status on successful registration.
/// Emits different states based on the registration result
/// (loading, success, failure).
class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final SignUpUseCase _signUpUseCase;
  final UpdateAuthStatusUseCase _updateAuthStatusUseCase;

  SignUpBloc(this._signUpUseCase, this._updateAuthStatusUseCase) : super(const SignUpInitial()) {
    on<SignUpSubmitted>(_onSignUpSubmitted);
  }

  Future<void> _onSignUpSubmitted(SignUpSubmitted event, Emitter<SignUpState> emit) async {
    emit(const SignUpLoading());

    final result = await _signUpUseCase.execute(event.credentials);

    await result.fold((failure) async => emit(SignUpFailure(failure)), (response) async {
      // Update session auth status based on verification state
      final authStatus = response.user.isVerified
          ? AuthStatus.authenticated
          : AuthStatus.unverified;
      await _updateAuthStatusUseCase.execute((status: authStatus, userId: response.user.id));

      emit(SignUpSuccess(response));
    });
  }
}
