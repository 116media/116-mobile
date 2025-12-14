import 'dart:async' show StreamSubscription;

import 'package:flutter_bloc/flutter_bloc.dart' show Bloc, Emitter;

import '../../application/usecases/get.session.state.usecase.dart' show GetSessionStateUseCase;
import '../../application/usecases/watch.session.state.usecase.dart' show WatchSessionStateUseCase;
import 'session.event.dart' show SessionEvent, SessionLoadStarted, SessionStateChanged;
import 'session.state.dart'
    show SessionState, SessionInitial, SessionLoading, SessionSuccess, SessionFailure;

/// BLoC for managing session state.
///
/// Loads and watches session state changes. This is a read-only BLoC -
/// updates to session state (onboarding, preferences, auth) are done
/// by their respective feature BLoCs using session use cases.
class SessionBloc extends Bloc<SessionEvent, SessionState> {
  final GetSessionStateUseCase _getSessionStateUseCase;
  final WatchSessionStateUseCase _watchSessionStateUseCase;
  StreamSubscription? _sessionSubscription;

  SessionBloc(this._getSessionStateUseCase, this._watchSessionStateUseCase)
    : super(const SessionInitial()) {
    on<SessionLoadStarted>(_onLoadStarted);
    on<SessionStateChanged>(_onStateChanged);
  }

  /// Handles the [SessionLoadStarted] event.
  ///
  /// Loads the current session state and subscribes to session changes.
  /// Emits [SessionLoading] while loading, then [SessionSuccess] or
  /// [SessionFailure] based on the result.
  Future<void> _onLoadStarted(SessionLoadStarted event, Emitter<SessionState> emit) async {
    emit(const SessionLoading());

    // Load current session state
    final result = await _getSessionStateUseCase.execute(null);

    result.fold((failure) => emit(SessionFailure(failure)), (sessionState) {
      emit(SessionSuccess(sessionState));

      // Subscribe to session changes
      _sessionSubscription?.cancel();
      _sessionSubscription = _watchSessionStateUseCase.execute().listen((updatedState) {
        add(SessionStateChanged(updatedState));
      });
    });
  }

  /// Handles the [SessionStateChanged] event.
  ///
  /// Emits [SessionSuccess] with the updated session state.
  /// This event is triggered internally when the session state
  /// changes (e.g., after completing onboarding or logging in).
  Future<void> _onStateChanged(SessionStateChanged event, Emitter<SessionState> emit) async {
    emit(SessionSuccess(event.sessionState));
  }

  @override
  Future<void> close() {
    _sessionSubscription?.cancel();
    return super.close();
  }
}
