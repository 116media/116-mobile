import 'package:http_status/http_status.dart' show HttpStatusCode;
import '../../../../i18n/strings.g.dart' show t;
import 'server.exception.dart' show ServerException;

class UnknownException extends ServerException {
  UnknownException({super.instance, super.traceId, super.timestamp})
    : super(
        title: "UnknownException",
        detail: t.shared.errors.unknown,
        status: HttpStatusCode.internalServerError,
      );
}
