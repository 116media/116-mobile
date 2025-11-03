import 'package:http_status/http_status.dart';
import 'server.failure.dart';
import '../../../infrastructure/annotations/problem.mappable.annotation.dart';

/// Failure for 409 Conflict errors.
///
/// Represents resource conflicts (duplicates, state conflicts).
@ProblemMappable.remote('ConflictFailure')
class ConflictFailure extends ServerFailure {
  const ConflictFailure({
    required super.type,
    required super.title,
    required super.message,
    super.instance,
    super.extensions,
  }) : super(statusCode: HttpStatusCode.conflict);
}
