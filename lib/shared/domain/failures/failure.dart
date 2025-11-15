import 'package:equatable/equatable.dart' show Equatable;

/// Base class for all failures in the application.
///
/// Failures represent errors that have been handled and converted
/// from exceptions at the repository layer. They are used in the
/// domain layer with `Either<Failure, T>` for functional error handling.
abstract class Failure extends Equatable {
  final String title;
  final String detail;

  const Failure({required this.title, required this.detail});

  @override
  List<Object?> get props => [title, detail];
}
