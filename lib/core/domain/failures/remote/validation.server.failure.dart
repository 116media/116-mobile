import 'package:http_status/http_status.dart';
import 'server.failure.dart';
import '../../../infrastructure/annotations/problem.mappable.annotation.dart';

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
