import 'package:flutter_bloc/flutter_bloc.dart' show Bloc, Emitter;

import '../../../application/usecases/resendotp.usecase.dart' show ResendOtpUseCase;
import 'resendotp.event.dart' show ResendOtpEvent, ResendOtpRequested;
import 'resendotp.state.dart'
    show ResendOtpState, ResendOtpInitial, ResendOtpLoading, ResendOtpSuccess, ResendOtpFailure;

/// BLoC for handling OTP resend operations across all OTP flows.
///
/// This bloc is reusable across different OTP purposes:
/// - Email verification
/// - Password reset
/// - Two-factor authentication
/// - Account recovery
///
/// Manages resend OTP state and coordinates with ResendOtpUseCase.
/// Emits different states based on the operation result (loading, success, failure).
class ResendOtpBloc extends Bloc<ResendOtpEvent, ResendOtpState> {
  final ResendOtpUseCase _resendOtpUseCase;

  ResendOtpBloc(this._resendOtpUseCase) : super(const ResendOtpInitial()) {
    on<ResendOtpRequested>(_onResendOtpRequested);
  }

  Future<void> _onResendOtpRequested(ResendOtpRequested event, Emitter<ResendOtpState> emit) async {
    emit(const ResendOtpLoading());

    final result = await _resendOtpUseCase.execute(event.credentials);

    result.fold(
      (failure) => emit(ResendOtpFailure(failure)),
      (response) => emit(ResendOtpSuccess(response)),
    );
  }
}
