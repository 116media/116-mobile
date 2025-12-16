import 'dart:io' show File;
import 'package:path/path.dart' as path;

import 'package:http/http.dart' show MultipartFile;
import 'package:chopper/chopper.dart' show Response;

import '../../../../api/client/api_116.swagger.dart'
    show
        Api116,
        PublicUpdateOwnProfileRequest,
        PublicUpdateOwnProfileResponse,
        PublicUpdateAvatarResponse,
        PublicChangePasswordResponse,
        PublicChangePasswordRequest;
import '../../../../shared/infrastructure/exceptions/remote/server.exception.dart'
    show ServerException;
import '../../../../shared/infrastructure/exceptions/remote/unknown.exception.dart'
    show UnknownException;
import '../../../../shared/infrastructure/mappers/problem.mapper.dart' show ProblemMapper;
import '../../application/data-sources/settings.remote.datasource.port.dart'
    show ISettingsRemoteDataSource;
import '../../presentation/models/changepassword.credentials.model.dart'
    show ChangePasswordCredentialsModel;
import '../../presentation/models/profile.model.dart' show ProfileModel;

/// Implementation of [ISettingsRemoteDataSource] for settings operations via REST API.
///
/// Handles communication with the backend profile endpoints using the
/// generated [Api116] client. Converts HTTP error responses to typed exceptions
/// using [ProblemMapper]. Network errors (SocketException, timeouts, etc.) are
/// caught and converted to [UnknownException].
class SettingsRemoteDataSource implements ISettingsRemoteDataSource {
  final Api116 _apiClient;

  const SettingsRemoteDataSource(this._apiClient);

  @override
  Future<PublicUpdateOwnProfileResponse> updateProfile(ProfileModel model) async {
    try {
      final response = await _apiClient.PublicUpdateOwnProfile(
        body: PublicUpdateOwnProfileRequest(
          email: model.email,
          userName: model.userName,
          countryName: model.countryName,
          countryFlagUrl: model.countryFlagUrl,
          countryIsoCode: model.countryIsoCode,
          countryDialCode: model.countryDialCode,
          partialPhoneNumber: model.partialPhoneNumber,
        ),
      );

      if (response.isSuccessful) {
        return response.body!;
      } else {
        throw ProblemMapper.toException(response as Response);
      }
    } on ServerException {
      rethrow;
    } catch (_) {
      throw UnknownException();
    }
  }

  @override
  Future<PublicUpdateAvatarResponse> updateAvatar(File avatarFile) async {
    try {
      final filename = path.basename(avatarFile.path);

      final response = await _apiClient.PublicUpdateAvatar(
        avatarFile: await MultipartFile.fromPath("avatarFile", avatarFile.path, filename: filename),
      );

      if (response.isSuccessful) {
        return response.body!;
      } else {
        throw ProblemMapper.toException(response as Response);
      }
    } on ServerException {
      rethrow;
    } catch (_) {
      throw UnknownException();
    }
  }

  @override
  Future<PublicChangePasswordResponse> changePassword(ChangePasswordCredentialsModel model) async {
    try {
      final response = await _apiClient.PublicChangePassword(
        body: PublicChangePasswordRequest(
          oldPassword: model.oldPassword,
          newPassword: model.newPassword,
        ),
      );

      if (response.isSuccessful) {
        return response.body!;
      } else {
        throw ProblemMapper.toException(response as Response);
      }
    } on ServerException {
      rethrow;
    } catch (_) {
      throw UnknownException();
    }
  }
}
