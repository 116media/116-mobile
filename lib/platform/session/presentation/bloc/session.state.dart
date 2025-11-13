import 'package:equatable/equatable.dart' show Equatable;

import '../../../../shared/domain/failures/failure.dart' show Failure;
import '../../domain/entities/session.state.entity.dart' show SessionStateEntity;

/// Base class for all session states.
abstract class SessionState extends Equatable {
  const SessionState();

  @override
  List<Object?> get props => [];
}

/// Initial state before session is loaded.
class SessionInitial extends SessionState {
  const SessionInitial();
}

/// State when session is being loaded.
class SessionLoading extends SessionState {
  const SessionLoading();
}

/// State when session is successfully loaded.
class SessionSuccess extends SessionState {
  final SessionStateEntity sessionState;

  const SessionSuccess(this.sessionState);

  @override
  List<Object?> get props => [sessionState];
}

/// State when session operation fails.
class SessionFailure extends SessionState {
  final Failure failure;

  const SessionFailure(this.failure);

  @override
  List<Object?> get props => [failure];
}