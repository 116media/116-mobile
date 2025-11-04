import 'package:http_status/http_status.dart' show HttpStatusCode;
import '../../../../core/infrastructure/annotations/problem.mappable.annotation.dart'
    show ProblemMappable;
import '../../../../core/domain/failures/remote/server.failure.dart' show ServerFailure;

/// Failure for 403 Access Denied errors.
///
/// Represents authorization failures when user lacks permissions.
@ProblemMappable.remote('AccessDeniedFailure')
class AccessDeniedFailure extends ServerFailure {
  const AccessDeniedFailure({
    required super.type,
    required super.title,
    required super.message,
    super.instance,
    super.extensions,
  }) : super(statusCode: HttpStatusCode.forbidden);
}
