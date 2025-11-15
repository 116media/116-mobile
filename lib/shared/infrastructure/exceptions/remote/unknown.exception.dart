import 'package:http_status/http_status.dart' show HttpStatusCode;
import 'server.exception.dart' show ServerException;

class UnknownException extends ServerException {
  UnknownException({super.instance, super.traceId, super.timestamp})
    : super(
        title: "UnknownException",
        detail: "Something went wrong. Please try again later.",
        status: HttpStatusCode.internalServerError,
      );
}
