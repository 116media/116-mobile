import 'package:http_status/http_status.dart' show HttpStatusCode;
import 'server.failure.dart' show ServerFailure;
import '../../../infrastructure/annotations/problem.mappable.annotation.dart' show ProblemMappable;

/// Failure for unregistered exception types.
///
/// Represents unexpected server errors that don't match any specific failure type.
@ProblemMappable.remote('DefaultFailure')
class DefaultFailure extends ServerFailure {
  const DefaultFailure({
    required super.type,
    required super.title,
    required super.message,
    super.instance,
    super.extensions,
  }) : super(statusCode: HttpStatusCode.internalServerError);
}
