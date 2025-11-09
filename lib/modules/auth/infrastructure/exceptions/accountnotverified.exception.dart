import 'package:http_status/http_status.dart' show HttpStatusCode;
import '../../../../shared/infrastructure/annotations/problem.mappable.annotation.dart'
    show ProblemMappable;
import '../../../../shared/infrastructure/exceptions/remote/server.exception.dart'
    show ServerException;

/// 403 Account Not Verified exception.
///
/// Thrown when the user account exists but has not been verified
/// (e.g., email verification pending).
@ProblemMappable.remote('AccountNotVerifiedException')
class AccountNotVerifiedException extends ServerException {
  AccountNotVerifiedException({
    required super.type,
    required super.title,
    required super.detail,
    super.instance,
    super.extensions,
  }) : super(status: HttpStatusCode.forbidden);
}
