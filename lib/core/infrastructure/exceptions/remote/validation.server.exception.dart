import 'package:http_status/http_status.dart' show HttpStatusCode;
import 'server.exception.dart' show ServerException;
import '../../annotations/problem.mappable.annotation.dart';

/// 400 Validation exception.
///
/// Thrown when the API returns 400 status code with validation errors
/// from FluentValidation, including detailed field-level error information.
@ProblemMappable.remote('ValidationException')
class ValidationException extends ServerException {
  ValidationException({
    required super.type,
    required super.title,
    required super.detail,
    super.instance,
    super.extensions,
  }) : super(status: HttpStatusCode.badRequest);
}
