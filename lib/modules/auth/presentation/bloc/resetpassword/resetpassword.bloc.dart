import 'package:flutter_bloc/flutter_bloc.dart' show Bloc, Emitter;

import '../../../application/usecases/resetpassword.usecase.dart' show ResetPasswordUseCase;
import 'resetpassword.event.dart' show ResetPasswordEvent, ResetPasswordSubmitted;
import 'resetpassword.state.dart'
    show
        ResetPasswordState,
        ResetPasswordInitial,
        ResetPasswordLoading,
        ResetPasswordSuccess,
        ResetPasswordFailure;

/// BLoC for handling password reset operations.
///
/// Manages the password reset flow by validating the OTP code and
/// updating the user's password. Coordinates with ResetPasswordUseCase
/// to execute the business logic and emits appropriate states based on
/// the operation result (loading, success, failure).
class ResetPasswordBloc extends Bloc<ResetPasswordEvent, ResetPasswordState> {
  final ResetPasswordUseCase _resetPasswordUseCase;

  ResetPasswordBloc(this._resetPasswordUseCase) : super(const ResetPasswordInitial()) {
    on<ResetPasswordSubmitted>(_onResetPasswordSubmitted);
  }

  Future<void> _onResetPasswordSubmitted(
    ResetPasswordSubmitted event,
    Emitter<ResetPasswordState> emit,
  ) async {
    emit(const ResetPasswordLoading());

    final result = await _resetPasswordUseCase.execute(event.credentials);

    result.fold(
      (failure) => emit(ResetPasswordFailure(failure)),
      (response) => emit(ResetPasswordSuccess(response)),
    );
  }
}
