import 'package:equatable/equatable.dart' show Equatable;

import '../../domain/entities/session-state/session.state.entity.dart' show SessionStateEntity;

/// Base class for all session events.
abstract class SessionEvent extends Equatable {
  const SessionEvent();

  @override
  List<Object?> get props => [];
}

/// Event to load the current session state.
class SessionLoadStarted extends SessionEvent {
  const SessionLoadStarted();
}

/// Internal event triggered when session state changes.
class SessionStateChanged extends SessionEvent {
  final SessionStateEntity sessionState;

  const SessionStateChanged(this.sessionState);

  @override
  List<Object?> get props => [sessionState];
}
