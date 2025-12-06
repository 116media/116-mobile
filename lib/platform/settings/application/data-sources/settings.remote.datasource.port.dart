import '../../../../api/client/api_116.swagger.dart'
    show PublicUpdateOwnProfileResponse, PublicUpdateAvatarResponse;
import '../../presentation/models/profile.model.dart' show ProfileModel;

/// Port interface for remote settings data source.
///
/// Defines contract for making authenticated API calls to update user profile.
/// Implementations should handle API communication and error transformation.
///
/// **Exception Handling:**
/// All methods may throw:
/// - [ServerException] if the server returns an error response
/// - [UnknownException] if network is unreachable or other unexpected errors occur
abstract class ISettingsRemoteDataSource {
  /// Updates the authenticated user's profile information.
  ///
  /// Calls the PublicUpdateOwnProfile API endpoint with the provided profile data.
  /// Requires valid JWT token for authentication.
  ///
  /// **Returns:** [PublicUpdateOwnProfileResponse] containing updated user data on success.
  ///
  /// **Throws:**
  /// - [ServerException] if the server returns an error response
  /// - [UnknownException] if network is unreachable or other unexpected errors occur
  Future<PublicUpdateOwnProfileResponse> updateProfile(ProfileModel profile);

  /// Updates the authenticated user's avatar.
  ///
  /// Calls the PublicUpdateAvatar API endpoint with the provided avatar URL.
  /// Requires valid JWT token for authentication.
  ///
  /// **Parameters:**
  /// - [avatarUrl]: The Cloudinary secure URL of the uploaded avatar image
  ///
  /// **Returns:** [PublicUpdateAvatarResponse] containing updated user data on success.
  ///
  /// **Throws:**
  /// - [ServerException] if the server returns an error response
  /// - [UnknownException] if network is unreachable or other unexpected errors occur
  Future<PublicUpdateAvatarResponse> updateAvatar(String avatarUrl);
}
