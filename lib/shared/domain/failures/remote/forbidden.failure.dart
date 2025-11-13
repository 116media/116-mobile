import 'package:http_status/http_status.dart' show HttpStatusCode;
import 'server.failure.dart' show ServerFailure;
import '../../../infrastructure/annotations/problem.mappable.annotation.dart' show ProblemMappable;

/// Failure for 403 Forbidden errors.
///
/// Represents authorization failures (insufficient permissions).
@ProblemMappable.remote('ForbiddenFailure')
class ForbiddenFailure extends ServerFailure {
  const ForbiddenFailure({
    required super.type,
    required super.title,
    required super.message,
    super.instance,
    super.extensions,
  }) : super(statusCode: HttpStatusCode.forbidden);
}
