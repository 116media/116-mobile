import 'dart:async' show StreamSubscription;

import 'package:flutter_bloc/flutter_bloc.dart' show Bloc, Emitter;

import '../../application/usecases/get.country.usecase.dart' show GetCountryUseCase;
import '../../application/usecases/watch.country.usecase.dart' show WatchCountryUseCase;
import 'country.event.dart' show CountryEvent, CountryLoadStarted, CountryStateChanged;
import 'country.state.dart'
    show CountryState, CountryInitial, CountryLoading, CountrySuccess, CountryFailure;

/// BLoC for managing country data.
///
/// Handles loading and watching country information from local storage.
/// Emits updated states when country data changes.
class CountryBloc extends Bloc<CountryEvent, CountryState> {
  final GetCountryUseCase _getCountryUseCase;
  final WatchCountryUseCase _watchCountryUseCase;
  StreamSubscription? _countrySubscription;

  CountryBloc(
    this._getCountryUseCase,
    this._watchCountryUseCase,
  ) : super(const CountryInitial()) {
    on<CountryLoadStarted>(_onLoadStarted);
    on<CountryStateChanged>(_onStateChanged);
  }

  /// Handles the [CountryLoadStarted] event.
  ///
  /// Loads current country data and subscribes to changes.
  /// Emits [CountryLoading] while loading, then [CountrySuccess]
  /// or [CountryFailure] based on the result.
  Future<void> _onLoadStarted(CountryLoadStarted event, Emitter<CountryState> emit) async {
    emit(const CountryLoading());

    // Load current country data
    final result = await _getCountryUseCase.execute(null);

    result.fold((failure) => emit(CountryFailure(failure)), (country) {
      emit(CountrySuccess(country));

      // Subscribe to country data changes
      _countrySubscription?.cancel();
      _countrySubscription = _watchCountryUseCase.execute().listen((updatedCountry) {
        add(CountryStateChanged(updatedCountry));
      });
    });
  }

  /// Handles the [CountryStateChanged] event.
  ///
  /// Emits [CountrySuccess] with the updated country data.
  /// This event is triggered internally when country data changes.
  Future<void> _onStateChanged(
    CountryStateChanged event,
    Emitter<CountryState> emit,
  ) async {
    emit(CountrySuccess(event.country));
  }

  @override
  Future<void> close() {
    _countrySubscription?.cancel();
    return super.close();
  }
}
