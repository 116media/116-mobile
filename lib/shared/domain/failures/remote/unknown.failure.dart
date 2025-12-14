import 'package:http_status/http_status.dart' show HttpStatusCode;
import '../../../../i18n/strings.g.dart' show t;
import 'server.failure.dart' show ServerFailure;

/// Failure for unknown or unexpected errors.
///
/// Represents errors that don't match any specific error type or
/// when error details cannot be properly parsed from the response.
class UnknownFailure extends ServerFailure {
  UnknownFailure({super.instance, super.traceId, super.timestamp})
    : super(
        title: "UnknownException",
        detail: t.shared.errors.unknown,
        status: HttpStatusCode.internalServerError,
      );
}
