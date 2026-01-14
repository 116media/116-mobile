import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:http_status/http_status.dart';
import '../../../../api/client/api_116.swagger.dart' show PublicRefreshTokenResponse;
import '../../../../shared/infrastructure/constants/api.constants.dart' show kApiBaseUrl;
import '../../../../shared/infrastructure/exceptions/remote/server.exception.dart'
    show ServerException;
import '../../../../shared/infrastructure/exceptions/remote/unknown.exception.dart'
    show UnknownException;
import '../../../../shared/infrastructure/mappers/problem.mapper.dart' show ProblemMapper;
import '../../application/data-sources/session.remote.datasource.port.dart'
    show ISessionRemoteDataSource;

/// Implementation of [ISessionRemoteDataSource] for session token operations via REST API.
///
/// Handles communication with the backend session endpoints using the
/// generated [Api116] client. Converts HTTP error responses to typed exceptions
/// using [ProblemMapper]. Network errors (SocketException, timeouts, etc.) are
/// caught and converted to [UnknownException].
class SessionRemoteDataSource implements ISessionRemoteDataSource {
  const SessionRemoteDataSource();

  @override
  Future<PublicRefreshTokenResponse> refreshToken(String refreshToken) async {
    String endpoint = 'api/v1/public/sessions/refresh-token';

    try {
      final response = await http.post(
        Uri.parse('$kApiBaseUrl/$endpoint'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({'refreshToken': refreshToken}),
      );

      if (response.statusCode == HttpStatusCode.ok) {
        return PublicRefreshTokenResponse.fromJson(
          jsonDecode(response.body) as Map<String, dynamic>,
        );
      } else {
        throw ProblemMapper.toException(response as dynamic);
      }
    } on ServerException {
      rethrow;
    } catch (_) {
      throw UnknownException();
    }
  }
}
