import 'package:equatable/equatable.dart' show Equatable;

import '../../../../shared/domain/failures/failure.dart' show Failure;
import '../../domain/entities/country/country.entity.dart' show CountryEntity;

/// Base class for all country states.
abstract class CountryState extends Equatable {
  const CountryState();

  @override
  List<Object?> get props => [];
}

/// Initial state before country data is loaded.
class CountryInitial extends CountryState {
  const CountryInitial();
}

/// State when country data is being loaded.
class CountryLoading extends CountryState {
  const CountryLoading();
}

/// State when country data is successfully loaded.
class CountrySuccess extends CountryState {
  final CountryEntity? country;

  const CountrySuccess(this.country);

  @override
  List<Object?> get props => [country];
}

/// State when country operation fails.
class CountryFailure extends CountryState {
  final Failure failure;

  const CountryFailure(this.failure);

  @override
  List<Object?> get props => [failure];
}
