import 'package:freezed_annotation/freezed_annotation.dart';

part 'connectivity.status.entity.freezed.dart';

/// Domain entity representing network connectivity status.
///
/// Contains information about whether the device is connected to the internet.
/// Part of the domain layer in Clean Architecture.
@freezed
abstract class ConnectivityStatusEntity with _$ConnectivityStatusEntity {
  const factory ConnectivityStatusEntity({required bool isConnected}) = _ConnectivityStatusEntity;
}
