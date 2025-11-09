import 'package:equatable/equatable.dart' show Equatable;

/// Domain entity representing network connectivity status.
///
/// Contains information about whether the device is connected to the internet.
/// Part of the domain layer in Clean Architecture.
class ConnectivityStatusEntity extends Equatable {
  final bool isConnected;

  const ConnectivityStatusEntity({required this.isConnected});

  @override
  List<Object?> get props => [isConnected];
}
