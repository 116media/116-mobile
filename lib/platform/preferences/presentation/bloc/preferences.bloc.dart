import 'dart:async' show StreamSubscription;

import 'package:flutter_bloc/flutter_bloc.dart' show Bloc, Emitter;

import '../../application/usecases/get.preferences.usecase.dart' show GetPreferencesUseCase;
import '../../application/usecases/update.language.usecase.dart' show UpdateLanguageUseCase;
import '../../application/usecases/update.theme.mode.usecase.dart' show UpdateThemeModeUseCase;
import '../../application/usecases/watch.preferences.usecase.dart' show WatchPreferencesUseCase;
import 'preferences.event.dart'
    show
        PreferencesEvent,
        PreferencesLoadStarted,
        PreferencesLanguageChanged,
        PreferencesThemeModeChanged,
        PreferencesStateChanged;
import 'preferences.state.dart'
    show
        PreferencesState,
        PreferencesInitial,
        PreferencesLoading,
        PreferencesSuccess,
        PreferencesFailure;

/// BLoC for managing user preferences.
///
/// Handles loading, watching, and updating language and theme preferences.
/// Emits updated states when preferences change.
class PreferencesBloc extends Bloc<PreferencesEvent, PreferencesState> {
  final GetPreferencesUseCase _getPreferencesUseCase;
  final UpdateLanguageUseCase _updateLanguageUseCase;
  final UpdateThemeModeUseCase _updateThemeModeUseCase;
  final WatchPreferencesUseCase _watchPreferencesUseCase;
  StreamSubscription? _preferencesSubscription;

  PreferencesBloc(
    this._getPreferencesUseCase,
    this._updateLanguageUseCase,
    this._updateThemeModeUseCase,
    this._watchPreferencesUseCase,
  ) : super(const PreferencesInitial()) {
    on<PreferencesLoadStarted>(_onLoadStarted);
    on<PreferencesLanguageChanged>(_onLanguageChanged);
    on<PreferencesThemeModeChanged>(_onThemeModeChanged);
    on<PreferencesStateChanged>(_onStateChanged);
  }

  /// Handles the [PreferencesLoadStarted] event.
  ///
  /// Loads current preferences and subscribes to changes.
  /// Emits [PreferencesLoading] while loading, then [PreferencesSuccess]
  /// or [PreferencesFailure] based on the result.
  Future<void> _onLoadStarted(
    PreferencesLoadStarted event,
    Emitter<PreferencesState> emit,
  ) async {
    emit(const PreferencesLoading());

    // Load current preferences
    final result = await _getPreferencesUseCase.execute(null);

    result.fold(
      (failure) => emit(PreferencesFailure(failure)),
      (preferences) {
        emit(PreferencesSuccess(preferences));

        // Subscribe to preferences changes
        _preferencesSubscription?.cancel();
        _preferencesSubscription = _watchPreferencesUseCase.execute().listen(
          (updatedPreferences) {
            add(PreferencesStateChanged(updatedPreferences));
          },
        );
      },
    );
  }

  /// Handles the [PreferencesLanguageChanged] event.
  ///
  /// Updates the language preference and emits new state.
  Future<void> _onLanguageChanged(
    PreferencesLanguageChanged event,
    Emitter<PreferencesState> emit,
  ) async {
    final result = await _updateLanguageUseCase.execute(event.languageCode);

    result.fold(
      (failure) => emit(PreferencesFailure(failure)),
      (preferences) => emit(PreferencesSuccess(preferences)),
    );
  }

  /// Handles the [PreferencesThemeModeChanged] event.
  ///
  /// Updates the theme mode preference and emits new state.
  Future<void> _onThemeModeChanged(
    PreferencesThemeModeChanged event,
    Emitter<PreferencesState> emit,
  ) async {
    final result = await _updateThemeModeUseCase.execute(event.themeMode);

    result.fold(
      (failure) => emit(PreferencesFailure(failure)),
      (preferences) => emit(PreferencesSuccess(preferences)),
    );
  }

  /// Handles the [PreferencesStateChanged] event.
  ///
  /// Emits [PreferencesSuccess] with the updated preferences.
  /// This event is triggered internally when preferences change.
  Future<void> _onStateChanged(
    PreferencesStateChanged event,
    Emitter<PreferencesState> emit,
  ) async {
    emit(PreferencesSuccess(event.preferences));
  }

  @override
  Future<void> close() {
    _preferencesSubscription?.cancel();
    return super.close();
  }
}