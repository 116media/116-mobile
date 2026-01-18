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

/// Event triggered when refresh token expires.
///
/// This event is typically triggered by the RefreshTokenExpiryInterceptor
/// when a 403 response with RefreshTokenExpiryException is received.
/// It signals that the user's session has expired and they need to re-authenticate.
class SessionExpiredTriggered extends SessionEvent {
  const SessionExpiredTriggered();
}
