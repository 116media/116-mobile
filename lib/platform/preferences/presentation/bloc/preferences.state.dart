import 'package:equatable/equatable.dart' show Equatable;

import '../../../../shared/domain/failures/failure.dart' show Failure;
import '../../domain/entities/user.preferences.entity.dart' show UserPreferencesEntity;

/// Base class for all preferences states.
abstract class PreferencesState extends Equatable {
  const PreferencesState();

  @override
  List<Object?> get props => [];
}

/// Initial state before preferences are loaded.
class PreferencesInitial extends PreferencesState {
  const PreferencesInitial();
}

/// State when preferences are being loaded.
class PreferencesLoading extends PreferencesState {
  const PreferencesLoading();
}

/// State when preferences are successfully loaded.
class PreferencesSuccess extends PreferencesState {
  final UserPreferencesEntity preferences;

  const PreferencesSuccess(this.preferences);

  @override
  List<Object?> get props => [preferences];
}

/// State when preferences operation fails.
class PreferencesFailure extends PreferencesState {
  final Failure failure;

  const PreferencesFailure(this.failure);

  @override
  List<Object?> get props => [failure];
}