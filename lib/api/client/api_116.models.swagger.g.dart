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

AdminGetOwnProfileResponse _$AdminGetOwnProfileResponseFromJson(
  Map<String, dynamic> json,
) => AdminGetOwnProfileResponse(
  user: UserResponseDto.fromJson(json['user'] as Map<String, dynamic>),
);

Map<String, dynamic> _$AdminGetOwnProfileResponseToJson(
  AdminGetOwnProfileResponse instance,
) => <String, dynamic>{'user': instance.user.toJson()};

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
      token: json['token'] as String,
    );

Map<String, dynamic> _$AdminLoginResponseToJson(AdminLoginResponse instance) =>
    <String, dynamic>{'user': instance.user.toJson(), 'token': instance.token};

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
  countryFlagUrl: json['countryFlagUrl'] as String?,
  partialPhoneNumber: json['partialPhoneNumber'] as String?,
  countryIsoCode: json['countryIsoCode'] as String?,
  countryDialCode: json['countryDialCode'] as String?,
);

Map<String, dynamic> _$AdminUpdateOwnProfileRequestToJson(
  AdminUpdateOwnProfileRequest instance,
) => <String, dynamic>{
  'userName': instance.userName,
  'countryName': instance.countryName,
  'countryFlagUrl': instance.countryFlagUrl,
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
      token: json['token'] as String,
    );

Map<String, dynamic> _$PublicLoginResponseToJson(
  PublicLoginResponse instance,
) => <String, dynamic>{'user': instance.user.toJson(), 'token': instance.token};

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
  token: json['token'] as String,
  verificationRequired: json['verificationRequired'] as bool,
);

Map<String, dynamic> _$PublicSignUpResponseToJson(
  PublicSignUpResponse instance,
) => <String, dynamic>{
  'user': instance.user.toJson(),
  'token': instance.token,
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
  token: json['token'] as String,
);

Map<String, dynamic> _$PublicSocialLoginResponseToJson(
  PublicSocialLoginResponse instance,
) => <String, dynamic>{'user': instance.user.toJson(), 'token': instance.token};

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
  countryFlagUrl: json['countryFlagUrl'] as String?,
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
  'countryFlagUrl': instance.countryFlagUrl,
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
      isLoggedIn: json['isLoggedIn'] as bool,
      lastLoginAt: json['lastLoginAt'] == null
          ? null
          : DateTime.parse(json['lastLoginAt'] as String),
      avatar: json['avatar'] == null
          ? null
          : FileDto.fromJson(json['avatar'] as Map<String, dynamic>),
      countryName: json['countryName'] as String?,
      countryFlagUrl: json['countryFlagUrl'] as String?,
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
      'isLoggedIn': instance.isLoggedIn,
      'lastLoginAt': instance.lastLoginAt?.toIso8601String(),
      'avatar': instance.avatar?.toJson(),
      'countryName': instance.countryName,
      'countryFlagUrl': instance.countryFlagUrl,
      'countryIsoCode': instance.countryIsoCode,
      'countryDialCode': instance.countryDialCode,
      'partialPhoneNumber': instance.partialPhoneNumber,
      'fullPhoneNumber': instance.fullPhoneNumber,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

ApiV1AdminProfileAvatarPatch$RequestBody
_$ApiV1AdminProfileAvatarPatch$RequestBodyFromJson(Map<String, dynamic> json) =>
    ApiV1AdminProfileAvatarPatch$RequestBody(
      avatarFile: json['avatarFile'] as String,
    );

Map<String, dynamic> _$ApiV1AdminProfileAvatarPatch$RequestBodyToJson(
  ApiV1AdminProfileAvatarPatch$RequestBody instance,
) => <String, dynamic>{'avatarFile': instance.avatarFile};

ApiV1PublicProfileAvatarPatch$RequestBody
_$ApiV1PublicProfileAvatarPatch$RequestBodyFromJson(
  Map<String, dynamic> json,
) => ApiV1PublicProfileAvatarPatch$RequestBody(
  avatarFile: json['avatarFile'] as String,
);

Map<String, dynamic> _$ApiV1PublicProfileAvatarPatch$RequestBodyToJson(
  ApiV1PublicProfileAvatarPatch$RequestBody instance,
) => <String, dynamic>{'avatarFile': instance.avatarFile};
