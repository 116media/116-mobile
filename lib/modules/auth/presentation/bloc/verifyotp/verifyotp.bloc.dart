import 'package:flutter_bloc/flutter_bloc.dart' show Bloc, Emitter;

import '../../../../../shared/domain/failures/failure.dart' show Failure;
import '../../../application/usecases/verifyotp.usecase.dart' show VerifyOtpUseCase;
import '../../../domain/entities/verifyotp-response/verifyotp.response.entity.dart'
    show VerifyOtpResponseEntity;
import 'verifyotp.event.dart' show VerifyOtpEvent, VerifyOtpSubmitted;
import 'verifyotp.state.dart'
    show VerifyOtpState, VerifyOtpInitial, VerifyOtpLoading, VerifyOtpSuccess, VerifyOtpFailure;

/// BLoC for handling OTP verification flow.
///
/// Manages OTP verification state and coordinates with VerifyOtpUseCase to
/// verify user email. Emits different states based on the verification
/// result (loading, success, failure).
class VerifyOtpBloc extends Bloc<VerifyOtpEvent, VerifyOtpState> {
  final VerifyOtpUseCase _verifyOtpUseCase;

  VerifyOtpBloc(this._verifyOtpUseCase) : super(const VerifyOtpInitial()) {
    on<VerifyOtpSubmitted>(_onVerifyOtpSubmitted);
  }

  Future<void> _onVerifyOtpSubmitted(VerifyOtpSubmitted event, Emitter<VerifyOtpState> emit) async {
    emit(const VerifyOtpLoading());

    final result = await _verifyOtpUseCase.execute(event.credentials);

    result.fold(
      (Failure failure) => emit(VerifyOtpFailure(failure)),
      (VerifyOtpResponseEntity response) => emit(VerifyOtpSuccess(response)),
    );
  }
}
