import 'package:equatable/equatable.dart' show Equatable;

import '../../domain/entities/country/country.entity.dart' show CountryEntity;

/// Base class for all country events.
abstract class CountryEvent extends Equatable {
  const CountryEvent();

  @override
  List<Object?> get props => [];
}

/// Event to load the current country data.
class CountryLoadStarted extends CountryEvent {
  const CountryLoadStarted();
}

/// Internal event triggered when country state changes.
class CountryStateChanged extends CountryEvent {
  final CountryEntity? country;

  const CountryStateChanged(this.country);

  @override
  List<Object?> get props => [country];
}
