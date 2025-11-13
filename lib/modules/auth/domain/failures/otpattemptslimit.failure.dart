import 'package:http_status/http_status.dart' show HttpStatusCode;
import '../../../../shared/infrastructure/annotations/problem.mappable.annotation.dart'
    show ProblemMappable;
import '../../../../shared/domain/failures/remote/server.failure.dart' show ServerFailure;

/// Failure for 429 OTP Attempts Limit errors.
///
/// Represents failures when user exceeds OTP verification attempts.
@ProblemMappable.remote('OtpAttemptsLimitFailure')
class OtpAttemptsLimitFailure extends ServerFailure {
  const OtpAttemptsLimitFailure({
    required super.type,
    required super.title,
    required super.message,
    super.instance,
    super.extensions,
  }) : super(statusCode: HttpStatusCode.tooManyRequests);
}
