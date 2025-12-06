import 'package:flutter_bloc/flutter_bloc.dart' show Bloc, Emitter;

import '../../../application/usecases/updateavatar.usecase.dart' show UpdateAvatarUseCase;
import 'updateavatar.event.dart' show UpdateAvatarEvent, UpdateAvatarSubmitted;
import 'updateavatar.state.dart'
    show
        UpdateAvatarState,
        UpdateAvatarInitial,
        UpdateAvatarLoading,
        UpdateAvatarSuccess,
        UpdateAvatarFailure;

/// BLoC for handling avatar update flow.
///
/// Manages avatar update state and coordinates with UpdateAvatarUseCase to
/// upload image to Cloudinary and update user avatar via API. Emits different
/// states based on the update result (loading, success, failure).
class UpdateAvatarBloc extends Bloc<UpdateAvatarEvent, UpdateAvatarState> {
  final UpdateAvatarUseCase _updateAvatarUseCase;

  UpdateAvatarBloc(this._updateAvatarUseCase) : super(const UpdateAvatarInitial()) {
    on<UpdateAvatarSubmitted>(_onUpdateAvatarSubmitted);
  }

  Future<void> _onUpdateAvatarSubmitted(
    UpdateAvatarSubmitted event,
    Emitter<UpdateAvatarState> emit,
  ) async {
    emit(const UpdateAvatarLoading());

    final result = await _updateAvatarUseCase.execute(event.avatarFile);

    result.fold(
      (failure) => emit(UpdateAvatarFailure(failure)),
      (response) => emit(UpdateAvatarSuccess(response)),
    );
  }
}
