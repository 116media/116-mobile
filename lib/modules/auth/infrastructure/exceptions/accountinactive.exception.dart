import 'package:http_status/http_status.dart' show HttpStatusCode;
import '../../../../core/infrastructure/annotations/problem.mappable.annotation.dart'
    show ProblemMappable;
import '../../../../core/infrastructure/exceptions/remote/server.exception.dart'
    show ServerException;

/// 423 Account Inactive exception.
///
/// Thrown when the user account is inactive/locked and cannot
/// perform authentication or other operations.
@ProblemMappable.remote('AccountInactiveException')
class AccountInactiveException extends ServerException {
  AccountInactiveException({
    required super.type,
    required super.title,
    required super.detail,
    super.instance,
    super.extensions,
  }) : super(status: HttpStatusCode.locked);
}
