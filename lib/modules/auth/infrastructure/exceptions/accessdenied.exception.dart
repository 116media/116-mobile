import 'package:http_status/http_status.dart' show HttpStatusCode;
import '../../../../shared/infrastructure/annotations/problem.mappable.annotation.dart'
    show ProblemMappable;
import '../../../../shared/infrastructure/exceptions/remote/server.exception.dart'
    show ServerException;

/// 403 Access Denied exception.
///
/// Thrown when the authenticated user lacks sufficient permissions
/// for the requested resource in the auth module.
@ProblemMappable.remote('AccessDeniedException')
class AccessDeniedException extends ServerException {
  AccessDeniedException({
    required super.type,
    required super.title,
    required super.detail,
    super.instance,
    super.extensions,
  }) : super(status: HttpStatusCode.forbidden);
}
