import 'package:equatable/equatable.dart' show Equatable;

/// Base class for all connectivity events.
abstract class ConnectivityEvent extends Equatable {
  const ConnectivityEvent();

  @override
  List<Object?> get props => [];
}

/// Event to start watching connectivity status.
class ConnectivityWatchStarted extends ConnectivityEvent {
  const ConnectivityWatchStarted();
}

/// Event triggered when connectivity status changes.
class ConnectivityStatusChanged extends ConnectivityEvent {
  final bool isConnected;

  const ConnectivityStatusChanged(this.isConnected);

  @override
  List<Object?> get props => [isConnected];
}
