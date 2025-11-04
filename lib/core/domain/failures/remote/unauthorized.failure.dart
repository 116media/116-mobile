import 'package:http_status/http_status.dart' show HttpStatusCode;
import 'server.failure.dart' show ServerFailure;
import '../../../infrastructure/annotations/problem.mappable.annotation.dart' show ProblemMappable;

/// Failure for 401 Unauthorized errors.
///
/// Represents authentication failures (invalid/expired token).
@ProblemMappable.remote('UnauthorizedFailure')
class UnauthorizedFailure extends ServerFailure {
  const UnauthorizedFailure({
    required super.type,
    required super.title,
    required super.message,
    super.instance,
    super.extensions,
  }) : super(statusCode: HttpStatusCode.unauthorized);
}
