import 'package:flutter_bloc/flutter_bloc.dart' show Bloc, Emitter;

import '../../../application/usecases/changepassword.usecase.dart' show ChangePasswordUseCase;
import 'changepassword.event.dart' show ChangePasswordEvent, ChangePasswordSubmitted;
import 'changepassword.state.dart'
    show
        ChangePasswordState,
        ChangePasswordInitial,
        ChangePasswordLoading,
        ChangePasswordSuccess,
        ChangePasswordFailure;

/// BLoC for handling password change flow.
///
/// Manages password change state and coordinates with ChangePasswordUseCase to
/// update user password. Emits different states based on the change result
/// (loading, success, failure).
class ChangePasswordBloc extends Bloc<ChangePasswordEvent, ChangePasswordState> {
  final ChangePasswordUseCase _changePasswordUseCase;

  ChangePasswordBloc(this._changePasswordUseCase) : super(const ChangePasswordInitial()) {
    on<ChangePasswordSubmitted>(_onChangePasswordSubmitted);
  }

  Future<void> _onChangePasswordSubmitted(
    ChangePasswordSubmitted event,
    Emitter<ChangePasswordState> emit,
  ) async {
    emit(const ChangePasswordLoading());

    final result = await _changePasswordUseCase.execute(event.credentials);

    result.fold(
      (failure) => emit(ChangePasswordFailure(failure)),
      (response) => emit(ChangePasswordSuccess(response)),
    );
  }
}
