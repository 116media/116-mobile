import 'package:http_status/http_status.dart' show HttpStatusCode;
import '../../../../shared/infrastructure/annotations/problem.mappable.annotation.dart'
    show ProblemMappable;
import '../../../../shared/domain/failures/remote/server.failure.dart' show ServerFailure;

/// Failure for 403 User Not Logged In errors.
///
/// Represents failures when operation requires authenticated user.
@ProblemMappable.remote('UserNotLoggedInFailure')
class UserNotLoggedInFailure extends ServerFailure {
  const UserNotLoggedInFailure({
    required super.type,
    required super.title,
    required super.message,
    super.instance,
    super.extensions,
  }) : super(statusCode: HttpStatusCode.forbidden);
}
