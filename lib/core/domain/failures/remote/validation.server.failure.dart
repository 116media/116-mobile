import 'package:http_status/http_status.dart' show HttpStatusCode;
import 'server.failure.dart' show ServerFailure;
import '../../../infrastructure/annotations/problem.mappable.annotation.dart' show ProblemMappable;

/// Failure for 400 Validation errors.
///
/// Represents FluentValidation errors with detailed field-level validation information.
@ProblemMappable.remote('ValidationFailure')
class ValidationFailure extends ServerFailure {
  const ValidationFailure({
    required super.type,
    required super.title,
    required super.message,
    super.instance,
    super.extensions,
  }) : super(statusCode: HttpStatusCode.badRequest);
}
