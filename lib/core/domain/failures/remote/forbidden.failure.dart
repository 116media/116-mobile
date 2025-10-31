import 'package:http_status/http_status.dart';
import 'server.failure.dart';
import '../../../infrastructure/annotations/problem.mappable.annotation.dart';

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
