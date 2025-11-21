import 'package:flutter_bloc/flutter_bloc.dart' show Bloc, Emitter;

import '../../../../../platform/session/application/usecases/update.auth.status.usecase.dart'
    show UpdateAuthStatusUseCase;
import '../../../../../platform/session/domain/enums/auth.status.enum.dart' show AuthStatus;
import '../../../application/usecases/verifyotp.usecase.dart' show VerifyOtpUseCase;
import 'verifyotp.event.dart' show VerifyOtpEvent, VerifyOtpSubmitted;
import 'verifyotp.state.dart'
    show VerifyOtpState, VerifyOtpInitial, VerifyOtpLoading, VerifyOtpSuccess, VerifyOtpFailure;

/// BLoC for handling OTP verification flow.
///
/// Manages OTP verification state and coordinates with VerifyOtpUseCase to
/// verify user email. Updates session auth status to authenticated on success.
/// Emits different states based on the verification result
/// (loading, success, failure).
class VerifyOtpBloc extends Bloc<VerifyOtpEvent, VerifyOtpState> {
  final VerifyOtpUseCase _verifyOtpUseCase;
  final UpdateAuthStatusUseCase _updateAuthStatusUseCase;

  VerifyOtpBloc(this._verifyOtpUseCase, this._updateAuthStatusUseCase)
    : super(const VerifyOtpInitial()) {
    on<VerifyOtpSubmitted>(_onVerifyOtpSubmitted);
  }

  Future<void> _onVerifyOtpSubmitted(VerifyOtpSubmitted event, Emitter<VerifyOtpState> emit) async {
    emit(const VerifyOtpLoading());

    final result = await _verifyOtpUseCase.execute(event.credentials);

    await result.fold((failure) async => emit(VerifyOtpFailure(failure)), (response) async {
      if (response.isSuccess) {
        // User is now verified, update auth status to authenticated
        await _updateAuthStatusUseCase.execute((status: AuthStatus.authenticated, userId: null));
      }

      emit(VerifyOtpSuccess(response));
    });
  }
}
