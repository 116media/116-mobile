import '../../../../api/client/api_116.swagger.dart' show PublicUpdateOwnProfileResponse;
import '../../../../modules/auth/infrastructure/mappers/auth.mapper.dart' show AuthMapper;
import '../../domain/entities/profile-response/profile.response.entity.dart'
    show ProfileResponseEntity;

/// Mapper for settings-related DTOs to Entity conversions.
///
/// Provides pure transformation functions to convert API response DTOs
/// to clean domain entities.
class SettingsMapper {
  const SettingsMapper._();

  /// Maps PublicUpdateOwnProfileResponse to ProfileResponseEntity domain entity.
  static ProfileResponseEntity profileResponseFromDto(PublicUpdateOwnProfileResponse response) {
    return ProfileResponseEntity(user: AuthMapper.userFromDto(response.user));
  }
}