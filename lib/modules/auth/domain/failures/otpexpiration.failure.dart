import 'package:http_status/http_status.dart' show HttpStatusCode;
import '../../../../shared/infrastructure/annotations/problem.mappable.annotation.dart'
    show ProblemMappable;
import '../../../../shared/domain/failures/remote/server.failure.dart' show ServerFailure;

/// Failure for 410 OTP Expiration errors.
///
/// Represents failures when OTP has expired.
@ProblemMappable.remote('OtpExpirationFailure')
class OtpExpirationFailure extends ServerFailure {
  const OtpExpirationFailure({
    required super.type,
    required super.title,
    required super.message,
    super.instance,
    super.extensions,
  }) : super(statusCode: HttpStatusCode.gone);
}
