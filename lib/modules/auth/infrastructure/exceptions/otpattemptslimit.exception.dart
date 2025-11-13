import 'package:http_status/http_status.dart' show HttpStatusCode;
import '../../../../shared/infrastructure/annotations/problem.mappable.annotation.dart'
    show ProblemMappable;
import '../../../../shared/infrastructure/exceptions/remote/server.exception.dart'
    show ServerException;

/// 429 OTP Attempts Limit exception.
///
/// Thrown when the user has exceeded the maximum number of OTP
/// verification attempts.
@ProblemMappable.remote('OtpAttemptsLimitException')
class OtpAttemptsLimitException extends ServerException {
  OtpAttemptsLimitException({
    required super.type,
    required super.title,
    required super.detail,
    super.instance,
    super.extensions,
  }) : super(status: HttpStatusCode.tooManyRequests);
}
