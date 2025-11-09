import 'dart:async' show StreamSubscription;

import 'package:flutter_bloc/flutter_bloc.dart' show Bloc, Emitter;

import '../../application/usecases/connectivity.watch.usecase.dart' show ConnectivityWatchUseCase;
import 'connectivity.event.dart'
    show ConnectivityEvent, ConnectivityWatchStarted, ConnectivityStatusChanged;
import 'connectivity.state.dart'
    show
        ConnectivityState,
        ConnectivityInitial,
        ConnectivityConnected,
        ConnectivityDisconnected,
        ConnectivityRestored;

/// BLoC for handling network connectivity status.
///
/// Manages connectivity state and watches for connectivity changes.
/// Emits different states (connected, disconnected, restored) based on
/// network status. The restored state is emitted when connection comes
/// back after being disconnected.
class ConnectivityBloc extends Bloc<ConnectivityEvent, ConnectivityState> {
  final ConnectivityWatchUseCase _connectivityWatchUseCase;
  StreamSubscription? _connectivitySubscription;
  bool _wasDisconnected = false;

  ConnectivityBloc(this._connectivityWatchUseCase) : super(const ConnectivityInitial()) {
    on<ConnectivityWatchStarted>(_onWatchStarted);
    on<ConnectivityStatusChanged>(_onStatusChanged);
  }

  /// Handles the [ConnectivityWatchStarted] event.
  ///
  /// Subscribes to the connectivity status stream from the use case.
  /// Cancels any existing subscription before creating a new one to prevent
  /// memory leaks. Each status change from the stream triggers a
  /// [ConnectivityStatusChanged] event.
  Future<void> _onWatchStarted(
    ConnectivityWatchStarted event,
    Emitter<ConnectivityState> emit,
  ) async {
    await _connectivitySubscription?.cancel();

    _connectivitySubscription = _connectivityWatchUseCase.execute().listen((status) {
      add(ConnectivityStatusChanged(status.isConnected));
    });
  }

  /// Handles the [ConnectivityStatusChanged] event.
  ///
  /// Emits appropriate states based on the connection status:
  /// - [ConnectivityDisconnected]: When internet connection is lost
  /// - [ConnectivityRestored]: When connection is regained after being lost
  /// - [ConnectivityConnected]: When initially connected
  ///
  /// Uses [_wasDisconnected] flag to distinguish between initial connection
  /// and reconnection, enabling different UI feedback for each scenario.
  Future<void> _onStatusChanged(
    ConnectivityStatusChanged event,
    Emitter<ConnectivityState> emit,
  ) async {
    // Handle disconnection
    if (!event.isConnected) {
      _wasDisconnected = true;
      emit(const ConnectivityDisconnected());
      return;
    }

    // Handle reconnection after being disconnected
    if (_wasDisconnected) {
      _wasDisconnected = false;
      emit(const ConnectivityRestored());
      return;
    }

    // Handle initial connection
    emit(const ConnectivityConnected());
  }

  @override
  Future<void> close() {
    _connectivitySubscription?.cancel();
    return super.close();
  }
}
