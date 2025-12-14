import 'package:flutter_bloc/flutter_bloc.dart' show Bloc, Emitter;

import '../../../../../platform/session/application/usecases/update.auth.status.usecase.dart'
    show UpdateAuthStatusUseCase;
import '../../../../../platform/session/domain/enums/auth.status.enum.dart' show AuthStatus;
import '../../../application/usecases/signin.usecase.dart' show SignInUseCase;
import 'signin.event.dart' show SignInEvent, SignInSubmitted;
import 'signin.state.dart'
    show SignInState, SignInInitial, SignInLoading, SignInSuccess, SignInFailure;

/// BLoC for handling sign in authentication flow.
///
/// Manages sign in state and coordinates with SignInUseCase to
/// authenticate users. Updates session auth status on successful login.
/// Emits different states based on the authentication result
/// (loading, success, failure).
class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final SignInUseCase _signInUseCase;
  final UpdateAuthStatusUseCase _updateAuthStatusUseCase;

  SignInBloc(this._signInUseCase, this._updateAuthStatusUseCase) : super(const SignInInitial()) {
    on<SignInSubmitted>(_onSignInSubmitted);
  }

  Future<void> _onSignInSubmitted(SignInSubmitted event, Emitter<SignInState> emit) async {
    emit(const SignInLoading());

    final result = await _signInUseCase.execute(event.credentials);

    await result.fold((failure) async => emit(SignInFailure(failure)), (response) async {
      // Update session auth status based on verification state
      final authStatus = response.user.isVerified
          ? AuthStatus.authenticated
          : AuthStatus.unverified;
      await _updateAuthStatusUseCase.execute((status: authStatus, userId: response.user.id));

      emit(SignInSuccess(response));
    });
  }
}
