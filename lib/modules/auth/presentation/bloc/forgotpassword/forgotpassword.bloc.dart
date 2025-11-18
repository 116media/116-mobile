import 'package:flutter_bloc/flutter_bloc.dart' show Bloc, Emitter;

import '../../../application/usecases/forgotpassword.usecase.dart' show ForgotPasswordUseCase;
import 'forgotpassword.event.dart' show ForgotPasswordEvent, ForgotPasswordRequested;
import 'forgotpassword.state.dart'
    show
        ForgotPasswordState,
        ForgotPasswordInitial,
        ForgotPasswordLoading,
        ForgotPasswordSuccess,
        ForgotPasswordFailure;

/// BLoC for handling forgot password operations.
///
/// Manages the forgot password flow by sending a password reset OTP
/// to the user's email address. Coordinates with ForgotPasswordUseCase
/// to execute the business logic and emits appropriate states based on
/// the operation result (loading, success, failure).
class ForgotPasswordBloc extends Bloc<ForgotPasswordEvent, ForgotPasswordState> {
  final ForgotPasswordUseCase _forgotPasswordUseCase;

  ForgotPasswordBloc(this._forgotPasswordUseCase) : super(const ForgotPasswordInitial()) {
    on<ForgotPasswordRequested>(_onForgotPasswordRequested);
  }

  Future<void> _onForgotPasswordRequested(
    ForgotPasswordRequested event,
    Emitter<ForgotPasswordState> emit,
  ) async {
    emit(const ForgotPasswordLoading());

    final result = await _forgotPasswordUseCase.execute(event.credentials);

    result.fold(
      (failure) => emit(ForgotPasswordFailure(failure)),
      (response) => emit(ForgotPasswordSuccess(response)),
    );
  }
}
