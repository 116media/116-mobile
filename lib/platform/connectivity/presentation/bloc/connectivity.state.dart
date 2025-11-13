import 'package:equatable/equatable.dart' show Equatable;

/// Base class for all connectivity states.
abstract class ConnectivityState extends Equatable {
  const ConnectivityState();

  @override
  List<Object?> get props => [];
}

/// Initial state before connectivity check.
class ConnectivityInitial extends ConnectivityState {
  const ConnectivityInitial();
}

/// State when device is connected to internet.
class ConnectivityConnected extends ConnectivityState {
  const ConnectivityConnected();
}

/// State when device lost internet connection.
class ConnectivityDisconnected extends ConnectivityState {
  const ConnectivityDisconnected();
}

/// State when connection is restored after being disconnected.
class ConnectivityRestored extends ConnectivityState {
  const ConnectivityRestored();
}
