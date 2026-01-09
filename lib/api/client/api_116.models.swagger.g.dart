// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_116.models.swagger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AdminChangePasswordRequest _$AdminChangePasswordRequestFromJson(
  Map<String, dynamic> json,
) => AdminChangePasswordRequest(
  oldPassword: json['oldPassword'] as String,
  newPassword: json['newPassword'] as String,
);

Map<String, dynamic> _$AdminChangePasswordRequestToJson(
  AdminChangePasswordRequest instance,
) => <String, dynamic>{
  'oldPassword': instance.oldPassword,
  'newPassword': instance.newPassword,
};

AdminChangePasswordResponse _$AdminChangePasswordResponseFromJson(
  Map<String, dynamic> json,
) => AdminChangePasswordResponse(isSuccess: json['isSuccess'] as bool);

Map<String, dynamic> _$AdminChangePasswordResponseToJson(
  AdminChangePasswordResponse instance,
) => <String, dynamic>{'isSuccess': instance.isSuccess};

AdminCleanupExpiredSessionsResponse
_$AdminCleanupExpiredSessionsResponseFromJson(Map<String, dynamic> json) =>
    AdminCleanupExpiredSessionsResponse(
      deletedCount: (json['deletedCount'] as num).toInt(),
    );

Map<String, dynamic> _$AdminCleanupExpiredSessionsResponseToJson(
  AdminCleanupExpiredSessionsResponse instance,
) => <String, dynamic>{'deletedCount': instance.deletedCount};

AdminForceLogoutUserResponse _$AdminForceLogoutUserResponseFromJson(
  Map<String, dynamic> json,
) => AdminForceLogoutUserResponse(isSuccess: json['isSuccess'] as bool);

Map<String, dynamic> _$AdminForceLogoutUserResponseToJson(
  AdminForceLogoutUserResponse instance,
) => <String, dynamic>{'isSuccess': instance.isSuccess};

AdminForgotPasswordRequest _$AdminForgotPasswordRequestFromJson(
  Map<String, dynamic> json,
) => AdminForgotPasswordRequest(email: json['email'] as String);

Map<String, dynamic> _$AdminForgotPasswordRequestToJson(
  AdminForgotPasswordRequest instance,
) => <String, dynamic>{'email': instance.email};

AdminForgotPasswordResponse _$AdminForgotPasswordResponseFromJson(
  Map<String, dynamic> json,
) => AdminForgotPasswordResponse(
  isSuccess: json['isSuccess'] as bool,
  email: json['email'] as String,
);

Map<String, dynamic> _$AdminForgotPasswordResponseToJson(
  AdminForgotPasswordResponse instance,
) => <String, dynamic>{
  'isSuccess': instance.isSuccess,
  'email': instance.email,
};

AdminGetAllSessionsResponse _$AdminGetAllSessionsResponseFromJson(
  Map<String, dynamic> json,
) => AdminGetAllSessionsResponse(
  sessions: SessionDtoPaginatedResult.fromJson(
    json['sessions'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$AdminGetAllSessionsResponseToJson(
  AdminGetAllSessionsResponse instance,
) => <String, dynamic>{'sessions': instance.sessions.toJson()};

AdminGetOwnProfileResponse _$AdminGetOwnProfileResponseFromJson(
  Map<String, dynamic> json,
) => AdminGetOwnProfileResponse(
  user: UserResponseDto.fromJson(json['user'] as Map<String, dynamic>),
);

Map<String, dynamic> _$AdminGetOwnProfileResponseToJson(
  AdminGetOwnProfileResponse instance,
) => <String, dynamic>{'user': instance.user.toJson()};

AdminGetSessionMetricsResponse _$AdminGetSessionMetricsResponseFromJson(
  Map<String, dynamic> json,
) => AdminGetSessionMetricsResponse(
  browsers: BrowserMetrics.fromJson(json['browsers'] as Map<String, dynamic>),
  devices: DeviceMetrics.fromJson(json['devices'] as Map<String, dynamic>),
  platforms: PlatformMetrics.fromJson(
    json['platforms'] as Map<String, dynamic>,
  ),
  clients: ClientMetrics.fromJson(json['clients'] as Map<String, dynamic>),
  totalActiveSessions: (json['totalActiveSessions'] as num).toInt(),
  totalActiveUsers: (json['totalActiveUsers'] as num).toInt(),
);

Map<String, dynamic> _$AdminGetSessionMetricsResponseToJson(
  AdminGetSessionMetricsResponse instance,
) => <String, dynamic>{
  'browsers': instance.browsers.toJson(),
  'devices': instance.devices.toJson(),
  'platforms': instance.platforms.toJson(),
  'clients': instance.clients.toJson(),
  'totalActiveSessions': instance.totalActiveSessions,
  'totalActiveUsers': instance.totalActiveUsers,
};

AdminLoginRequest _$AdminLoginRequestFromJson(Map<String, dynamic> json) =>
    AdminLoginRequest(
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$AdminLoginRequestToJson(AdminLoginRequest instance) =>
    <String, dynamic>{'email': instance.email, 'password': instance.password};

AdminLoginResponse _$AdminLoginResponseFromJson(Map<String, dynamic> json) =>
    AdminLoginResponse(
      user: UserResponseDto.fromJson(json['user'] as Map<String, dynamic>),
      accessToken: json['accessToken'] as String,
      accessTokenExpiresAt: DateTime.parse(
        json['accessTokenExpiresAt'] as String,
      ),
      refreshToken: json['refreshToken'] as String,
      refreshTokenExpiresAt: DateTime.parse(
        json['refreshTokenExpiresAt'] as String,
      ),
      tokenType: json['tokenType'] as String,
    );

Map<String, dynamic> _$AdminLoginResponseToJson(AdminLoginResponse instance) =>
    <String, dynamic>{
      'user': instance.user.toJson(),
      'accessToken': instance.accessToken,
      'accessTokenExpiresAt': instance.accessTokenExpiresAt.toIso8601String(),
      'refreshToken': instance.refreshToken,
      'refreshTokenExpiresAt': instance.refreshTokenExpiresAt.toIso8601String(),
      'tokenType': instance.tokenType,
    };

AdminResendOtpRequest _$AdminResendOtpRequestFromJson(
  Map<String, dynamic> json,
) => AdminResendOtpRequest(
  email: json['email'] as String,
  purpose: json['purpose'] as String,
);

Map<String, dynamic> _$AdminResendOtpRequestToJson(
  AdminResendOtpRequest instance,
) => <String, dynamic>{'email': instance.email, 'purpose': instance.purpose};

AdminResendOtpResponse _$AdminResendOtpResponseFromJson(
  Map<String, dynamic> json,
) => AdminResendOtpResponse(isSuccess: json['isSuccess'] as bool);

Map<String, dynamic> _$AdminResendOtpResponseToJson(
  AdminResendOtpResponse instance,
) => <String, dynamic>{'isSuccess': instance.isSuccess};

AdminResetPasswordRequest _$AdminResetPasswordRequestFromJson(
  Map<String, dynamic> json,
) => AdminResetPasswordRequest(
  email: json['email'] as String,
  code: json['code'] as String,
  newPassword: json['newPassword'] as String,
);

Map<String, dynamic> _$AdminResetPasswordRequestToJson(
  AdminResetPasswordRequest instance,
) => <String, dynamic>{
  'email': instance.email,
  'code': instance.code,
  'newPassword': instance.newPassword,
};

AdminResetPasswordResponse _$AdminResetPasswordResponseFromJson(
  Map<String, dynamic> json,
) => AdminResetPasswordResponse(isSuccess: json['isSuccess'] as bool);

Map<String, dynamic> _$AdminResetPasswordResponseToJson(
  AdminResetPasswordResponse instance,
) => <String, dynamic>{'isSuccess': instance.isSuccess};

AdminSignOutFromAllDevicesResponse _$AdminSignOutFromAllDevicesResponseFromJson(
  Map<String, dynamic> json,
) => AdminSignOutFromAllDevicesResponse(isSuccess: json['isSuccess'] as bool);

Map<String, dynamic> _$AdminSignOutFromAllDevicesResponseToJson(
  AdminSignOutFromAllDevicesResponse instance,
) => <String, dynamic>{'isSuccess': instance.isSuccess};

AdminSignOutRequest _$AdminSignOutRequestFromJson(Map<String, dynamic> json) =>
    AdminSignOutRequest(refreshToken: json['refreshToken'] as String);

Map<String, dynamic> _$AdminSignOutRequestToJson(
  AdminSignOutRequest instance,
) => <String, dynamic>{'refreshToken': instance.refreshToken};

AdminSignOutResponse _$AdminSignOutResponseFromJson(
  Map<String, dynamic> json,
) => AdminSignOutResponse(isSuccess: json['isSuccess'] as bool);

Map<String, dynamic> _$AdminSignOutResponseToJson(
  AdminSignOutResponse instance,
) => <String, dynamic>{'isSuccess': instance.isSuccess};

AdminUpdateAvatarResponse _$AdminUpdateAvatarResponseFromJson(
  Map<String, dynamic> json,
) => AdminUpdateAvatarResponse(
  user: UserResponseDto.fromJson(json['user'] as Map<String, dynamic>),
);

Map<String, dynamic> _$AdminUpdateAvatarResponseToJson(
  AdminUpdateAvatarResponse instance,
) => <String, dynamic>{'user': instance.user.toJson()};

AdminUpdateOwnProfileRequest _$AdminUpdateOwnProfileRequestFromJson(
  Map<String, dynamic> json,
) => AdminUpdateOwnProfileRequest(
  userName: json['userName'] as String?,
  countryName: json['countryName'] as String?,
  partialPhoneNumber: json['partialPhoneNumber'] as String?,
  countryIsoCode: json['countryIsoCode'] as String?,
  countryDialCode: json['countryDialCode'] as String?,
);

Map<String, dynamic> _$AdminUpdateOwnProfileRequestToJson(
  AdminUpdateOwnProfileRequest instance,
) => <String, dynamic>{
  'userName': instance.userName,
  'countryName': instance.countryName,
  'partialPhoneNumber': instance.partialPhoneNumber,
  'countryIsoCode': instance.countryIsoCode,
  'countryDialCode': instance.countryDialCode,
};

AdminUpdateOwnProfileResponse _$AdminUpdateOwnProfileResponseFromJson(
  Map<String, dynamic> json,
) => AdminUpdateOwnProfileResponse(
  user: UserResponseDto.fromJson(json['user'] as Map<String, dynamic>),
);

Map<String, dynamic> _$AdminUpdateOwnProfileResponseToJson(
  AdminUpdateOwnProfileResponse instance,
) => <String, dynamic>{'user': instance.user.toJson()};

AdminVerifyOtpRequest _$AdminVerifyOtpRequestFromJson(
  Map<String, dynamic> json,
) => AdminVerifyOtpRequest(
  email: json['email'] as String,
  code: json['code'] as String,
  purpose: json['purpose'] as String,
);

Map<String, dynamic> _$AdminVerifyOtpRequestToJson(
  AdminVerifyOtpRequest instance,
) => <String, dynamic>{
  'email': instance.email,
  'code': instance.code,
  'purpose': instance.purpose,
};

AdminVerifyOtpResponse _$AdminVerifyOtpResponseFromJson(
  Map<String, dynamic> json,
) => AdminVerifyOtpResponse(isSuccess: json['isSuccess'] as bool);

Map<String, dynamic> _$AdminVerifyOtpResponseToJson(
  AdminVerifyOtpResponse instance,
) => <String, dynamic>{'isSuccess': instance.isSuccess};

BrowserMetrics _$BrowserMetricsFromJson(Map<String, dynamic> json) =>
    BrowserMetrics(
      chrome: (json['chrome'] as num).toInt(),
      firefox: (json['firefox'] as num).toInt(),
      safari: (json['safari'] as num).toInt(),
      edge: (json['edge'] as num).toInt(),
      opera: (json['opera'] as num).toInt(),
      internetExplorer: (json['internetExplorer'] as num).toInt(),
      googleSearchApp: (json['googleSearchApp'] as num).toInt(),
      samsung: (json['samsung'] as num).toInt(),
      unknown: (json['unknown'] as num).toInt(),
    );

Map<String, dynamic> _$BrowserMetricsToJson(BrowserMetrics instance) =>
    <String, dynamic>{
      'chrome': instance.chrome,
      'firefox': instance.firefox,
      'safari': instance.safari,
      'edge': instance.edge,
      'opera': instance.opera,
      'internetExplorer': instance.internetExplorer,
      'googleSearchApp': instance.googleSearchApp,
      'samsung': instance.samsung,
      'unknown': instance.unknown,
    };

ClientMetrics _$ClientMetricsFromJson(Map<String, dynamic> json) =>
    ClientMetrics(
      mobileApp: (json['mobileApp'] as num).toInt(),
      webApp: (json['webApp'] as num).toInt(),
      dashboard: (json['dashboard'] as num).toInt(),
      unknown: (json['unknown'] as num).toInt(),
    );

Map<String, dynamic> _$ClientMetricsToJson(ClientMetrics instance) =>
    <String, dynamic>{
      'mobileApp': instance.mobileApp,
      'webApp': instance.webApp,
      'dashboard': instance.dashboard,
      'unknown': instance.unknown,
    };

DeviceMetrics _$DeviceMetricsFromJson(Map<String, dynamic> json) =>
    DeviceMetrics(
      desktop: (json['desktop'] as num).toInt(),
      mobile: (json['mobile'] as num).toInt(),
      tablet: (json['tablet'] as num).toInt(),
      watch: (json['watch'] as num).toInt(),
      tv: (json['tv'] as num).toInt(),
      console: (json['console'] as num).toInt(),
      car: (json['car'] as num).toInt(),
      ioT: (json['ioT'] as num).toInt(),
      unknown: (json['unknown'] as num).toInt(),
    );

Map<String, dynamic> _$DeviceMetricsToJson(DeviceMetrics instance) =>
    <String, dynamic>{
      'desktop': instance.desktop,
      'mobile': instance.mobile,
      'tablet': instance.tablet,
      'watch': instance.watch,
      'tv': instance.tv,
      'console': instance.console,
      'car': instance.car,
      'ioT': instance.ioT,
      'unknown': instance.unknown,
    };

FileDto _$FileDtoFromJson(Map<String, dynamic> json) => FileDto(
  id: json['id'] as String,
  fileName: json['fileName'] as String,
  originalFileName: json['originalFileName'] as String,
  mimeType: json['mimeType'] as String,
  storageUrl: json['storageUrl'] as String,
  sizeInBytes: (json['sizeInBytes'] as num).toInt(),
  isDeleted: json['isDeleted'] as bool,
);

Map<String, dynamic> _$FileDtoToJson(FileDto instance) => <String, dynamic>{
  'id': instance.id,
  'fileName': instance.fileName,
  'originalFileName': instance.originalFileName,
  'mimeType': instance.mimeType,
  'storageUrl': instance.storageUrl,
  'sizeInBytes': instance.sizeInBytes,
  'isDeleted': instance.isDeleted,
};

HttpValidationProblemDetails _$HttpValidationProblemDetailsFromJson(
  Map<String, dynamic> json,
) => HttpValidationProblemDetails(
  type: json['type'] as String?,
  title: json['title'] as String?,
  status: (json['status'] as num?)?.toInt(),
  detail: json['detail'] as String?,
  instance: json['instance'] as String?,
  errors: json['errors'] as Map<String, dynamic>,
);

Map<String, dynamic> _$HttpValidationProblemDetailsToJson(
  HttpValidationProblemDetails instance,
) => <String, dynamic>{
  'type': instance.type,
  'title': instance.title,
  'status': instance.status,
  'detail': instance.detail,
  'instance': instance.instance,
  'errors': instance.errors,
};

PermissionDto _$PermissionDtoFromJson(Map<String, dynamic> json) =>
    PermissionDto(
      id: json['id'] as String,
      resource: json['resource'] as String,
      action: json['action'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$PermissionDtoToJson(PermissionDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'resource': instance.resource,
      'action': instance.action,
      'description': instance.description,
    };

PlatformMetrics _$PlatformMetricsFromJson(Map<String, dynamic> json) =>
    PlatformMetrics(
      windows: (json['windows'] as num).toInt(),
      mac: (json['mac'] as num).toInt(),
      ios: (json['ios'] as num).toInt(),
      ipadOs: (json['ipadOs'] as num).toInt(),
      linux: (json['linux'] as num).toInt(),
      android: (json['android'] as num).toInt(),
      chromeOs: (json['chromeOs'] as num).toInt(),
      unknown: (json['unknown'] as num).toInt(),
    );

Map<String, dynamic> _$PlatformMetricsToJson(PlatformMetrics instance) =>
    <String, dynamic>{
      'windows': instance.windows,
      'mac': instance.mac,
      'ios': instance.ios,
      'ipadOs': instance.ipadOs,
      'linux': instance.linux,
      'android': instance.android,
      'chromeOs': instance.chromeOs,
      'unknown': instance.unknown,
    };

ProblemDetails _$ProblemDetailsFromJson(Map<String, dynamic> json) =>
    ProblemDetails(
      type: json['type'] as String?,
      title: json['title'] as String?,
      status: (json['status'] as num?)?.toInt(),
      detail: json['detail'] as String?,
      instance: json['instance'] as String?,
    );

Map<String, dynamic> _$ProblemDetailsToJson(ProblemDetails instance) =>
    <String, dynamic>{
      'type': instance.type,
      'title': instance.title,
      'status': instance.status,
      'detail': instance.detail,
      'instance': instance.instance,
    };

PublicChangePasswordRequest _$PublicChangePasswordRequestFromJson(
  Map<String, dynamic> json,
) => PublicChangePasswordRequest(
  oldPassword: json['oldPassword'] as String,
  newPassword: json['newPassword'] as String,
);

Map<String, dynamic> _$PublicChangePasswordRequestToJson(
  PublicChangePasswordRequest instance,
) => <String, dynamic>{
  'oldPassword': instance.oldPassword,
  'newPassword': instance.newPassword,
};

PublicChangePasswordResponse _$PublicChangePasswordResponseFromJson(
  Map<String, dynamic> json,
) => PublicChangePasswordResponse(isSuccess: json['isSuccess'] as bool);

Map<String, dynamic> _$PublicChangePasswordResponseToJson(
  PublicChangePasswordResponse instance,
) => <String, dynamic>{'isSuccess': instance.isSuccess};

PublicForgotPasswordRequest _$PublicForgotPasswordRequestFromJson(
  Map<String, dynamic> json,
) => PublicForgotPasswordRequest(email: json['email'] as String);

Map<String, dynamic> _$PublicForgotPasswordRequestToJson(
  PublicForgotPasswordRequest instance,
) => <String, dynamic>{'email': instance.email};

PublicForgotPasswordResponse _$PublicForgotPasswordResponseFromJson(
  Map<String, dynamic> json,
) => PublicForgotPasswordResponse(
  isSuccess: json['isSuccess'] as bool,
  email: json['email'] as String,
);

Map<String, dynamic> _$PublicForgotPasswordResponseToJson(
  PublicForgotPasswordResponse instance,
) => <String, dynamic>{
  'isSuccess': instance.isSuccess,
  'email': instance.email,
};

PublicGetOwnProfileResponse _$PublicGetOwnProfileResponseFromJson(
  Map<String, dynamic> json,
) => PublicGetOwnProfileResponse(
  user: UserResponseDto.fromJson(json['user'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PublicGetOwnProfileResponseToJson(
  PublicGetOwnProfileResponse instance,
) => <String, dynamic>{'user': instance.user.toJson()};

PublicGetOwnSessionByIdResponse _$PublicGetOwnSessionByIdResponseFromJson(
  Map<String, dynamic> json,
) => PublicGetOwnSessionByIdResponse(
  session: SessionDto.fromJson(json['session'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PublicGetOwnSessionByIdResponseToJson(
  PublicGetOwnSessionByIdResponse instance,
) => <String, dynamic>{'session': instance.session.toJson()};

PublicGetOwnSessionsResponse _$PublicGetOwnSessionsResponseFromJson(
  Map<String, dynamic> json,
) => PublicGetOwnSessionsResponse(
  sessions:
      (json['sessions'] as List<dynamic>?)
          ?.map((e) => SessionDto.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
);

Map<String, dynamic> _$PublicGetOwnSessionsResponseToJson(
  PublicGetOwnSessionsResponse instance,
) => <String, dynamic>{
  'sessions': instance.sessions.map((e) => e.toJson()).toList(),
};

PublicLoginRequest _$PublicLoginRequestFromJson(Map<String, dynamic> json) =>
    PublicLoginRequest(
      credentials: json['credentials'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$PublicLoginRequestToJson(PublicLoginRequest instance) =>
    <String, dynamic>{
      'credentials': instance.credentials,
      'password': instance.password,
    };

PublicLoginResponse _$PublicLoginResponseFromJson(Map<String, dynamic> json) =>
    PublicLoginResponse(
      user: UserResponseDto.fromJson(json['user'] as Map<String, dynamic>),
      accessToken: json['accessToken'] as String,
      accessTokenExpiresAt: DateTime.parse(
        json['accessTokenExpiresAt'] as String,
      ),
      refreshToken: json['refreshToken'] as String,
      refreshTokenExpiresAt: DateTime.parse(
        json['refreshTokenExpiresAt'] as String,
      ),
      tokenType: json['tokenType'] as String,
    );

Map<String, dynamic> _$PublicLoginResponseToJson(
  PublicLoginResponse instance,
) => <String, dynamic>{
  'user': instance.user.toJson(),
  'accessToken': instance.accessToken,
  'accessTokenExpiresAt': instance.accessTokenExpiresAt.toIso8601String(),
  'refreshToken': instance.refreshToken,
  'refreshTokenExpiresAt': instance.refreshTokenExpiresAt.toIso8601String(),
  'tokenType': instance.tokenType,
};

PublicRefreshTokenRequest _$PublicRefreshTokenRequestFromJson(
  Map<String, dynamic> json,
) => PublicRefreshTokenRequest(refreshToken: json['refreshToken'] as String);

Map<String, dynamic> _$PublicRefreshTokenRequestToJson(
  PublicRefreshTokenRequest instance,
) => <String, dynamic>{'refreshToken': instance.refreshToken};

PublicRefreshTokenResponse _$PublicRefreshTokenResponseFromJson(
  Map<String, dynamic> json,
) => PublicRefreshTokenResponse(
  user: UserResponseDto.fromJson(json['user'] as Map<String, dynamic>),
  accessToken: json['accessToken'] as String,
  accessTokenExpiresAt: DateTime.parse(json['accessTokenExpiresAt'] as String),
  refreshToken: json['refreshToken'] as String,
  refreshTokenExpiresAt: DateTime.parse(
    json['refreshTokenExpiresAt'] as String,
  ),
  tokenType: json['tokenType'] as String,
);

Map<String, dynamic> _$PublicRefreshTokenResponseToJson(
  PublicRefreshTokenResponse instance,
) => <String, dynamic>{
  'user': instance.user.toJson(),
  'accessToken': instance.accessToken,
  'accessTokenExpiresAt': instance.accessTokenExpiresAt.toIso8601String(),
  'refreshToken': instance.refreshToken,
  'refreshTokenExpiresAt': instance.refreshTokenExpiresAt.toIso8601String(),
  'tokenType': instance.tokenType,
};

PublicResendOtpRequest _$PublicResendOtpRequestFromJson(
  Map<String, dynamic> json,
) => PublicResendOtpRequest(
  email: json['email'] as String,
  purpose: json['purpose'] as String,
);

Map<String, dynamic> _$PublicResendOtpRequestToJson(
  PublicResendOtpRequest instance,
) => <String, dynamic>{'email': instance.email, 'purpose': instance.purpose};

PublicResendOtpResponse _$PublicResendOtpResponseFromJson(
  Map<String, dynamic> json,
) => PublicResendOtpResponse(isSuccess: json['isSuccess'] as bool);

Map<String, dynamic> _$PublicResendOtpResponseToJson(
  PublicResendOtpResponse instance,
) => <String, dynamic>{'isSuccess': instance.isSuccess};

PublicResetPasswordRequest _$PublicResetPasswordRequestFromJson(
  Map<String, dynamic> json,
) => PublicResetPasswordRequest(
  email: json['email'] as String,
  code: json['code'] as String,
  newPassword: json['newPassword'] as String,
);

Map<String, dynamic> _$PublicResetPasswordRequestToJson(
  PublicResetPasswordRequest instance,
) => <String, dynamic>{
  'email': instance.email,
  'code': instance.code,
  'newPassword': instance.newPassword,
};

PublicResetPasswordResponse _$PublicResetPasswordResponseFromJson(
  Map<String, dynamic> json,
) => PublicResetPasswordResponse(isSuccess: json['isSuccess'] as bool);

Map<String, dynamic> _$PublicResetPasswordResponseToJson(
  PublicResetPasswordResponse instance,
) => <String, dynamic>{'isSuccess': instance.isSuccess};

PublicRevokeSessionResponse _$PublicRevokeSessionResponseFromJson(
  Map<String, dynamic> json,
) => PublicRevokeSessionResponse(isSuccess: json['isSuccess'] as bool);

Map<String, dynamic> _$PublicRevokeSessionResponseToJson(
  PublicRevokeSessionResponse instance,
) => <String, dynamic>{'isSuccess': instance.isSuccess};

PublicSetPasswordRequest _$PublicSetPasswordRequestFromJson(
  Map<String, dynamic> json,
) => PublicSetPasswordRequest(password: json['password'] as String);

Map<String, dynamic> _$PublicSetPasswordRequestToJson(
  PublicSetPasswordRequest instance,
) => <String, dynamic>{'password': instance.password};

PublicSetPasswordResponse _$PublicSetPasswordResponseFromJson(
  Map<String, dynamic> json,
) => PublicSetPasswordResponse(isSuccess: json['isSuccess'] as bool);

Map<String, dynamic> _$PublicSetPasswordResponseToJson(
  PublicSetPasswordResponse instance,
) => <String, dynamic>{'isSuccess': instance.isSuccess};

PublicSignOutFromAllDevicesResponse
_$PublicSignOutFromAllDevicesResponseFromJson(Map<String, dynamic> json) =>
    PublicSignOutFromAllDevicesResponse(isSuccess: json['isSuccess'] as bool);

Map<String, dynamic> _$PublicSignOutFromAllDevicesResponseToJson(
  PublicSignOutFromAllDevicesResponse instance,
) => <String, dynamic>{'isSuccess': instance.isSuccess};

PublicSignOutRequest _$PublicSignOutRequestFromJson(
  Map<String, dynamic> json,
) => PublicSignOutRequest(refreshToken: json['refreshToken'] as String);

Map<String, dynamic> _$PublicSignOutRequestToJson(
  PublicSignOutRequest instance,
) => <String, dynamic>{'refreshToken': instance.refreshToken};

PublicSignOutResponse _$PublicSignOutResponseFromJson(
  Map<String, dynamic> json,
) => PublicSignOutResponse(isSuccess: json['isSuccess'] as bool);

Map<String, dynamic> _$PublicSignOutResponseToJson(
  PublicSignOutResponse instance,
) => <String, dynamic>{'isSuccess': instance.isSuccess};

PublicSignUpRequest _$PublicSignUpRequestFromJson(Map<String, dynamic> json) =>
    PublicSignUpRequest(
      email: json['email'] as String,
      userName: json['userName'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$PublicSignUpRequestToJson(
  PublicSignUpRequest instance,
) => <String, dynamic>{
  'email': instance.email,
  'userName': instance.userName,
  'password': instance.password,
};

PublicSignUpResponse _$PublicSignUpResponseFromJson(
  Map<String, dynamic> json,
) => PublicSignUpResponse(
  user: UserResponseDto.fromJson(json['user'] as Map<String, dynamic>),
  accessToken: json['accessToken'] as String,
  accessTokenExpiresAt: DateTime.parse(json['accessTokenExpiresAt'] as String),
  refreshToken: json['refreshToken'] as String,
  refreshTokenExpiresAt: DateTime.parse(
    json['refreshTokenExpiresAt'] as String,
  ),
  tokenType: json['tokenType'] as String,
  verificationRequired: json['verificationRequired'] as bool,
);

Map<String, dynamic> _$PublicSignUpResponseToJson(
  PublicSignUpResponse instance,
) => <String, dynamic>{
  'user': instance.user.toJson(),
  'accessToken': instance.accessToken,
  'accessTokenExpiresAt': instance.accessTokenExpiresAt.toIso8601String(),
  'refreshToken': instance.refreshToken,
  'refreshTokenExpiresAt': instance.refreshTokenExpiresAt.toIso8601String(),
  'tokenType': instance.tokenType,
  'verificationRequired': instance.verificationRequired,
};

PublicSocialLoginRequest _$PublicSocialLoginRequestFromJson(
  Map<String, dynamic> json,
) => PublicSocialLoginRequest(
  email: json['email'] as String,
  userName: json['userName'] as String,
  avatarUrl: json['avatarUrl'] as String?,
  provider: json['provider'] as String,
);

Map<String, dynamic> _$PublicSocialLoginRequestToJson(
  PublicSocialLoginRequest instance,
) => <String, dynamic>{
  'email': instance.email,
  'userName': instance.userName,
  'avatarUrl': instance.avatarUrl,
  'provider': instance.provider,
};

PublicSocialLoginResponse _$PublicSocialLoginResponseFromJson(
  Map<String, dynamic> json,
) => PublicSocialLoginResponse(
  user: UserResponseDto.fromJson(json['user'] as Map<String, dynamic>),
  accessToken: json['accessToken'] as String,
  accessTokenExpiresAt: DateTime.parse(json['accessTokenExpiresAt'] as String),
  refreshToken: json['refreshToken'] as String,
  refreshTokenExpiresAt: DateTime.parse(
    json['refreshTokenExpiresAt'] as String,
  ),
  tokenType: json['tokenType'] as String,
);

Map<String, dynamic> _$PublicSocialLoginResponseToJson(
  PublicSocialLoginResponse instance,
) => <String, dynamic>{
  'user': instance.user.toJson(),
  'accessToken': instance.accessToken,
  'accessTokenExpiresAt': instance.accessTokenExpiresAt.toIso8601String(),
  'refreshToken': instance.refreshToken,
  'refreshTokenExpiresAt': instance.refreshTokenExpiresAt.toIso8601String(),
  'tokenType': instance.tokenType,
};

PublicUpdateAvatarResponse _$PublicUpdateAvatarResponseFromJson(
  Map<String, dynamic> json,
) => PublicUpdateAvatarResponse(
  user: UserResponseDto.fromJson(json['user'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PublicUpdateAvatarResponseToJson(
  PublicUpdateAvatarResponse instance,
) => <String, dynamic>{'user': instance.user.toJson()};

PublicUpdateOwnProfileRequest _$PublicUpdateOwnProfileRequestFromJson(
  Map<String, dynamic> json,
) => PublicUpdateOwnProfileRequest(
  email: json['email'] as String?,
  userName: json['userName'] as String?,
  countryName: json['countryName'] as String?,
  partialPhoneNumber: json['partialPhoneNumber'] as String?,
  countryIsoCode: json['countryIsoCode'] as String?,
  countryDialCode: json['countryDialCode'] as String?,
);

Map<String, dynamic> _$PublicUpdateOwnProfileRequestToJson(
  PublicUpdateOwnProfileRequest instance,
) => <String, dynamic>{
  'email': instance.email,
  'userName': instance.userName,
  'countryName': instance.countryName,
  'partialPhoneNumber': instance.partialPhoneNumber,
  'countryIsoCode': instance.countryIsoCode,
  'countryDialCode': instance.countryDialCode,
};

PublicUpdateOwnProfileResponse _$PublicUpdateOwnProfileResponseFromJson(
  Map<String, dynamic> json,
) => PublicUpdateOwnProfileResponse(
  user: UserResponseDto.fromJson(json['user'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PublicUpdateOwnProfileResponseToJson(
  PublicUpdateOwnProfileResponse instance,
) => <String, dynamic>{'user': instance.user.toJson()};

PublicVerifyOtpRequest _$PublicVerifyOtpRequestFromJson(
  Map<String, dynamic> json,
) => PublicVerifyOtpRequest(
  email: json['email'] as String,
  code: json['code'] as String,
  purpose: json['purpose'] as String,
);

Map<String, dynamic> _$PublicVerifyOtpRequestToJson(
  PublicVerifyOtpRequest instance,
) => <String, dynamic>{
  'email': instance.email,
  'code': instance.code,
  'purpose': instance.purpose,
};

PublicVerifyOtpResponse _$PublicVerifyOtpResponseFromJson(
  Map<String, dynamic> json,
) => PublicVerifyOtpResponse(isSuccess: json['isSuccess'] as bool);

Map<String, dynamic> _$PublicVerifyOtpResponseToJson(
  PublicVerifyOtpResponse instance,
) => <String, dynamic>{'isSuccess': instance.isSuccess};

RoleDto _$RoleDtoFromJson(Map<String, dynamic> json) => RoleDto(
  id: json['id'] as String,
  name: json['name'] as String,
  description: json['description'] as String,
);

Map<String, dynamic> _$RoleDtoToJson(RoleDto instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'description': instance.description,
};

SessionDto _$SessionDtoFromJson(Map<String, dynamic> json) => SessionDto(
  id: json['id'] as String,
  ipAddress: json['ipAddress'] as String?,
  userAgent: json['userAgent'] as String?,
  browser: json['browser'] as String,
  device: json['device'] as String,
  platform: json['platform'] as String,
  $client: json['client'] as String,
  createdAt: DateTime.parse(json['createdAt'] as String),
  expiresAt: DateTime.parse(json['expiresAt'] as String),
  isActive: json['isActive'] as bool,
);

Map<String, dynamic> _$SessionDtoToJson(SessionDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'ipAddress': instance.ipAddress,
      'userAgent': instance.userAgent,
      'browser': instance.browser,
      'device': instance.device,
      'platform': instance.platform,
      'client': instance.$client,
      'createdAt': instance.createdAt.toIso8601String(),
      'expiresAt': instance.expiresAt.toIso8601String(),
      'isActive': instance.isActive,
    };

SessionDtoPaginatedResult _$SessionDtoPaginatedResultFromJson(
  Map<String, dynamic> json,
) => SessionDtoPaginatedResult(
  pageIndex: (json['pageIndex'] as num).toInt(),
  pageSize: (json['pageSize'] as num).toInt(),
  count: (json['count'] as num).toInt(),
  items:
      (json['items'] as List<dynamic>?)
          ?.map((e) => SessionDto.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
);

Map<String, dynamic> _$SessionDtoPaginatedResultToJson(
  SessionDtoPaginatedResult instance,
) => <String, dynamic>{
  'pageIndex': instance.pageIndex,
  'pageSize': instance.pageSize,
  'count': instance.count,
  'items': instance.items.map((e) => e.toJson()).toList(),
};

UserResponseDto _$UserResponseDtoFromJson(Map<String, dynamic> json) =>
    UserResponseDto(
      id: json['id'] as String,
      email: json['email'] as String?,
      userName: json['userName'] as String,
      roles:
          (json['roles'] as List<dynamic>?)
              ?.map((e) => RoleDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      permissions:
          (json['permissions'] as List<dynamic>?)
              ?.map((e) => PermissionDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      authProvider: json['authProvider'] as String,
      isVerified: json['isVerified'] as bool,
      isActive: json['isActive'] as bool,
      avatar: json['avatar'] == null
          ? null
          : FileDto.fromJson(json['avatar'] as Map<String, dynamic>),
      countryName: json['countryName'] as String?,
      countryIsoCode: json['countryIsoCode'] as String?,
      countryDialCode: json['countryDialCode'] as String?,
      partialPhoneNumber: json['partialPhoneNumber'] as String?,
      fullPhoneNumber: json['fullPhoneNumber'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$UserResponseDtoToJson(UserResponseDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'userName': instance.userName,
      'roles': instance.roles.map((e) => e.toJson()).toList(),
      'permissions': instance.permissions.map((e) => e.toJson()).toList(),
      'authProvider': instance.authProvider,
      'isVerified': instance.isVerified,
      'isActive': instance.isActive,
      'avatar': instance.avatar?.toJson(),
      'countryName': instance.countryName,
      'countryIsoCode': instance.countryIsoCode,
      'countryDialCode': instance.countryDialCode,
      'partialPhoneNumber': instance.partialPhoneNumber,
      'fullPhoneNumber': instance.fullPhoneNumber,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

ApiV1AdminUserAvatarPatch$RequestBody
_$ApiV1AdminUserAvatarPatch$RequestBodyFromJson(Map<String, dynamic> json) =>
    ApiV1AdminUserAvatarPatch$RequestBody(
      avatarFile: json['avatarFile'] as String,
    );

Map<String, dynamic> _$ApiV1AdminUserAvatarPatch$RequestBodyToJson(
  ApiV1AdminUserAvatarPatch$RequestBody instance,
) => <String, dynamic>{'avatarFile': instance.avatarFile};

ApiV1PublicUserAvatarPatch$RequestBody
_$ApiV1PublicUserAvatarPatch$RequestBodyFromJson(Map<String, dynamic> json) =>
    ApiV1PublicUserAvatarPatch$RequestBody(
      avatarFile: json['avatarFile'] as String,
    );

Map<String, dynamic> _$ApiV1PublicUserAvatarPatch$RequestBodyToJson(
  ApiV1PublicUserAvatarPatch$RequestBody instance,
) => <String, dynamic>{'avatarFile': instance.avatarFile};
