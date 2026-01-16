import 'dart:async' show FutureOr;

import 'package:chopper/chopper.dart' show Chain, Interceptor, Response;
import 'package:get_it/get_it.dart' show GetIt;
import 'package:http_status/http_status.dart' show HttpStatusCode;

import '../../../platform/session/presentation/bloc/session.bloc.dart' show SessionBloc;
import '../../../platform/session/presentation/bloc/session.event.dart'
    show SessionExpiredTriggered;
import '../exceptions/constants/exception.constants.dart' show kRefreshTokenExpiryException;
import '../mappers/problem.mapper.dart' show ProblemMapper;

/// Interceptor that handles expired refresh tokens.
///
/// When a `403 Forbidden` response with `RefreshTokenExpiryException`
/// is detected, all session data is cleared locally and the response
/// is returned (triggering router redirect to login).
class RefreshTokenExpiryInterceptor implements Interceptor {
  final GetIt sl;

  RefreshTokenExpiryInterceptor(this.sl);

  @override
  FutureOr<Response<BodyType>> intercept<BodyType>(Chain<BodyType> chain) async {
    final response = await chain.proceed(chain.request);

    if (!_isRefreshTokenExpired(response)) return response;

    sl<SessionBloc>().add(const SessionExpiredTriggered());

    return response;
  }

  bool _isRefreshTokenExpired<BodyType>(Response<BodyType> response) {
    if (response.statusCode != HttpStatusCode.forbidden) {
      return false;
    }

    try {
      final exception = ProblemMapper.toException(response);
      return exception.title == kRefreshTokenExpiryException;
    } catch (_) {
      return false;
    }
  }
}
