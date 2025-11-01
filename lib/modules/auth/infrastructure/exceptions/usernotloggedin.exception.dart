import 'package:http_status/http_status.dart' show HttpStatusCode;
import '../../../../core/infrastructure/annotations/problem.mappable.annotation.dart'
    show ProblemMappable;
import '../../../../core/infrastructure/exceptions/remote/server.exception.dart'
    show ServerException;

/// 403 User Not Logged In exception.
///
/// Thrown when an operation requires the user to be logged in
/// but the user is not currently authenticated.
@ProblemMappable.remote('UserNotLoggedInException')
class UserNotLoggedInException extends ServerException {
  UserNotLoggedInException({
    required super.type,
    required super.title,
    required super.detail,
    super.instance,
    super.extensions,
  }) : super(status: HttpStatusCode.forbidden);
}
