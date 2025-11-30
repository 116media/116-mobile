import 'package:flutter_bloc/flutter_bloc.dart' show Bloc, Emitter;

import '../../../application/usecases/updateprofile.usecase.dart' show UpdateProfileUseCase;
import 'updateprofile.event.dart'
    show UpdateProfileEvent, UpdateProfileSubmitted;
import 'updateprofile.state.dart'
    show
        UpdateProfileState,
        UpdateProfileInitial,
        UpdateProfileLoading,
        UpdateProfileSuccess,
        UpdateProfileFailure;

/// BLoC for handling profile update flow.
///
/// Manages profile update state and coordinates with UpdateProfileUseCase to
/// update user profile information. Emits different states based on the update result
/// (loading, success, failure).
class UpdateProfileBloc extends Bloc<UpdateProfileEvent, UpdateProfileState> {
  final UpdateProfileUseCase _updateProfileUseCase;

  UpdateProfileBloc(this._updateProfileUseCase) : super(const UpdateProfileInitial()) {
    on<UpdateProfileSubmitted>(_onUpdateProfileSubmitted);
  }

  Future<void> _onUpdateProfileSubmitted(
    UpdateProfileSubmitted event,
    Emitter<UpdateProfileState> emit,
  ) async {
    emit(const UpdateProfileLoading());

    final result = await _updateProfileUseCase.execute(event.profile);

    result.fold(
      (failure) => emit(UpdateProfileFailure(failure)),
      (response) => emit(UpdateProfileSuccess(response)),
    );
  }
}
