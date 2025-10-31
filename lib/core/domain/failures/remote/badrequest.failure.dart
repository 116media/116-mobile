import 'package:http_status/http_status.dart' show HttpStatusCode;
import 'server.failure.dart' show ServerFailure;
import '../../../infrastructure/annotations/problem.mappable.annotation.dart';

/// Failure for 400 Bad Request errors.
///
/// Represents validation errors or malformed request data from the API.
@ProblemMappable.remote('BadRequestFailure')
class BadRequestFailure extends ServerFailure {
  const BadRequestFailure({
    required super.type,
    required super.title,
    required super.message,
    super.instance,
    super.extensions,
  }) : super(statusCode: HttpStatusCode.badRequest);
}
