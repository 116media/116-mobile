// coverage:ignore-file
// ignore_for_file: type=lint

import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';
import 'dart:convert';

import 'api_116.enums.swagger.dart' as enums;

part 'api_116.models.swagger.g.dart';

@JsonSerializable(explicitToJson: true)
class AdminChangePasswordRequest {
  const AdminChangePasswordRequest({
    required this.oldPassword,
    required this.newPassword,
  });

  factory AdminChangePasswordRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminChangePasswordRequestFromJson(json);

  static const toJsonFactory = _$AdminChangePasswordRequestToJson;
  Map<String, dynamic> toJson() => _$AdminChangePasswordRequestToJson(this);

  @JsonKey(name: 'oldPassword')
  final String oldPassword;
  @JsonKey(name: 'newPassword')
  final String newPassword;
  static const fromJsonFactory = _$AdminChangePasswordRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminChangePasswordRequest &&
            (identical(other.oldPassword, oldPassword) ||
                const DeepCollectionEquality().equals(
                  other.oldPassword,
                  oldPassword,
                )) &&
            (identical(other.newPassword, newPassword) ||
                const DeepCollectionEquality().equals(
                  other.newPassword,
                  newPassword,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(oldPassword) ^
      const DeepCollectionEquality().hash(newPassword) ^
      runtimeType.hashCode;
}

extension $AdminChangePasswordRequestExtension on AdminChangePasswordRequest {
  AdminChangePasswordRequest copyWith({
    String? oldPassword,
    String? newPassword,
  }) {
    return AdminChangePasswordRequest(
      oldPassword: oldPassword ?? this.oldPassword,
      newPassword: newPassword ?? this.newPassword,
    );
  }

  AdminChangePasswordRequest copyWithWrapped({
    Wrapped<String>? oldPassword,
    Wrapped<String>? newPassword,
  }) {
    return AdminChangePasswordRequest(
      oldPassword: (oldPassword != null ? oldPassword.value : this.oldPassword),
      newPassword: (newPassword != null ? newPassword.value : this.newPassword),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminChangePasswordResponse {
  const AdminChangePasswordResponse({required this.isSuccess});

  factory AdminChangePasswordResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminChangePasswordResponseFromJson(json);

  static const toJsonFactory = _$AdminChangePasswordResponseToJson;
  Map<String, dynamic> toJson() => _$AdminChangePasswordResponseToJson(this);

  @JsonKey(name: 'isSuccess')
  final bool isSuccess;
  static const fromJsonFactory = _$AdminChangePasswordResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminChangePasswordResponse &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality().equals(
                  other.isSuccess,
                  isSuccess,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(isSuccess) ^ runtimeType.hashCode;
}

extension $AdminChangePasswordResponseExtension on AdminChangePasswordResponse {
  AdminChangePasswordResponse copyWith({bool? isSuccess}) {
    return AdminChangePasswordResponse(isSuccess: isSuccess ?? this.isSuccess);
  }

  AdminChangePasswordResponse copyWithWrapped({Wrapped<bool>? isSuccess}) {
    return AdminChangePasswordResponse(
      isSuccess: (isSuccess != null ? isSuccess.value : this.isSuccess),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminCleanupExpiredSessionsResponse {
  const AdminCleanupExpiredSessionsResponse({required this.deletedCount});

  factory AdminCleanupExpiredSessionsResponse.fromJson(
    Map<String, dynamic> json,
  ) => _$AdminCleanupExpiredSessionsResponseFromJson(json);

  static const toJsonFactory = _$AdminCleanupExpiredSessionsResponseToJson;
  Map<String, dynamic> toJson() =>
      _$AdminCleanupExpiredSessionsResponseToJson(this);

  @JsonKey(name: 'deletedCount')
  final int deletedCount;
  static const fromJsonFactory = _$AdminCleanupExpiredSessionsResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminCleanupExpiredSessionsResponse &&
            (identical(other.deletedCount, deletedCount) ||
                const DeepCollectionEquality().equals(
                  other.deletedCount,
                  deletedCount,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(deletedCount) ^ runtimeType.hashCode;
}

extension $AdminCleanupExpiredSessionsResponseExtension
    on AdminCleanupExpiredSessionsResponse {
  AdminCleanupExpiredSessionsResponse copyWith({int? deletedCount}) {
    return AdminCleanupExpiredSessionsResponse(
      deletedCount: deletedCount ?? this.deletedCount,
    );
  }

  AdminCleanupExpiredSessionsResponse copyWithWrapped({
    Wrapped<int>? deletedCount,
  }) {
    return AdminCleanupExpiredSessionsResponse(
      deletedCount: (deletedCount != null
          ? deletedCount.value
          : this.deletedCount),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminForceLogoutUserResponse {
  const AdminForceLogoutUserResponse({required this.isSuccess});

  factory AdminForceLogoutUserResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminForceLogoutUserResponseFromJson(json);

  static const toJsonFactory = _$AdminForceLogoutUserResponseToJson;
  Map<String, dynamic> toJson() => _$AdminForceLogoutUserResponseToJson(this);

  @JsonKey(name: 'isSuccess')
  final bool isSuccess;
  static const fromJsonFactory = _$AdminForceLogoutUserResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminForceLogoutUserResponse &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality().equals(
                  other.isSuccess,
                  isSuccess,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(isSuccess) ^ runtimeType.hashCode;
}

extension $AdminForceLogoutUserResponseExtension
    on AdminForceLogoutUserResponse {
  AdminForceLogoutUserResponse copyWith({bool? isSuccess}) {
    return AdminForceLogoutUserResponse(isSuccess: isSuccess ?? this.isSuccess);
  }

  AdminForceLogoutUserResponse copyWithWrapped({Wrapped<bool>? isSuccess}) {
    return AdminForceLogoutUserResponse(
      isSuccess: (isSuccess != null ? isSuccess.value : this.isSuccess),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminForgotPasswordRequest {
  const AdminForgotPasswordRequest({required this.email});

  factory AdminForgotPasswordRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminForgotPasswordRequestFromJson(json);

  static const toJsonFactory = _$AdminForgotPasswordRequestToJson;
  Map<String, dynamic> toJson() => _$AdminForgotPasswordRequestToJson(this);

  @JsonKey(name: 'email')
  final String email;
  static const fromJsonFactory = _$AdminForgotPasswordRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminForgotPasswordRequest &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(email) ^ runtimeType.hashCode;
}

extension $AdminForgotPasswordRequestExtension on AdminForgotPasswordRequest {
  AdminForgotPasswordRequest copyWith({String? email}) {
    return AdminForgotPasswordRequest(email: email ?? this.email);
  }

  AdminForgotPasswordRequest copyWithWrapped({Wrapped<String>? email}) {
    return AdminForgotPasswordRequest(
      email: (email != null ? email.value : this.email),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminForgotPasswordResponse {
  const AdminForgotPasswordResponse({
    required this.isSuccess,
    required this.email,
  });

  factory AdminForgotPasswordResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminForgotPasswordResponseFromJson(json);

  static const toJsonFactory = _$AdminForgotPasswordResponseToJson;
  Map<String, dynamic> toJson() => _$AdminForgotPasswordResponseToJson(this);

  @JsonKey(name: 'isSuccess')
  final bool isSuccess;
  @JsonKey(name: 'email')
  final String email;
  static const fromJsonFactory = _$AdminForgotPasswordResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminForgotPasswordResponse &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality().equals(
                  other.isSuccess,
                  isSuccess,
                )) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(isSuccess) ^
      const DeepCollectionEquality().hash(email) ^
      runtimeType.hashCode;
}

extension $AdminForgotPasswordResponseExtension on AdminForgotPasswordResponse {
  AdminForgotPasswordResponse copyWith({bool? isSuccess, String? email}) {
    return AdminForgotPasswordResponse(
      isSuccess: isSuccess ?? this.isSuccess,
      email: email ?? this.email,
    );
  }

  AdminForgotPasswordResponse copyWithWrapped({
    Wrapped<bool>? isSuccess,
    Wrapped<String>? email,
  }) {
    return AdminForgotPasswordResponse(
      isSuccess: (isSuccess != null ? isSuccess.value : this.isSuccess),
      email: (email != null ? email.value : this.email),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminGetAllSessionsResponse {
  const AdminGetAllSessionsResponse({required this.sessions});

  factory AdminGetAllSessionsResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminGetAllSessionsResponseFromJson(json);

  static const toJsonFactory = _$AdminGetAllSessionsResponseToJson;
  Map<String, dynamic> toJson() => _$AdminGetAllSessionsResponseToJson(this);

  @JsonKey(name: 'sessions')
  final SessionDtoPaginatedResult sessions;
  static const fromJsonFactory = _$AdminGetAllSessionsResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminGetAllSessionsResponse &&
            (identical(other.sessions, sessions) ||
                const DeepCollectionEquality().equals(
                  other.sessions,
                  sessions,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(sessions) ^ runtimeType.hashCode;
}

extension $AdminGetAllSessionsResponseExtension on AdminGetAllSessionsResponse {
  AdminGetAllSessionsResponse copyWith({SessionDtoPaginatedResult? sessions}) {
    return AdminGetAllSessionsResponse(sessions: sessions ?? this.sessions);
  }

  AdminGetAllSessionsResponse copyWithWrapped({
    Wrapped<SessionDtoPaginatedResult>? sessions,
  }) {
    return AdminGetAllSessionsResponse(
      sessions: (sessions != null ? sessions.value : this.sessions),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminGetOwnProfileResponse {
  const AdminGetOwnProfileResponse({required this.user});

  factory AdminGetOwnProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminGetOwnProfileResponseFromJson(json);

  static const toJsonFactory = _$AdminGetOwnProfileResponseToJson;
  Map<String, dynamic> toJson() => _$AdminGetOwnProfileResponseToJson(this);

  @JsonKey(name: 'user')
  final UserResponseDto user;
  static const fromJsonFactory = _$AdminGetOwnProfileResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminGetOwnProfileResponse &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(user) ^ runtimeType.hashCode;
}

extension $AdminGetOwnProfileResponseExtension on AdminGetOwnProfileResponse {
  AdminGetOwnProfileResponse copyWith({UserResponseDto? user}) {
    return AdminGetOwnProfileResponse(user: user ?? this.user);
  }

  AdminGetOwnProfileResponse copyWithWrapped({Wrapped<UserResponseDto>? user}) {
    return AdminGetOwnProfileResponse(
      user: (user != null ? user.value : this.user),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminGetSessionMetricsResponse {
  const AdminGetSessionMetricsResponse({
    required this.browsers,
    required this.devices,
    required this.platforms,
    required this.clients,
    required this.totalActiveSessions,
    required this.totalActiveUsers,
  });

  factory AdminGetSessionMetricsResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminGetSessionMetricsResponseFromJson(json);

  static const toJsonFactory = _$AdminGetSessionMetricsResponseToJson;
  Map<String, dynamic> toJson() => _$AdminGetSessionMetricsResponseToJson(this);

  @JsonKey(name: 'browsers')
  final BrowserMetrics browsers;
  @JsonKey(name: 'devices')
  final DeviceMetrics devices;
  @JsonKey(name: 'platforms')
  final PlatformMetrics platforms;
  @JsonKey(name: 'clients')
  final ClientMetrics clients;
  @JsonKey(name: 'totalActiveSessions')
  final int totalActiveSessions;
  @JsonKey(name: 'totalActiveUsers')
  final int totalActiveUsers;
  static const fromJsonFactory = _$AdminGetSessionMetricsResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminGetSessionMetricsResponse &&
            (identical(other.browsers, browsers) ||
                const DeepCollectionEquality().equals(
                  other.browsers,
                  browsers,
                )) &&
            (identical(other.devices, devices) ||
                const DeepCollectionEquality().equals(
                  other.devices,
                  devices,
                )) &&
            (identical(other.platforms, platforms) ||
                const DeepCollectionEquality().equals(
                  other.platforms,
                  platforms,
                )) &&
            (identical(other.clients, clients) ||
                const DeepCollectionEquality().equals(
                  other.clients,
                  clients,
                )) &&
            (identical(other.totalActiveSessions, totalActiveSessions) ||
                const DeepCollectionEquality().equals(
                  other.totalActiveSessions,
                  totalActiveSessions,
                )) &&
            (identical(other.totalActiveUsers, totalActiveUsers) ||
                const DeepCollectionEquality().equals(
                  other.totalActiveUsers,
                  totalActiveUsers,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(browsers) ^
      const DeepCollectionEquality().hash(devices) ^
      const DeepCollectionEquality().hash(platforms) ^
      const DeepCollectionEquality().hash(clients) ^
      const DeepCollectionEquality().hash(totalActiveSessions) ^
      const DeepCollectionEquality().hash(totalActiveUsers) ^
      runtimeType.hashCode;
}

extension $AdminGetSessionMetricsResponseExtension
    on AdminGetSessionMetricsResponse {
  AdminGetSessionMetricsResponse copyWith({
    BrowserMetrics? browsers,
    DeviceMetrics? devices,
    PlatformMetrics? platforms,
    ClientMetrics? clients,
    int? totalActiveSessions,
    int? totalActiveUsers,
  }) {
    return AdminGetSessionMetricsResponse(
      browsers: browsers ?? this.browsers,
      devices: devices ?? this.devices,
      platforms: platforms ?? this.platforms,
      clients: clients ?? this.clients,
      totalActiveSessions: totalActiveSessions ?? this.totalActiveSessions,
      totalActiveUsers: totalActiveUsers ?? this.totalActiveUsers,
    );
  }

  AdminGetSessionMetricsResponse copyWithWrapped({
    Wrapped<BrowserMetrics>? browsers,
    Wrapped<DeviceMetrics>? devices,
    Wrapped<PlatformMetrics>? platforms,
    Wrapped<ClientMetrics>? clients,
    Wrapped<int>? totalActiveSessions,
    Wrapped<int>? totalActiveUsers,
  }) {
    return AdminGetSessionMetricsResponse(
      browsers: (browsers != null ? browsers.value : this.browsers),
      devices: (devices != null ? devices.value : this.devices),
      platforms: (platforms != null ? platforms.value : this.platforms),
      clients: (clients != null ? clients.value : this.clients),
      totalActiveSessions: (totalActiveSessions != null
          ? totalActiveSessions.value
          : this.totalActiveSessions),
      totalActiveUsers: (totalActiveUsers != null
          ? totalActiveUsers.value
          : this.totalActiveUsers),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminLoginRequest {
  const AdminLoginRequest({required this.email, required this.password});

  factory AdminLoginRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminLoginRequestFromJson(json);

  static const toJsonFactory = _$AdminLoginRequestToJson;
  Map<String, dynamic> toJson() => _$AdminLoginRequestToJson(this);

  @JsonKey(name: 'email')
  final String email;
  @JsonKey(name: 'password')
  final String password;
  static const fromJsonFactory = _$AdminLoginRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminLoginRequest &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality().equals(
                  other.password,
                  password,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password) ^
      runtimeType.hashCode;
}

extension $AdminLoginRequestExtension on AdminLoginRequest {
  AdminLoginRequest copyWith({String? email, String? password}) {
    return AdminLoginRequest(
      email: email ?? this.email,
      password: password ?? this.password,
    );
  }

  AdminLoginRequest copyWithWrapped({
    Wrapped<String>? email,
    Wrapped<String>? password,
  }) {
    return AdminLoginRequest(
      email: (email != null ? email.value : this.email),
      password: (password != null ? password.value : this.password),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminLoginResponse {
  const AdminLoginResponse({
    required this.user,
    required this.accessToken,
    required this.accessTokenExpiresAt,
    required this.refreshToken,
    required this.refreshTokenExpiresAt,
    required this.tokenType,
  });

  factory AdminLoginResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminLoginResponseFromJson(json);

  static const toJsonFactory = _$AdminLoginResponseToJson;
  Map<String, dynamic> toJson() => _$AdminLoginResponseToJson(this);

  @JsonKey(name: 'user')
  final UserResponseDto user;
  @JsonKey(name: 'accessToken')
  final String accessToken;
  @JsonKey(name: 'accessTokenExpiresAt')
  final DateTime accessTokenExpiresAt;
  @JsonKey(name: 'refreshToken')
  final String refreshToken;
  @JsonKey(name: 'refreshTokenExpiresAt')
  final DateTime refreshTokenExpiresAt;
  @JsonKey(name: 'tokenType')
  final String tokenType;
  static const fromJsonFactory = _$AdminLoginResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminLoginResponse &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.accessToken, accessToken) ||
                const DeepCollectionEquality().equals(
                  other.accessToken,
                  accessToken,
                )) &&
            (identical(other.accessTokenExpiresAt, accessTokenExpiresAt) ||
                const DeepCollectionEquality().equals(
                  other.accessTokenExpiresAt,
                  accessTokenExpiresAt,
                )) &&
            (identical(other.refreshToken, refreshToken) ||
                const DeepCollectionEquality().equals(
                  other.refreshToken,
                  refreshToken,
                )) &&
            (identical(other.refreshTokenExpiresAt, refreshTokenExpiresAt) ||
                const DeepCollectionEquality().equals(
                  other.refreshTokenExpiresAt,
                  refreshTokenExpiresAt,
                )) &&
            (identical(other.tokenType, tokenType) ||
                const DeepCollectionEquality().equals(
                  other.tokenType,
                  tokenType,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(accessToken) ^
      const DeepCollectionEquality().hash(accessTokenExpiresAt) ^
      const DeepCollectionEquality().hash(refreshToken) ^
      const DeepCollectionEquality().hash(refreshTokenExpiresAt) ^
      const DeepCollectionEquality().hash(tokenType) ^
      runtimeType.hashCode;
}

extension $AdminLoginResponseExtension on AdminLoginResponse {
  AdminLoginResponse copyWith({
    UserResponseDto? user,
    String? accessToken,
    DateTime? accessTokenExpiresAt,
    String? refreshToken,
    DateTime? refreshTokenExpiresAt,
    String? tokenType,
  }) {
    return AdminLoginResponse(
      user: user ?? this.user,
      accessToken: accessToken ?? this.accessToken,
      accessTokenExpiresAt: accessTokenExpiresAt ?? this.accessTokenExpiresAt,
      refreshToken: refreshToken ?? this.refreshToken,
      refreshTokenExpiresAt:
          refreshTokenExpiresAt ?? this.refreshTokenExpiresAt,
      tokenType: tokenType ?? this.tokenType,
    );
  }

  AdminLoginResponse copyWithWrapped({
    Wrapped<UserResponseDto>? user,
    Wrapped<String>? accessToken,
    Wrapped<DateTime>? accessTokenExpiresAt,
    Wrapped<String>? refreshToken,
    Wrapped<DateTime>? refreshTokenExpiresAt,
    Wrapped<String>? tokenType,
  }) {
    return AdminLoginResponse(
      user: (user != null ? user.value : this.user),
      accessToken: (accessToken != null ? accessToken.value : this.accessToken),
      accessTokenExpiresAt: (accessTokenExpiresAt != null
          ? accessTokenExpiresAt.value
          : this.accessTokenExpiresAt),
      refreshToken: (refreshToken != null
          ? refreshToken.value
          : this.refreshToken),
      refreshTokenExpiresAt: (refreshTokenExpiresAt != null
          ? refreshTokenExpiresAt.value
          : this.refreshTokenExpiresAt),
      tokenType: (tokenType != null ? tokenType.value : this.tokenType),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminResendOtpRequest {
  const AdminResendOtpRequest({required this.email, required this.purpose});

  factory AdminResendOtpRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminResendOtpRequestFromJson(json);

  static const toJsonFactory = _$AdminResendOtpRequestToJson;
  Map<String, dynamic> toJson() => _$AdminResendOtpRequestToJson(this);

  @JsonKey(name: 'email')
  final String email;
  @JsonKey(name: 'purpose')
  final String purpose;
  static const fromJsonFactory = _$AdminResendOtpRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminResendOtpRequest &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.purpose, purpose) ||
                const DeepCollectionEquality().equals(other.purpose, purpose)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(purpose) ^
      runtimeType.hashCode;
}

extension $AdminResendOtpRequestExtension on AdminResendOtpRequest {
  AdminResendOtpRequest copyWith({String? email, String? purpose}) {
    return AdminResendOtpRequest(
      email: email ?? this.email,
      purpose: purpose ?? this.purpose,
    );
  }

  AdminResendOtpRequest copyWithWrapped({
    Wrapped<String>? email,
    Wrapped<String>? purpose,
  }) {
    return AdminResendOtpRequest(
      email: (email != null ? email.value : this.email),
      purpose: (purpose != null ? purpose.value : this.purpose),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminResendOtpResponse {
  const AdminResendOtpResponse({required this.isSuccess});

  factory AdminResendOtpResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminResendOtpResponseFromJson(json);

  static const toJsonFactory = _$AdminResendOtpResponseToJson;
  Map<String, dynamic> toJson() => _$AdminResendOtpResponseToJson(this);

  @JsonKey(name: 'isSuccess')
  final bool isSuccess;
  static const fromJsonFactory = _$AdminResendOtpResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminResendOtpResponse &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality().equals(
                  other.isSuccess,
                  isSuccess,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(isSuccess) ^ runtimeType.hashCode;
}

extension $AdminResendOtpResponseExtension on AdminResendOtpResponse {
  AdminResendOtpResponse copyWith({bool? isSuccess}) {
    return AdminResendOtpResponse(isSuccess: isSuccess ?? this.isSuccess);
  }

  AdminResendOtpResponse copyWithWrapped({Wrapped<bool>? isSuccess}) {
    return AdminResendOtpResponse(
      isSuccess: (isSuccess != null ? isSuccess.value : this.isSuccess),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminResetPasswordRequest {
  const AdminResetPasswordRequest({
    required this.email,
    required this.code,
    required this.newPassword,
  });

  factory AdminResetPasswordRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminResetPasswordRequestFromJson(json);

  static const toJsonFactory = _$AdminResetPasswordRequestToJson;
  Map<String, dynamic> toJson() => _$AdminResetPasswordRequestToJson(this);

  @JsonKey(name: 'email')
  final String email;
  @JsonKey(name: 'code')
  final String code;
  @JsonKey(name: 'newPassword')
  final String newPassword;
  static const fromJsonFactory = _$AdminResetPasswordRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminResetPasswordRequest &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.newPassword, newPassword) ||
                const DeepCollectionEquality().equals(
                  other.newPassword,
                  newPassword,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(newPassword) ^
      runtimeType.hashCode;
}

extension $AdminResetPasswordRequestExtension on AdminResetPasswordRequest {
  AdminResetPasswordRequest copyWith({
    String? email,
    String? code,
    String? newPassword,
  }) {
    return AdminResetPasswordRequest(
      email: email ?? this.email,
      code: code ?? this.code,
      newPassword: newPassword ?? this.newPassword,
    );
  }

  AdminResetPasswordRequest copyWithWrapped({
    Wrapped<String>? email,
    Wrapped<String>? code,
    Wrapped<String>? newPassword,
  }) {
    return AdminResetPasswordRequest(
      email: (email != null ? email.value : this.email),
      code: (code != null ? code.value : this.code),
      newPassword: (newPassword != null ? newPassword.value : this.newPassword),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminResetPasswordResponse {
  const AdminResetPasswordResponse({required this.isSuccess});

  factory AdminResetPasswordResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminResetPasswordResponseFromJson(json);

  static const toJsonFactory = _$AdminResetPasswordResponseToJson;
  Map<String, dynamic> toJson() => _$AdminResetPasswordResponseToJson(this);

  @JsonKey(name: 'isSuccess')
  final bool isSuccess;
  static const fromJsonFactory = _$AdminResetPasswordResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminResetPasswordResponse &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality().equals(
                  other.isSuccess,
                  isSuccess,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(isSuccess) ^ runtimeType.hashCode;
}

extension $AdminResetPasswordResponseExtension on AdminResetPasswordResponse {
  AdminResetPasswordResponse copyWith({bool? isSuccess}) {
    return AdminResetPasswordResponse(isSuccess: isSuccess ?? this.isSuccess);
  }

  AdminResetPasswordResponse copyWithWrapped({Wrapped<bool>? isSuccess}) {
    return AdminResetPasswordResponse(
      isSuccess: (isSuccess != null ? isSuccess.value : this.isSuccess),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminSignOutFromAllDevicesResponse {
  const AdminSignOutFromAllDevicesResponse({required this.isSuccess});

  factory AdminSignOutFromAllDevicesResponse.fromJson(
    Map<String, dynamic> json,
  ) => _$AdminSignOutFromAllDevicesResponseFromJson(json);

  static const toJsonFactory = _$AdminSignOutFromAllDevicesResponseToJson;
  Map<String, dynamic> toJson() =>
      _$AdminSignOutFromAllDevicesResponseToJson(this);

  @JsonKey(name: 'isSuccess')
  final bool isSuccess;
  static const fromJsonFactory = _$AdminSignOutFromAllDevicesResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminSignOutFromAllDevicesResponse &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality().equals(
                  other.isSuccess,
                  isSuccess,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(isSuccess) ^ runtimeType.hashCode;
}

extension $AdminSignOutFromAllDevicesResponseExtension
    on AdminSignOutFromAllDevicesResponse {
  AdminSignOutFromAllDevicesResponse copyWith({bool? isSuccess}) {
    return AdminSignOutFromAllDevicesResponse(
      isSuccess: isSuccess ?? this.isSuccess,
    );
  }

  AdminSignOutFromAllDevicesResponse copyWithWrapped({
    Wrapped<bool>? isSuccess,
  }) {
    return AdminSignOutFromAllDevicesResponse(
      isSuccess: (isSuccess != null ? isSuccess.value : this.isSuccess),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminSignOutRequest {
  const AdminSignOutRequest({required this.refreshToken});

  factory AdminSignOutRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminSignOutRequestFromJson(json);

  static const toJsonFactory = _$AdminSignOutRequestToJson;
  Map<String, dynamic> toJson() => _$AdminSignOutRequestToJson(this);

  @JsonKey(name: 'refreshToken')
  final String refreshToken;
  static const fromJsonFactory = _$AdminSignOutRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminSignOutRequest &&
            (identical(other.refreshToken, refreshToken) ||
                const DeepCollectionEquality().equals(
                  other.refreshToken,
                  refreshToken,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(refreshToken) ^ runtimeType.hashCode;
}

extension $AdminSignOutRequestExtension on AdminSignOutRequest {
  AdminSignOutRequest copyWith({String? refreshToken}) {
    return AdminSignOutRequest(refreshToken: refreshToken ?? this.refreshToken);
  }

  AdminSignOutRequest copyWithWrapped({Wrapped<String>? refreshToken}) {
    return AdminSignOutRequest(
      refreshToken: (refreshToken != null
          ? refreshToken.value
          : this.refreshToken),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminSignOutResponse {
  const AdminSignOutResponse({required this.isSuccess});

  factory AdminSignOutResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminSignOutResponseFromJson(json);

  static const toJsonFactory = _$AdminSignOutResponseToJson;
  Map<String, dynamic> toJson() => _$AdminSignOutResponseToJson(this);

  @JsonKey(name: 'isSuccess')
  final bool isSuccess;
  static const fromJsonFactory = _$AdminSignOutResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminSignOutResponse &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality().equals(
                  other.isSuccess,
                  isSuccess,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(isSuccess) ^ runtimeType.hashCode;
}

extension $AdminSignOutResponseExtension on AdminSignOutResponse {
  AdminSignOutResponse copyWith({bool? isSuccess}) {
    return AdminSignOutResponse(isSuccess: isSuccess ?? this.isSuccess);
  }

  AdminSignOutResponse copyWithWrapped({Wrapped<bool>? isSuccess}) {
    return AdminSignOutResponse(
      isSuccess: (isSuccess != null ? isSuccess.value : this.isSuccess),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminUpdateAvatarResponse {
  const AdminUpdateAvatarResponse({required this.user});

  factory AdminUpdateAvatarResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminUpdateAvatarResponseFromJson(json);

  static const toJsonFactory = _$AdminUpdateAvatarResponseToJson;
  Map<String, dynamic> toJson() => _$AdminUpdateAvatarResponseToJson(this);

  @JsonKey(name: 'user')
  final UserResponseDto user;
  static const fromJsonFactory = _$AdminUpdateAvatarResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminUpdateAvatarResponse &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(user) ^ runtimeType.hashCode;
}

extension $AdminUpdateAvatarResponseExtension on AdminUpdateAvatarResponse {
  AdminUpdateAvatarResponse copyWith({UserResponseDto? user}) {
    return AdminUpdateAvatarResponse(user: user ?? this.user);
  }

  AdminUpdateAvatarResponse copyWithWrapped({Wrapped<UserResponseDto>? user}) {
    return AdminUpdateAvatarResponse(
      user: (user != null ? user.value : this.user),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminUpdateOwnProfileRequest {
  const AdminUpdateOwnProfileRequest({
    this.userName,
    this.countryName,
    this.partialPhoneNumber,
    this.countryIsoCode,
    this.countryDialCode,
  });

  factory AdminUpdateOwnProfileRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminUpdateOwnProfileRequestFromJson(json);

  static const toJsonFactory = _$AdminUpdateOwnProfileRequestToJson;
  Map<String, dynamic> toJson() => _$AdminUpdateOwnProfileRequestToJson(this);

  @JsonKey(name: 'userName')
  final String? userName;
  @JsonKey(name: 'countryName')
  final String? countryName;
  @JsonKey(name: 'partialPhoneNumber')
  final String? partialPhoneNumber;
  @JsonKey(name: 'countryIsoCode')
  final String? countryIsoCode;
  @JsonKey(name: 'countryDialCode')
  final String? countryDialCode;
  static const fromJsonFactory = _$AdminUpdateOwnProfileRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminUpdateOwnProfileRequest &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality().equals(
                  other.userName,
                  userName,
                )) &&
            (identical(other.countryName, countryName) ||
                const DeepCollectionEquality().equals(
                  other.countryName,
                  countryName,
                )) &&
            (identical(other.partialPhoneNumber, partialPhoneNumber) ||
                const DeepCollectionEquality().equals(
                  other.partialPhoneNumber,
                  partialPhoneNumber,
                )) &&
            (identical(other.countryIsoCode, countryIsoCode) ||
                const DeepCollectionEquality().equals(
                  other.countryIsoCode,
                  countryIsoCode,
                )) &&
            (identical(other.countryDialCode, countryDialCode) ||
                const DeepCollectionEquality().equals(
                  other.countryDialCode,
                  countryDialCode,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(countryName) ^
      const DeepCollectionEquality().hash(partialPhoneNumber) ^
      const DeepCollectionEquality().hash(countryIsoCode) ^
      const DeepCollectionEquality().hash(countryDialCode) ^
      runtimeType.hashCode;
}

extension $AdminUpdateOwnProfileRequestExtension
    on AdminUpdateOwnProfileRequest {
  AdminUpdateOwnProfileRequest copyWith({
    String? userName,
    String? countryName,
    String? partialPhoneNumber,
    String? countryIsoCode,
    String? countryDialCode,
  }) {
    return AdminUpdateOwnProfileRequest(
      userName: userName ?? this.userName,
      countryName: countryName ?? this.countryName,
      partialPhoneNumber: partialPhoneNumber ?? this.partialPhoneNumber,
      countryIsoCode: countryIsoCode ?? this.countryIsoCode,
      countryDialCode: countryDialCode ?? this.countryDialCode,
    );
  }

  AdminUpdateOwnProfileRequest copyWithWrapped({
    Wrapped<String?>? userName,
    Wrapped<String?>? countryName,
    Wrapped<String?>? partialPhoneNumber,
    Wrapped<String?>? countryIsoCode,
    Wrapped<String?>? countryDialCode,
  }) {
    return AdminUpdateOwnProfileRequest(
      userName: (userName != null ? userName.value : this.userName),
      countryName: (countryName != null ? countryName.value : this.countryName),
      partialPhoneNumber: (partialPhoneNumber != null
          ? partialPhoneNumber.value
          : this.partialPhoneNumber),
      countryIsoCode: (countryIsoCode != null
          ? countryIsoCode.value
          : this.countryIsoCode),
      countryDialCode: (countryDialCode != null
          ? countryDialCode.value
          : this.countryDialCode),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminUpdateOwnProfileResponse {
  const AdminUpdateOwnProfileResponse({required this.user});

  factory AdminUpdateOwnProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminUpdateOwnProfileResponseFromJson(json);

  static const toJsonFactory = _$AdminUpdateOwnProfileResponseToJson;
  Map<String, dynamic> toJson() => _$AdminUpdateOwnProfileResponseToJson(this);

  @JsonKey(name: 'user')
  final UserResponseDto user;
  static const fromJsonFactory = _$AdminUpdateOwnProfileResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminUpdateOwnProfileResponse &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(user) ^ runtimeType.hashCode;
}

extension $AdminUpdateOwnProfileResponseExtension
    on AdminUpdateOwnProfileResponse {
  AdminUpdateOwnProfileResponse copyWith({UserResponseDto? user}) {
    return AdminUpdateOwnProfileResponse(user: user ?? this.user);
  }

  AdminUpdateOwnProfileResponse copyWithWrapped({
    Wrapped<UserResponseDto>? user,
  }) {
    return AdminUpdateOwnProfileResponse(
      user: (user != null ? user.value : this.user),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminVerifyOtpRequest {
  const AdminVerifyOtpRequest({
    required this.email,
    required this.code,
    required this.purpose,
  });

  factory AdminVerifyOtpRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminVerifyOtpRequestFromJson(json);

  static const toJsonFactory = _$AdminVerifyOtpRequestToJson;
  Map<String, dynamic> toJson() => _$AdminVerifyOtpRequestToJson(this);

  @JsonKey(name: 'email')
  final String email;
  @JsonKey(name: 'code')
  final String code;
  @JsonKey(name: 'purpose')
  final String purpose;
  static const fromJsonFactory = _$AdminVerifyOtpRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminVerifyOtpRequest &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.purpose, purpose) ||
                const DeepCollectionEquality().equals(other.purpose, purpose)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(purpose) ^
      runtimeType.hashCode;
}

extension $AdminVerifyOtpRequestExtension on AdminVerifyOtpRequest {
  AdminVerifyOtpRequest copyWith({
    String? email,
    String? code,
    String? purpose,
  }) {
    return AdminVerifyOtpRequest(
      email: email ?? this.email,
      code: code ?? this.code,
      purpose: purpose ?? this.purpose,
    );
  }

  AdminVerifyOtpRequest copyWithWrapped({
    Wrapped<String>? email,
    Wrapped<String>? code,
    Wrapped<String>? purpose,
  }) {
    return AdminVerifyOtpRequest(
      email: (email != null ? email.value : this.email),
      code: (code != null ? code.value : this.code),
      purpose: (purpose != null ? purpose.value : this.purpose),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AdminVerifyOtpResponse {
  const AdminVerifyOtpResponse({required this.isSuccess});

  factory AdminVerifyOtpResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminVerifyOtpResponseFromJson(json);

  static const toJsonFactory = _$AdminVerifyOtpResponseToJson;
  Map<String, dynamic> toJson() => _$AdminVerifyOtpResponseToJson(this);

  @JsonKey(name: 'isSuccess')
  final bool isSuccess;
  static const fromJsonFactory = _$AdminVerifyOtpResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminVerifyOtpResponse &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality().equals(
                  other.isSuccess,
                  isSuccess,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(isSuccess) ^ runtimeType.hashCode;
}

extension $AdminVerifyOtpResponseExtension on AdminVerifyOtpResponse {
  AdminVerifyOtpResponse copyWith({bool? isSuccess}) {
    return AdminVerifyOtpResponse(isSuccess: isSuccess ?? this.isSuccess);
  }

  AdminVerifyOtpResponse copyWithWrapped({Wrapped<bool>? isSuccess}) {
    return AdminVerifyOtpResponse(
      isSuccess: (isSuccess != null ? isSuccess.value : this.isSuccess),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class BrowserMetrics {
  const BrowserMetrics({
    required this.chrome,
    required this.firefox,
    required this.safari,
    required this.edge,
    required this.opera,
    required this.internetExplorer,
    required this.googleSearchApp,
    required this.samsung,
    required this.unknown,
  });

  factory BrowserMetrics.fromJson(Map<String, dynamic> json) =>
      _$BrowserMetricsFromJson(json);

  static const toJsonFactory = _$BrowserMetricsToJson;
  Map<String, dynamic> toJson() => _$BrowserMetricsToJson(this);

  @JsonKey(name: 'chrome')
  final int chrome;
  @JsonKey(name: 'firefox')
  final int firefox;
  @JsonKey(name: 'safari')
  final int safari;
  @JsonKey(name: 'edge')
  final int edge;
  @JsonKey(name: 'opera')
  final int opera;
  @JsonKey(name: 'internetExplorer')
  final int internetExplorer;
  @JsonKey(name: 'googleSearchApp')
  final int googleSearchApp;
  @JsonKey(name: 'samsung')
  final int samsung;
  @JsonKey(name: 'unknown')
  final int unknown;
  static const fromJsonFactory = _$BrowserMetricsFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is BrowserMetrics &&
            (identical(other.chrome, chrome) ||
                const DeepCollectionEquality().equals(other.chrome, chrome)) &&
            (identical(other.firefox, firefox) ||
                const DeepCollectionEquality().equals(
                  other.firefox,
                  firefox,
                )) &&
            (identical(other.safari, safari) ||
                const DeepCollectionEquality().equals(other.safari, safari)) &&
            (identical(other.edge, edge) ||
                const DeepCollectionEquality().equals(other.edge, edge)) &&
            (identical(other.opera, opera) ||
                const DeepCollectionEquality().equals(other.opera, opera)) &&
            (identical(other.internetExplorer, internetExplorer) ||
                const DeepCollectionEquality().equals(
                  other.internetExplorer,
                  internetExplorer,
                )) &&
            (identical(other.googleSearchApp, googleSearchApp) ||
                const DeepCollectionEquality().equals(
                  other.googleSearchApp,
                  googleSearchApp,
                )) &&
            (identical(other.samsung, samsung) ||
                const DeepCollectionEquality().equals(
                  other.samsung,
                  samsung,
                )) &&
            (identical(other.unknown, unknown) ||
                const DeepCollectionEquality().equals(other.unknown, unknown)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(chrome) ^
      const DeepCollectionEquality().hash(firefox) ^
      const DeepCollectionEquality().hash(safari) ^
      const DeepCollectionEquality().hash(edge) ^
      const DeepCollectionEquality().hash(opera) ^
      const DeepCollectionEquality().hash(internetExplorer) ^
      const DeepCollectionEquality().hash(googleSearchApp) ^
      const DeepCollectionEquality().hash(samsung) ^
      const DeepCollectionEquality().hash(unknown) ^
      runtimeType.hashCode;
}

extension $BrowserMetricsExtension on BrowserMetrics {
  BrowserMetrics copyWith({
    int? chrome,
    int? firefox,
    int? safari,
    int? edge,
    int? opera,
    int? internetExplorer,
    int? googleSearchApp,
    int? samsung,
    int? unknown,
  }) {
    return BrowserMetrics(
      chrome: chrome ?? this.chrome,
      firefox: firefox ?? this.firefox,
      safari: safari ?? this.safari,
      edge: edge ?? this.edge,
      opera: opera ?? this.opera,
      internetExplorer: internetExplorer ?? this.internetExplorer,
      googleSearchApp: googleSearchApp ?? this.googleSearchApp,
      samsung: samsung ?? this.samsung,
      unknown: unknown ?? this.unknown,
    );
  }

  BrowserMetrics copyWithWrapped({
    Wrapped<int>? chrome,
    Wrapped<int>? firefox,
    Wrapped<int>? safari,
    Wrapped<int>? edge,
    Wrapped<int>? opera,
    Wrapped<int>? internetExplorer,
    Wrapped<int>? googleSearchApp,
    Wrapped<int>? samsung,
    Wrapped<int>? unknown,
  }) {
    return BrowserMetrics(
      chrome: (chrome != null ? chrome.value : this.chrome),
      firefox: (firefox != null ? firefox.value : this.firefox),
      safari: (safari != null ? safari.value : this.safari),
      edge: (edge != null ? edge.value : this.edge),
      opera: (opera != null ? opera.value : this.opera),
      internetExplorer: (internetExplorer != null
          ? internetExplorer.value
          : this.internetExplorer),
      googleSearchApp: (googleSearchApp != null
          ? googleSearchApp.value
          : this.googleSearchApp),
      samsung: (samsung != null ? samsung.value : this.samsung),
      unknown: (unknown != null ? unknown.value : this.unknown),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ClientMetrics {
  const ClientMetrics({
    required this.mobileApp,
    required this.webApp,
    required this.dashboard,
    required this.unknown,
  });

  factory ClientMetrics.fromJson(Map<String, dynamic> json) =>
      _$ClientMetricsFromJson(json);

  static const toJsonFactory = _$ClientMetricsToJson;
  Map<String, dynamic> toJson() => _$ClientMetricsToJson(this);

  @JsonKey(name: 'mobileApp')
  final int mobileApp;
  @JsonKey(name: 'webApp')
  final int webApp;
  @JsonKey(name: 'dashboard')
  final int dashboard;
  @JsonKey(name: 'unknown')
  final int unknown;
  static const fromJsonFactory = _$ClientMetricsFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ClientMetrics &&
            (identical(other.mobileApp, mobileApp) ||
                const DeepCollectionEquality().equals(
                  other.mobileApp,
                  mobileApp,
                )) &&
            (identical(other.webApp, webApp) ||
                const DeepCollectionEquality().equals(other.webApp, webApp)) &&
            (identical(other.dashboard, dashboard) ||
                const DeepCollectionEquality().equals(
                  other.dashboard,
                  dashboard,
                )) &&
            (identical(other.unknown, unknown) ||
                const DeepCollectionEquality().equals(other.unknown, unknown)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(mobileApp) ^
      const DeepCollectionEquality().hash(webApp) ^
      const DeepCollectionEquality().hash(dashboard) ^
      const DeepCollectionEquality().hash(unknown) ^
      runtimeType.hashCode;
}

extension $ClientMetricsExtension on ClientMetrics {
  ClientMetrics copyWith({
    int? mobileApp,
    int? webApp,
    int? dashboard,
    int? unknown,
  }) {
    return ClientMetrics(
      mobileApp: mobileApp ?? this.mobileApp,
      webApp: webApp ?? this.webApp,
      dashboard: dashboard ?? this.dashboard,
      unknown: unknown ?? this.unknown,
    );
  }

  ClientMetrics copyWithWrapped({
    Wrapped<int>? mobileApp,
    Wrapped<int>? webApp,
    Wrapped<int>? dashboard,
    Wrapped<int>? unknown,
  }) {
    return ClientMetrics(
      mobileApp: (mobileApp != null ? mobileApp.value : this.mobileApp),
      webApp: (webApp != null ? webApp.value : this.webApp),
      dashboard: (dashboard != null ? dashboard.value : this.dashboard),
      unknown: (unknown != null ? unknown.value : this.unknown),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class DeviceMetrics {
  const DeviceMetrics({
    required this.desktop,
    required this.mobile,
    required this.tablet,
    required this.watch,
    required this.tv,
    required this.console,
    required this.car,
    required this.ioT,
    required this.unknown,
  });

  factory DeviceMetrics.fromJson(Map<String, dynamic> json) =>
      _$DeviceMetricsFromJson(json);

  static const toJsonFactory = _$DeviceMetricsToJson;
  Map<String, dynamic> toJson() => _$DeviceMetricsToJson(this);

  @JsonKey(name: 'desktop')
  final int desktop;
  @JsonKey(name: 'mobile')
  final int mobile;
  @JsonKey(name: 'tablet')
  final int tablet;
  @JsonKey(name: 'watch')
  final int watch;
  @JsonKey(name: 'tv')
  final int tv;
  @JsonKey(name: 'console')
  final int console;
  @JsonKey(name: 'car')
  final int car;
  @JsonKey(name: 'ioT')
  final int ioT;
  @JsonKey(name: 'unknown')
  final int unknown;
  static const fromJsonFactory = _$DeviceMetricsFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is DeviceMetrics &&
            (identical(other.desktop, desktop) ||
                const DeepCollectionEquality().equals(
                  other.desktop,
                  desktop,
                )) &&
            (identical(other.mobile, mobile) ||
                const DeepCollectionEquality().equals(other.mobile, mobile)) &&
            (identical(other.tablet, tablet) ||
                const DeepCollectionEquality().equals(other.tablet, tablet)) &&
            (identical(other.watch, watch) ||
                const DeepCollectionEquality().equals(other.watch, watch)) &&
            (identical(other.tv, tv) ||
                const DeepCollectionEquality().equals(other.tv, tv)) &&
            (identical(other.console, console) ||
                const DeepCollectionEquality().equals(
                  other.console,
                  console,
                )) &&
            (identical(other.car, car) ||
                const DeepCollectionEquality().equals(other.car, car)) &&
            (identical(other.ioT, ioT) ||
                const DeepCollectionEquality().equals(other.ioT, ioT)) &&
            (identical(other.unknown, unknown) ||
                const DeepCollectionEquality().equals(other.unknown, unknown)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(desktop) ^
      const DeepCollectionEquality().hash(mobile) ^
      const DeepCollectionEquality().hash(tablet) ^
      const DeepCollectionEquality().hash(watch) ^
      const DeepCollectionEquality().hash(tv) ^
      const DeepCollectionEquality().hash(console) ^
      const DeepCollectionEquality().hash(car) ^
      const DeepCollectionEquality().hash(ioT) ^
      const DeepCollectionEquality().hash(unknown) ^
      runtimeType.hashCode;
}

extension $DeviceMetricsExtension on DeviceMetrics {
  DeviceMetrics copyWith({
    int? desktop,
    int? mobile,
    int? tablet,
    int? watch,
    int? tv,
    int? console,
    int? car,
    int? ioT,
    int? unknown,
  }) {
    return DeviceMetrics(
      desktop: desktop ?? this.desktop,
      mobile: mobile ?? this.mobile,
      tablet: tablet ?? this.tablet,
      watch: watch ?? this.watch,
      tv: tv ?? this.tv,
      console: console ?? this.console,
      car: car ?? this.car,
      ioT: ioT ?? this.ioT,
      unknown: unknown ?? this.unknown,
    );
  }

  DeviceMetrics copyWithWrapped({
    Wrapped<int>? desktop,
    Wrapped<int>? mobile,
    Wrapped<int>? tablet,
    Wrapped<int>? watch,
    Wrapped<int>? tv,
    Wrapped<int>? console,
    Wrapped<int>? car,
    Wrapped<int>? ioT,
    Wrapped<int>? unknown,
  }) {
    return DeviceMetrics(
      desktop: (desktop != null ? desktop.value : this.desktop),
      mobile: (mobile != null ? mobile.value : this.mobile),
      tablet: (tablet != null ? tablet.value : this.tablet),
      watch: (watch != null ? watch.value : this.watch),
      tv: (tv != null ? tv.value : this.tv),
      console: (console != null ? console.value : this.console),
      car: (car != null ? car.value : this.car),
      ioT: (ioT != null ? ioT.value : this.ioT),
      unknown: (unknown != null ? unknown.value : this.unknown),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class FileDto {
  const FileDto({
    required this.id,
    required this.fileName,
    required this.originalFileName,
    required this.mimeType,
    required this.storageUrl,
    required this.sizeInBytes,
    required this.isDeleted,
  });

  factory FileDto.fromJson(Map<String, dynamic> json) =>
      _$FileDtoFromJson(json);

  static const toJsonFactory = _$FileDtoToJson;
  Map<String, dynamic> toJson() => _$FileDtoToJson(this);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'fileName')
  final String fileName;
  @JsonKey(name: 'originalFileName')
  final String originalFileName;
  @JsonKey(name: 'mimeType')
  final String mimeType;
  @JsonKey(name: 'storageUrl')
  final String storageUrl;
  @JsonKey(name: 'sizeInBytes')
  final int sizeInBytes;
  @JsonKey(name: 'isDeleted')
  final bool isDeleted;
  static const fromJsonFactory = _$FileDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is FileDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.fileName, fileName) ||
                const DeepCollectionEquality().equals(
                  other.fileName,
                  fileName,
                )) &&
            (identical(other.originalFileName, originalFileName) ||
                const DeepCollectionEquality().equals(
                  other.originalFileName,
                  originalFileName,
                )) &&
            (identical(other.mimeType, mimeType) ||
                const DeepCollectionEquality().equals(
                  other.mimeType,
                  mimeType,
                )) &&
            (identical(other.storageUrl, storageUrl) ||
                const DeepCollectionEquality().equals(
                  other.storageUrl,
                  storageUrl,
                )) &&
            (identical(other.sizeInBytes, sizeInBytes) ||
                const DeepCollectionEquality().equals(
                  other.sizeInBytes,
                  sizeInBytes,
                )) &&
            (identical(other.isDeleted, isDeleted) ||
                const DeepCollectionEquality().equals(
                  other.isDeleted,
                  isDeleted,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(fileName) ^
      const DeepCollectionEquality().hash(originalFileName) ^
      const DeepCollectionEquality().hash(mimeType) ^
      const DeepCollectionEquality().hash(storageUrl) ^
      const DeepCollectionEquality().hash(sizeInBytes) ^
      const DeepCollectionEquality().hash(isDeleted) ^
      runtimeType.hashCode;
}

extension $FileDtoExtension on FileDto {
  FileDto copyWith({
    String? id,
    String? fileName,
    String? originalFileName,
    String? mimeType,
    String? storageUrl,
    int? sizeInBytes,
    bool? isDeleted,
  }) {
    return FileDto(
      id: id ?? this.id,
      fileName: fileName ?? this.fileName,
      originalFileName: originalFileName ?? this.originalFileName,
      mimeType: mimeType ?? this.mimeType,
      storageUrl: storageUrl ?? this.storageUrl,
      sizeInBytes: sizeInBytes ?? this.sizeInBytes,
      isDeleted: isDeleted ?? this.isDeleted,
    );
  }

  FileDto copyWithWrapped({
    Wrapped<String>? id,
    Wrapped<String>? fileName,
    Wrapped<String>? originalFileName,
    Wrapped<String>? mimeType,
    Wrapped<String>? storageUrl,
    Wrapped<int>? sizeInBytes,
    Wrapped<bool>? isDeleted,
  }) {
    return FileDto(
      id: (id != null ? id.value : this.id),
      fileName: (fileName != null ? fileName.value : this.fileName),
      originalFileName: (originalFileName != null
          ? originalFileName.value
          : this.originalFileName),
      mimeType: (mimeType != null ? mimeType.value : this.mimeType),
      storageUrl: (storageUrl != null ? storageUrl.value : this.storageUrl),
      sizeInBytes: (sizeInBytes != null ? sizeInBytes.value : this.sizeInBytes),
      isDeleted: (isDeleted != null ? isDeleted.value : this.isDeleted),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class HttpValidationProblemDetails {
  const HttpValidationProblemDetails({
    this.type,
    this.title,
    this.status,
    this.detail,
    this.instance,
    required this.errors,
  });

  factory HttpValidationProblemDetails.fromJson(Map<String, dynamic> json) =>
      _$HttpValidationProblemDetailsFromJson(json);

  static const toJsonFactory = _$HttpValidationProblemDetailsToJson;
  Map<String, dynamic> toJson() => _$HttpValidationProblemDetailsToJson(this);

  @JsonKey(name: 'type')
  final String? type;
  @JsonKey(name: 'title')
  final String? title;
  @JsonKey(name: 'status')
  final int? status;
  @JsonKey(name: 'detail')
  final String? detail;
  @JsonKey(name: 'instance')
  final String? instance;
  @JsonKey(name: 'errors')
  final Map<String, dynamic> errors;
  static const fromJsonFactory = _$HttpValidationProblemDetailsFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is HttpValidationProblemDetails &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.detail, detail) ||
                const DeepCollectionEquality().equals(other.detail, detail)) &&
            (identical(other.instance, instance) ||
                const DeepCollectionEquality().equals(
                  other.instance,
                  instance,
                )) &&
            (identical(other.errors, errors) ||
                const DeepCollectionEquality().equals(other.errors, errors)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(detail) ^
      const DeepCollectionEquality().hash(instance) ^
      const DeepCollectionEquality().hash(errors) ^
      runtimeType.hashCode;
}

extension $HttpValidationProblemDetailsExtension
    on HttpValidationProblemDetails {
  HttpValidationProblemDetails copyWith({
    String? type,
    String? title,
    int? status,
    String? detail,
    String? instance,
    Map<String, dynamic>? errors,
  }) {
    return HttpValidationProblemDetails(
      type: type ?? this.type,
      title: title ?? this.title,
      status: status ?? this.status,
      detail: detail ?? this.detail,
      instance: instance ?? this.instance,
      errors: errors ?? this.errors,
    );
  }

  HttpValidationProblemDetails copyWithWrapped({
    Wrapped<String?>? type,
    Wrapped<String?>? title,
    Wrapped<int?>? status,
    Wrapped<String?>? detail,
    Wrapped<String?>? instance,
    Wrapped<Map<String, dynamic>>? errors,
  }) {
    return HttpValidationProblemDetails(
      type: (type != null ? type.value : this.type),
      title: (title != null ? title.value : this.title),
      status: (status != null ? status.value : this.status),
      detail: (detail != null ? detail.value : this.detail),
      instance: (instance != null ? instance.value : this.instance),
      errors: (errors != null ? errors.value : this.errors),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PermissionDto {
  const PermissionDto({
    required this.id,
    required this.resource,
    required this.action,
    required this.description,
  });

  factory PermissionDto.fromJson(Map<String, dynamic> json) =>
      _$PermissionDtoFromJson(json);

  static const toJsonFactory = _$PermissionDtoToJson;
  Map<String, dynamic> toJson() => _$PermissionDtoToJson(this);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'resource')
  final String resource;
  @JsonKey(name: 'action')
  final String action;
  @JsonKey(name: 'description')
  final String description;
  static const fromJsonFactory = _$PermissionDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PermissionDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.resource, resource) ||
                const DeepCollectionEquality().equals(
                  other.resource,
                  resource,
                )) &&
            (identical(other.action, action) ||
                const DeepCollectionEquality().equals(other.action, action)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality().equals(
                  other.description,
                  description,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(resource) ^
      const DeepCollectionEquality().hash(action) ^
      const DeepCollectionEquality().hash(description) ^
      runtimeType.hashCode;
}

extension $PermissionDtoExtension on PermissionDto {
  PermissionDto copyWith({
    String? id,
    String? resource,
    String? action,
    String? description,
  }) {
    return PermissionDto(
      id: id ?? this.id,
      resource: resource ?? this.resource,
      action: action ?? this.action,
      description: description ?? this.description,
    );
  }

  PermissionDto copyWithWrapped({
    Wrapped<String>? id,
    Wrapped<String>? resource,
    Wrapped<String>? action,
    Wrapped<String>? description,
  }) {
    return PermissionDto(
      id: (id != null ? id.value : this.id),
      resource: (resource != null ? resource.value : this.resource),
      action: (action != null ? action.value : this.action),
      description: (description != null ? description.value : this.description),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PlatformMetrics {
  const PlatformMetrics({
    required this.windows,
    required this.mac,
    required this.ios,
    required this.ipadOs,
    required this.linux,
    required this.android,
    required this.chromeOs,
    required this.unknown,
  });

  factory PlatformMetrics.fromJson(Map<String, dynamic> json) =>
      _$PlatformMetricsFromJson(json);

  static const toJsonFactory = _$PlatformMetricsToJson;
  Map<String, dynamic> toJson() => _$PlatformMetricsToJson(this);

  @JsonKey(name: 'windows')
  final int windows;
  @JsonKey(name: 'mac')
  final int mac;
  @JsonKey(name: 'ios')
  final int ios;
  @JsonKey(name: 'ipadOs')
  final int ipadOs;
  @JsonKey(name: 'linux')
  final int linux;
  @JsonKey(name: 'android')
  final int android;
  @JsonKey(name: 'chromeOs')
  final int chromeOs;
  @JsonKey(name: 'unknown')
  final int unknown;
  static const fromJsonFactory = _$PlatformMetricsFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PlatformMetrics &&
            (identical(other.windows, windows) ||
                const DeepCollectionEquality().equals(
                  other.windows,
                  windows,
                )) &&
            (identical(other.mac, mac) ||
                const DeepCollectionEquality().equals(other.mac, mac)) &&
            (identical(other.ios, ios) ||
                const DeepCollectionEquality().equals(other.ios, ios)) &&
            (identical(other.ipadOs, ipadOs) ||
                const DeepCollectionEquality().equals(other.ipadOs, ipadOs)) &&
            (identical(other.linux, linux) ||
                const DeepCollectionEquality().equals(other.linux, linux)) &&
            (identical(other.android, android) ||
                const DeepCollectionEquality().equals(
                  other.android,
                  android,
                )) &&
            (identical(other.chromeOs, chromeOs) ||
                const DeepCollectionEquality().equals(
                  other.chromeOs,
                  chromeOs,
                )) &&
            (identical(other.unknown, unknown) ||
                const DeepCollectionEquality().equals(other.unknown, unknown)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(windows) ^
      const DeepCollectionEquality().hash(mac) ^
      const DeepCollectionEquality().hash(ios) ^
      const DeepCollectionEquality().hash(ipadOs) ^
      const DeepCollectionEquality().hash(linux) ^
      const DeepCollectionEquality().hash(android) ^
      const DeepCollectionEquality().hash(chromeOs) ^
      const DeepCollectionEquality().hash(unknown) ^
      runtimeType.hashCode;
}

extension $PlatformMetricsExtension on PlatformMetrics {
  PlatformMetrics copyWith({
    int? windows,
    int? mac,
    int? ios,
    int? ipadOs,
    int? linux,
    int? android,
    int? chromeOs,
    int? unknown,
  }) {
    return PlatformMetrics(
      windows: windows ?? this.windows,
      mac: mac ?? this.mac,
      ios: ios ?? this.ios,
      ipadOs: ipadOs ?? this.ipadOs,
      linux: linux ?? this.linux,
      android: android ?? this.android,
      chromeOs: chromeOs ?? this.chromeOs,
      unknown: unknown ?? this.unknown,
    );
  }

  PlatformMetrics copyWithWrapped({
    Wrapped<int>? windows,
    Wrapped<int>? mac,
    Wrapped<int>? ios,
    Wrapped<int>? ipadOs,
    Wrapped<int>? linux,
    Wrapped<int>? android,
    Wrapped<int>? chromeOs,
    Wrapped<int>? unknown,
  }) {
    return PlatformMetrics(
      windows: (windows != null ? windows.value : this.windows),
      mac: (mac != null ? mac.value : this.mac),
      ios: (ios != null ? ios.value : this.ios),
      ipadOs: (ipadOs != null ? ipadOs.value : this.ipadOs),
      linux: (linux != null ? linux.value : this.linux),
      android: (android != null ? android.value : this.android),
      chromeOs: (chromeOs != null ? chromeOs.value : this.chromeOs),
      unknown: (unknown != null ? unknown.value : this.unknown),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ProblemDetails {
  const ProblemDetails({
    this.type,
    this.title,
    this.status,
    this.detail,
    this.instance,
  });

  factory ProblemDetails.fromJson(Map<String, dynamic> json) =>
      _$ProblemDetailsFromJson(json);

  static const toJsonFactory = _$ProblemDetailsToJson;
  Map<String, dynamic> toJson() => _$ProblemDetailsToJson(this);

  @JsonKey(name: 'type')
  final String? type;
  @JsonKey(name: 'title')
  final String? title;
  @JsonKey(name: 'status')
  final int? status;
  @JsonKey(name: 'detail')
  final String? detail;
  @JsonKey(name: 'instance')
  final String? instance;
  static const fromJsonFactory = _$ProblemDetailsFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ProblemDetails &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.detail, detail) ||
                const DeepCollectionEquality().equals(other.detail, detail)) &&
            (identical(other.instance, instance) ||
                const DeepCollectionEquality().equals(
                  other.instance,
                  instance,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(detail) ^
      const DeepCollectionEquality().hash(instance) ^
      runtimeType.hashCode;
}

extension $ProblemDetailsExtension on ProblemDetails {
  ProblemDetails copyWith({
    String? type,
    String? title,
    int? status,
    String? detail,
    String? instance,
  }) {
    return ProblemDetails(
      type: type ?? this.type,
      title: title ?? this.title,
      status: status ?? this.status,
      detail: detail ?? this.detail,
      instance: instance ?? this.instance,
    );
  }

  ProblemDetails copyWithWrapped({
    Wrapped<String?>? type,
    Wrapped<String?>? title,
    Wrapped<int?>? status,
    Wrapped<String?>? detail,
    Wrapped<String?>? instance,
  }) {
    return ProblemDetails(
      type: (type != null ? type.value : this.type),
      title: (title != null ? title.value : this.title),
      status: (status != null ? status.value : this.status),
      detail: (detail != null ? detail.value : this.detail),
      instance: (instance != null ? instance.value : this.instance),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PublicChangePasswordRequest {
  const PublicChangePasswordRequest({
    required this.oldPassword,
    required this.newPassword,
  });

  factory PublicChangePasswordRequest.fromJson(Map<String, dynamic> json) =>
      _$PublicChangePasswordRequestFromJson(json);

  static const toJsonFactory = _$PublicChangePasswordRequestToJson;
  Map<String, dynamic> toJson() => _$PublicChangePasswordRequestToJson(this);

  @JsonKey(name: 'oldPassword')
  final String oldPassword;
  @JsonKey(name: 'newPassword')
  final String newPassword;
  static const fromJsonFactory = _$PublicChangePasswordRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PublicChangePasswordRequest &&
            (identical(other.oldPassword, oldPassword) ||
                const DeepCollectionEquality().equals(
                  other.oldPassword,
                  oldPassword,
                )) &&
            (identical(other.newPassword, newPassword) ||
                const DeepCollectionEquality().equals(
                  other.newPassword,
                  newPassword,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(oldPassword) ^
      const DeepCollectionEquality().hash(newPassword) ^
      runtimeType.hashCode;
}

extension $PublicChangePasswordRequestExtension on PublicChangePasswordRequest {
  PublicChangePasswordRequest copyWith({
    String? oldPassword,
    String? newPassword,
  }) {
    return PublicChangePasswordRequest(
      oldPassword: oldPassword ?? this.oldPassword,
      newPassword: newPassword ?? this.newPassword,
    );
  }

  PublicChangePasswordRequest copyWithWrapped({
    Wrapped<String>? oldPassword,
    Wrapped<String>? newPassword,
  }) {
    return PublicChangePasswordRequest(
      oldPassword: (oldPassword != null ? oldPassword.value : this.oldPassword),
      newPassword: (newPassword != null ? newPassword.value : this.newPassword),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PublicChangePasswordResponse {
  const PublicChangePasswordResponse({required this.isSuccess});

  factory PublicChangePasswordResponse.fromJson(Map<String, dynamic> json) =>
      _$PublicChangePasswordResponseFromJson(json);

  static const toJsonFactory = _$PublicChangePasswordResponseToJson;
  Map<String, dynamic> toJson() => _$PublicChangePasswordResponseToJson(this);

  @JsonKey(name: 'isSuccess')
  final bool isSuccess;
  static const fromJsonFactory = _$PublicChangePasswordResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PublicChangePasswordResponse &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality().equals(
                  other.isSuccess,
                  isSuccess,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(isSuccess) ^ runtimeType.hashCode;
}

extension $PublicChangePasswordResponseExtension
    on PublicChangePasswordResponse {
  PublicChangePasswordResponse copyWith({bool? isSuccess}) {
    return PublicChangePasswordResponse(isSuccess: isSuccess ?? this.isSuccess);
  }

  PublicChangePasswordResponse copyWithWrapped({Wrapped<bool>? isSuccess}) {
    return PublicChangePasswordResponse(
      isSuccess: (isSuccess != null ? isSuccess.value : this.isSuccess),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PublicForgotPasswordRequest {
  const PublicForgotPasswordRequest({required this.email});

  factory PublicForgotPasswordRequest.fromJson(Map<String, dynamic> json) =>
      _$PublicForgotPasswordRequestFromJson(json);

  static const toJsonFactory = _$PublicForgotPasswordRequestToJson;
  Map<String, dynamic> toJson() => _$PublicForgotPasswordRequestToJson(this);

  @JsonKey(name: 'email')
  final String email;
  static const fromJsonFactory = _$PublicForgotPasswordRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PublicForgotPasswordRequest &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(email) ^ runtimeType.hashCode;
}

extension $PublicForgotPasswordRequestExtension on PublicForgotPasswordRequest {
  PublicForgotPasswordRequest copyWith({String? email}) {
    return PublicForgotPasswordRequest(email: email ?? this.email);
  }

  PublicForgotPasswordRequest copyWithWrapped({Wrapped<String>? email}) {
    return PublicForgotPasswordRequest(
      email: (email != null ? email.value : this.email),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PublicForgotPasswordResponse {
  const PublicForgotPasswordResponse({
    required this.isSuccess,
    required this.email,
  });

  factory PublicForgotPasswordResponse.fromJson(Map<String, dynamic> json) =>
      _$PublicForgotPasswordResponseFromJson(json);

  static const toJsonFactory = _$PublicForgotPasswordResponseToJson;
  Map<String, dynamic> toJson() => _$PublicForgotPasswordResponseToJson(this);

  @JsonKey(name: 'isSuccess')
  final bool isSuccess;
  @JsonKey(name: 'email')
  final String email;
  static const fromJsonFactory = _$PublicForgotPasswordResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PublicForgotPasswordResponse &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality().equals(
                  other.isSuccess,
                  isSuccess,
                )) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(isSuccess) ^
      const DeepCollectionEquality().hash(email) ^
      runtimeType.hashCode;
}

extension $PublicForgotPasswordResponseExtension
    on PublicForgotPasswordResponse {
  PublicForgotPasswordResponse copyWith({bool? isSuccess, String? email}) {
    return PublicForgotPasswordResponse(
      isSuccess: isSuccess ?? this.isSuccess,
      email: email ?? this.email,
    );
  }

  PublicForgotPasswordResponse copyWithWrapped({
    Wrapped<bool>? isSuccess,
    Wrapped<String>? email,
  }) {
    return PublicForgotPasswordResponse(
      isSuccess: (isSuccess != null ? isSuccess.value : this.isSuccess),
      email: (email != null ? email.value : this.email),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PublicGetOwnProfileResponse {
  const PublicGetOwnProfileResponse({required this.user});

  factory PublicGetOwnProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$PublicGetOwnProfileResponseFromJson(json);

  static const toJsonFactory = _$PublicGetOwnProfileResponseToJson;
  Map<String, dynamic> toJson() => _$PublicGetOwnProfileResponseToJson(this);

  @JsonKey(name: 'user')
  final UserResponseDto user;
  static const fromJsonFactory = _$PublicGetOwnProfileResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PublicGetOwnProfileResponse &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(user) ^ runtimeType.hashCode;
}

extension $PublicGetOwnProfileResponseExtension on PublicGetOwnProfileResponse {
  PublicGetOwnProfileResponse copyWith({UserResponseDto? user}) {
    return PublicGetOwnProfileResponse(user: user ?? this.user);
  }

  PublicGetOwnProfileResponse copyWithWrapped({
    Wrapped<UserResponseDto>? user,
  }) {
    return PublicGetOwnProfileResponse(
      user: (user != null ? user.value : this.user),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PublicGetOwnSessionByIdResponse {
  const PublicGetOwnSessionByIdResponse({required this.session});

  factory PublicGetOwnSessionByIdResponse.fromJson(Map<String, dynamic> json) =>
      _$PublicGetOwnSessionByIdResponseFromJson(json);

  static const toJsonFactory = _$PublicGetOwnSessionByIdResponseToJson;
  Map<String, dynamic> toJson() =>
      _$PublicGetOwnSessionByIdResponseToJson(this);

  @JsonKey(name: 'session')
  final SessionDto session;
  static const fromJsonFactory = _$PublicGetOwnSessionByIdResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PublicGetOwnSessionByIdResponse &&
            (identical(other.session, session) ||
                const DeepCollectionEquality().equals(other.session, session)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(session) ^ runtimeType.hashCode;
}

extension $PublicGetOwnSessionByIdResponseExtension
    on PublicGetOwnSessionByIdResponse {
  PublicGetOwnSessionByIdResponse copyWith({SessionDto? session}) {
    return PublicGetOwnSessionByIdResponse(session: session ?? this.session);
  }

  PublicGetOwnSessionByIdResponse copyWithWrapped({
    Wrapped<SessionDto>? session,
  }) {
    return PublicGetOwnSessionByIdResponse(
      session: (session != null ? session.value : this.session),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PublicGetOwnSessionsResponse {
  const PublicGetOwnSessionsResponse({required this.sessions});

  factory PublicGetOwnSessionsResponse.fromJson(Map<String, dynamic> json) =>
      _$PublicGetOwnSessionsResponseFromJson(json);

  static const toJsonFactory = _$PublicGetOwnSessionsResponseToJson;
  Map<String, dynamic> toJson() => _$PublicGetOwnSessionsResponseToJson(this);

  @JsonKey(name: 'sessions', defaultValue: <SessionDto>[])
  final List<SessionDto> sessions;
  static const fromJsonFactory = _$PublicGetOwnSessionsResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PublicGetOwnSessionsResponse &&
            (identical(other.sessions, sessions) ||
                const DeepCollectionEquality().equals(
                  other.sessions,
                  sessions,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(sessions) ^ runtimeType.hashCode;
}

extension $PublicGetOwnSessionsResponseExtension
    on PublicGetOwnSessionsResponse {
  PublicGetOwnSessionsResponse copyWith({List<SessionDto>? sessions}) {
    return PublicGetOwnSessionsResponse(sessions: sessions ?? this.sessions);
  }

  PublicGetOwnSessionsResponse copyWithWrapped({
    Wrapped<List<SessionDto>>? sessions,
  }) {
    return PublicGetOwnSessionsResponse(
      sessions: (sessions != null ? sessions.value : this.sessions),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PublicLoginRequest {
  const PublicLoginRequest({required this.credentials, required this.password});

  factory PublicLoginRequest.fromJson(Map<String, dynamic> json) =>
      _$PublicLoginRequestFromJson(json);

  static const toJsonFactory = _$PublicLoginRequestToJson;
  Map<String, dynamic> toJson() => _$PublicLoginRequestToJson(this);

  @JsonKey(name: 'credentials')
  final String credentials;
  @JsonKey(name: 'password')
  final String password;
  static const fromJsonFactory = _$PublicLoginRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PublicLoginRequest &&
            (identical(other.credentials, credentials) ||
                const DeepCollectionEquality().equals(
                  other.credentials,
                  credentials,
                )) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality().equals(
                  other.password,
                  password,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(credentials) ^
      const DeepCollectionEquality().hash(password) ^
      runtimeType.hashCode;
}

extension $PublicLoginRequestExtension on PublicLoginRequest {
  PublicLoginRequest copyWith({String? credentials, String? password}) {
    return PublicLoginRequest(
      credentials: credentials ?? this.credentials,
      password: password ?? this.password,
    );
  }

  PublicLoginRequest copyWithWrapped({
    Wrapped<String>? credentials,
    Wrapped<String>? password,
  }) {
    return PublicLoginRequest(
      credentials: (credentials != null ? credentials.value : this.credentials),
      password: (password != null ? password.value : this.password),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PublicLoginResponse {
  const PublicLoginResponse({
    required this.user,
    required this.accessToken,
    required this.accessTokenExpiresAt,
    required this.refreshToken,
    required this.refreshTokenExpiresAt,
    required this.tokenType,
  });

  factory PublicLoginResponse.fromJson(Map<String, dynamic> json) =>
      _$PublicLoginResponseFromJson(json);

  static const toJsonFactory = _$PublicLoginResponseToJson;
  Map<String, dynamic> toJson() => _$PublicLoginResponseToJson(this);

  @JsonKey(name: 'user')
  final UserResponseDto user;
  @JsonKey(name: 'accessToken')
  final String accessToken;
  @JsonKey(name: 'accessTokenExpiresAt')
  final DateTime accessTokenExpiresAt;
  @JsonKey(name: 'refreshToken')
  final String refreshToken;
  @JsonKey(name: 'refreshTokenExpiresAt')
  final DateTime refreshTokenExpiresAt;
  @JsonKey(name: 'tokenType')
  final String tokenType;
  static const fromJsonFactory = _$PublicLoginResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PublicLoginResponse &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.accessToken, accessToken) ||
                const DeepCollectionEquality().equals(
                  other.accessToken,
                  accessToken,
                )) &&
            (identical(other.accessTokenExpiresAt, accessTokenExpiresAt) ||
                const DeepCollectionEquality().equals(
                  other.accessTokenExpiresAt,
                  accessTokenExpiresAt,
                )) &&
            (identical(other.refreshToken, refreshToken) ||
                const DeepCollectionEquality().equals(
                  other.refreshToken,
                  refreshToken,
                )) &&
            (identical(other.refreshTokenExpiresAt, refreshTokenExpiresAt) ||
                const DeepCollectionEquality().equals(
                  other.refreshTokenExpiresAt,
                  refreshTokenExpiresAt,
                )) &&
            (identical(other.tokenType, tokenType) ||
                const DeepCollectionEquality().equals(
                  other.tokenType,
                  tokenType,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(accessToken) ^
      const DeepCollectionEquality().hash(accessTokenExpiresAt) ^
      const DeepCollectionEquality().hash(refreshToken) ^
      const DeepCollectionEquality().hash(refreshTokenExpiresAt) ^
      const DeepCollectionEquality().hash(tokenType) ^
      runtimeType.hashCode;
}

extension $PublicLoginResponseExtension on PublicLoginResponse {
  PublicLoginResponse copyWith({
    UserResponseDto? user,
    String? accessToken,
    DateTime? accessTokenExpiresAt,
    String? refreshToken,
    DateTime? refreshTokenExpiresAt,
    String? tokenType,
  }) {
    return PublicLoginResponse(
      user: user ?? this.user,
      accessToken: accessToken ?? this.accessToken,
      accessTokenExpiresAt: accessTokenExpiresAt ?? this.accessTokenExpiresAt,
      refreshToken: refreshToken ?? this.refreshToken,
      refreshTokenExpiresAt:
          refreshTokenExpiresAt ?? this.refreshTokenExpiresAt,
      tokenType: tokenType ?? this.tokenType,
    );
  }

  PublicLoginResponse copyWithWrapped({
    Wrapped<UserResponseDto>? user,
    Wrapped<String>? accessToken,
    Wrapped<DateTime>? accessTokenExpiresAt,
    Wrapped<String>? refreshToken,
    Wrapped<DateTime>? refreshTokenExpiresAt,
    Wrapped<String>? tokenType,
  }) {
    return PublicLoginResponse(
      user: (user != null ? user.value : this.user),
      accessToken: (accessToken != null ? accessToken.value : this.accessToken),
      accessTokenExpiresAt: (accessTokenExpiresAt != null
          ? accessTokenExpiresAt.value
          : this.accessTokenExpiresAt),
      refreshToken: (refreshToken != null
          ? refreshToken.value
          : this.refreshToken),
      refreshTokenExpiresAt: (refreshTokenExpiresAt != null
          ? refreshTokenExpiresAt.value
          : this.refreshTokenExpiresAt),
      tokenType: (tokenType != null ? tokenType.value : this.tokenType),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PublicRefreshTokenRequest {
  const PublicRefreshTokenRequest({required this.refreshToken});

  factory PublicRefreshTokenRequest.fromJson(Map<String, dynamic> json) =>
      _$PublicRefreshTokenRequestFromJson(json);

  static const toJsonFactory = _$PublicRefreshTokenRequestToJson;
  Map<String, dynamic> toJson() => _$PublicRefreshTokenRequestToJson(this);

  @JsonKey(name: 'refreshToken')
  final String refreshToken;
  static const fromJsonFactory = _$PublicRefreshTokenRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PublicRefreshTokenRequest &&
            (identical(other.refreshToken, refreshToken) ||
                const DeepCollectionEquality().equals(
                  other.refreshToken,
                  refreshToken,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(refreshToken) ^ runtimeType.hashCode;
}

extension $PublicRefreshTokenRequestExtension on PublicRefreshTokenRequest {
  PublicRefreshTokenRequest copyWith({String? refreshToken}) {
    return PublicRefreshTokenRequest(
      refreshToken: refreshToken ?? this.refreshToken,
    );
  }

  PublicRefreshTokenRequest copyWithWrapped({Wrapped<String>? refreshToken}) {
    return PublicRefreshTokenRequest(
      refreshToken: (refreshToken != null
          ? refreshToken.value
          : this.refreshToken),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PublicRefreshTokenResponse {
  const PublicRefreshTokenResponse({
    required this.user,
    required this.accessToken,
    required this.accessTokenExpiresAt,
    required this.refreshToken,
    required this.refreshTokenExpiresAt,
    required this.tokenType,
  });

  factory PublicRefreshTokenResponse.fromJson(Map<String, dynamic> json) =>
      _$PublicRefreshTokenResponseFromJson(json);

  static const toJsonFactory = _$PublicRefreshTokenResponseToJson;
  Map<String, dynamic> toJson() => _$PublicRefreshTokenResponseToJson(this);

  @JsonKey(name: 'user')
  final UserResponseDto user;
  @JsonKey(name: 'accessToken')
  final String accessToken;
  @JsonKey(name: 'accessTokenExpiresAt')
  final DateTime accessTokenExpiresAt;
  @JsonKey(name: 'refreshToken')
  final String refreshToken;
  @JsonKey(name: 'refreshTokenExpiresAt')
  final DateTime refreshTokenExpiresAt;
  @JsonKey(name: 'tokenType')
  final String tokenType;
  static const fromJsonFactory = _$PublicRefreshTokenResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PublicRefreshTokenResponse &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.accessToken, accessToken) ||
                const DeepCollectionEquality().equals(
                  other.accessToken,
                  accessToken,
                )) &&
            (identical(other.accessTokenExpiresAt, accessTokenExpiresAt) ||
                const DeepCollectionEquality().equals(
                  other.accessTokenExpiresAt,
                  accessTokenExpiresAt,
                )) &&
            (identical(other.refreshToken, refreshToken) ||
                const DeepCollectionEquality().equals(
                  other.refreshToken,
                  refreshToken,
                )) &&
            (identical(other.refreshTokenExpiresAt, refreshTokenExpiresAt) ||
                const DeepCollectionEquality().equals(
                  other.refreshTokenExpiresAt,
                  refreshTokenExpiresAt,
                )) &&
            (identical(other.tokenType, tokenType) ||
                const DeepCollectionEquality().equals(
                  other.tokenType,
                  tokenType,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(accessToken) ^
      const DeepCollectionEquality().hash(accessTokenExpiresAt) ^
      const DeepCollectionEquality().hash(refreshToken) ^
      const DeepCollectionEquality().hash(refreshTokenExpiresAt) ^
      const DeepCollectionEquality().hash(tokenType) ^
      runtimeType.hashCode;
}

extension $PublicRefreshTokenResponseExtension on PublicRefreshTokenResponse {
  PublicRefreshTokenResponse copyWith({
    UserResponseDto? user,
    String? accessToken,
    DateTime? accessTokenExpiresAt,
    String? refreshToken,
    DateTime? refreshTokenExpiresAt,
    String? tokenType,
  }) {
    return PublicRefreshTokenResponse(
      user: user ?? this.user,
      accessToken: accessToken ?? this.accessToken,
      accessTokenExpiresAt: accessTokenExpiresAt ?? this.accessTokenExpiresAt,
      refreshToken: refreshToken ?? this.refreshToken,
      refreshTokenExpiresAt:
          refreshTokenExpiresAt ?? this.refreshTokenExpiresAt,
      tokenType: tokenType ?? this.tokenType,
    );
  }

  PublicRefreshTokenResponse copyWithWrapped({
    Wrapped<UserResponseDto>? user,
    Wrapped<String>? accessToken,
    Wrapped<DateTime>? accessTokenExpiresAt,
    Wrapped<String>? refreshToken,
    Wrapped<DateTime>? refreshTokenExpiresAt,
    Wrapped<String>? tokenType,
  }) {
    return PublicRefreshTokenResponse(
      user: (user != null ? user.value : this.user),
      accessToken: (accessToken != null ? accessToken.value : this.accessToken),
      accessTokenExpiresAt: (accessTokenExpiresAt != null
          ? accessTokenExpiresAt.value
          : this.accessTokenExpiresAt),
      refreshToken: (refreshToken != null
          ? refreshToken.value
          : this.refreshToken),
      refreshTokenExpiresAt: (refreshTokenExpiresAt != null
          ? refreshTokenExpiresAt.value
          : this.refreshTokenExpiresAt),
      tokenType: (tokenType != null ? tokenType.value : this.tokenType),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PublicResendOtpRequest {
  const PublicResendOtpRequest({required this.email, required this.purpose});

  factory PublicResendOtpRequest.fromJson(Map<String, dynamic> json) =>
      _$PublicResendOtpRequestFromJson(json);

  static const toJsonFactory = _$PublicResendOtpRequestToJson;
  Map<String, dynamic> toJson() => _$PublicResendOtpRequestToJson(this);

  @JsonKey(name: 'email')
  final String email;
  @JsonKey(name: 'purpose')
  final String purpose;
  static const fromJsonFactory = _$PublicResendOtpRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PublicResendOtpRequest &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.purpose, purpose) ||
                const DeepCollectionEquality().equals(other.purpose, purpose)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(purpose) ^
      runtimeType.hashCode;
}

extension $PublicResendOtpRequestExtension on PublicResendOtpRequest {
  PublicResendOtpRequest copyWith({String? email, String? purpose}) {
    return PublicResendOtpRequest(
      email: email ?? this.email,
      purpose: purpose ?? this.purpose,
    );
  }

  PublicResendOtpRequest copyWithWrapped({
    Wrapped<String>? email,
    Wrapped<String>? purpose,
  }) {
    return PublicResendOtpRequest(
      email: (email != null ? email.value : this.email),
      purpose: (purpose != null ? purpose.value : this.purpose),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PublicResendOtpResponse {
  const PublicResendOtpResponse({required this.isSuccess});

  factory PublicResendOtpResponse.fromJson(Map<String, dynamic> json) =>
      _$PublicResendOtpResponseFromJson(json);

  static const toJsonFactory = _$PublicResendOtpResponseToJson;
  Map<String, dynamic> toJson() => _$PublicResendOtpResponseToJson(this);

  @JsonKey(name: 'isSuccess')
  final bool isSuccess;
  static const fromJsonFactory = _$PublicResendOtpResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PublicResendOtpResponse &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality().equals(
                  other.isSuccess,
                  isSuccess,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(isSuccess) ^ runtimeType.hashCode;
}

extension $PublicResendOtpResponseExtension on PublicResendOtpResponse {
  PublicResendOtpResponse copyWith({bool? isSuccess}) {
    return PublicResendOtpResponse(isSuccess: isSuccess ?? this.isSuccess);
  }

  PublicResendOtpResponse copyWithWrapped({Wrapped<bool>? isSuccess}) {
    return PublicResendOtpResponse(
      isSuccess: (isSuccess != null ? isSuccess.value : this.isSuccess),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PublicResetPasswordRequest {
  const PublicResetPasswordRequest({
    required this.email,
    required this.code,
    required this.newPassword,
  });

  factory PublicResetPasswordRequest.fromJson(Map<String, dynamic> json) =>
      _$PublicResetPasswordRequestFromJson(json);

  static const toJsonFactory = _$PublicResetPasswordRequestToJson;
  Map<String, dynamic> toJson() => _$PublicResetPasswordRequestToJson(this);

  @JsonKey(name: 'email')
  final String email;
  @JsonKey(name: 'code')
  final String code;
  @JsonKey(name: 'newPassword')
  final String newPassword;
  static const fromJsonFactory = _$PublicResetPasswordRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PublicResetPasswordRequest &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.newPassword, newPassword) ||
                const DeepCollectionEquality().equals(
                  other.newPassword,
                  newPassword,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(newPassword) ^
      runtimeType.hashCode;
}

extension $PublicResetPasswordRequestExtension on PublicResetPasswordRequest {
  PublicResetPasswordRequest copyWith({
    String? email,
    String? code,
    String? newPassword,
  }) {
    return PublicResetPasswordRequest(
      email: email ?? this.email,
      code: code ?? this.code,
      newPassword: newPassword ?? this.newPassword,
    );
  }

  PublicResetPasswordRequest copyWithWrapped({
    Wrapped<String>? email,
    Wrapped<String>? code,
    Wrapped<String>? newPassword,
  }) {
    return PublicResetPasswordRequest(
      email: (email != null ? email.value : this.email),
      code: (code != null ? code.value : this.code),
      newPassword: (newPassword != null ? newPassword.value : this.newPassword),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PublicResetPasswordResponse {
  const PublicResetPasswordResponse({required this.isSuccess});

  factory PublicResetPasswordResponse.fromJson(Map<String, dynamic> json) =>
      _$PublicResetPasswordResponseFromJson(json);

  static const toJsonFactory = _$PublicResetPasswordResponseToJson;
  Map<String, dynamic> toJson() => _$PublicResetPasswordResponseToJson(this);

  @JsonKey(name: 'isSuccess')
  final bool isSuccess;
  static const fromJsonFactory = _$PublicResetPasswordResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PublicResetPasswordResponse &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality().equals(
                  other.isSuccess,
                  isSuccess,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(isSuccess) ^ runtimeType.hashCode;
}

extension $PublicResetPasswordResponseExtension on PublicResetPasswordResponse {
  PublicResetPasswordResponse copyWith({bool? isSuccess}) {
    return PublicResetPasswordResponse(isSuccess: isSuccess ?? this.isSuccess);
  }

  PublicResetPasswordResponse copyWithWrapped({Wrapped<bool>? isSuccess}) {
    return PublicResetPasswordResponse(
      isSuccess: (isSuccess != null ? isSuccess.value : this.isSuccess),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PublicRevokeSessionResponse {
  const PublicRevokeSessionResponse({required this.isSuccess});

  factory PublicRevokeSessionResponse.fromJson(Map<String, dynamic> json) =>
      _$PublicRevokeSessionResponseFromJson(json);

  static const toJsonFactory = _$PublicRevokeSessionResponseToJson;
  Map<String, dynamic> toJson() => _$PublicRevokeSessionResponseToJson(this);

  @JsonKey(name: 'isSuccess')
  final bool isSuccess;
  static const fromJsonFactory = _$PublicRevokeSessionResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PublicRevokeSessionResponse &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality().equals(
                  other.isSuccess,
                  isSuccess,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(isSuccess) ^ runtimeType.hashCode;
}

extension $PublicRevokeSessionResponseExtension on PublicRevokeSessionResponse {
  PublicRevokeSessionResponse copyWith({bool? isSuccess}) {
    return PublicRevokeSessionResponse(isSuccess: isSuccess ?? this.isSuccess);
  }

  PublicRevokeSessionResponse copyWithWrapped({Wrapped<bool>? isSuccess}) {
    return PublicRevokeSessionResponse(
      isSuccess: (isSuccess != null ? isSuccess.value : this.isSuccess),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PublicSetPasswordRequest {
  const PublicSetPasswordRequest({required this.password});

  factory PublicSetPasswordRequest.fromJson(Map<String, dynamic> json) =>
      _$PublicSetPasswordRequestFromJson(json);

  static const toJsonFactory = _$PublicSetPasswordRequestToJson;
  Map<String, dynamic> toJson() => _$PublicSetPasswordRequestToJson(this);

  @JsonKey(name: 'password')
  final String password;
  static const fromJsonFactory = _$PublicSetPasswordRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PublicSetPasswordRequest &&
            (identical(other.password, password) ||
                const DeepCollectionEquality().equals(
                  other.password,
                  password,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(password) ^ runtimeType.hashCode;
}

extension $PublicSetPasswordRequestExtension on PublicSetPasswordRequest {
  PublicSetPasswordRequest copyWith({String? password}) {
    return PublicSetPasswordRequest(password: password ?? this.password);
  }

  PublicSetPasswordRequest copyWithWrapped({Wrapped<String>? password}) {
    return PublicSetPasswordRequest(
      password: (password != null ? password.value : this.password),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PublicSetPasswordResponse {
  const PublicSetPasswordResponse({required this.isSuccess});

  factory PublicSetPasswordResponse.fromJson(Map<String, dynamic> json) =>
      _$PublicSetPasswordResponseFromJson(json);

  static const toJsonFactory = _$PublicSetPasswordResponseToJson;
  Map<String, dynamic> toJson() => _$PublicSetPasswordResponseToJson(this);

  @JsonKey(name: 'isSuccess')
  final bool isSuccess;
  static const fromJsonFactory = _$PublicSetPasswordResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PublicSetPasswordResponse &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality().equals(
                  other.isSuccess,
                  isSuccess,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(isSuccess) ^ runtimeType.hashCode;
}

extension $PublicSetPasswordResponseExtension on PublicSetPasswordResponse {
  PublicSetPasswordResponse copyWith({bool? isSuccess}) {
    return PublicSetPasswordResponse(isSuccess: isSuccess ?? this.isSuccess);
  }

  PublicSetPasswordResponse copyWithWrapped({Wrapped<bool>? isSuccess}) {
    return PublicSetPasswordResponse(
      isSuccess: (isSuccess != null ? isSuccess.value : this.isSuccess),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PublicSignOutFromAllDevicesResponse {
  const PublicSignOutFromAllDevicesResponse({required this.isSuccess});

  factory PublicSignOutFromAllDevicesResponse.fromJson(
    Map<String, dynamic> json,
  ) => _$PublicSignOutFromAllDevicesResponseFromJson(json);

  static const toJsonFactory = _$PublicSignOutFromAllDevicesResponseToJson;
  Map<String, dynamic> toJson() =>
      _$PublicSignOutFromAllDevicesResponseToJson(this);

  @JsonKey(name: 'isSuccess')
  final bool isSuccess;
  static const fromJsonFactory = _$PublicSignOutFromAllDevicesResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PublicSignOutFromAllDevicesResponse &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality().equals(
                  other.isSuccess,
                  isSuccess,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(isSuccess) ^ runtimeType.hashCode;
}

extension $PublicSignOutFromAllDevicesResponseExtension
    on PublicSignOutFromAllDevicesResponse {
  PublicSignOutFromAllDevicesResponse copyWith({bool? isSuccess}) {
    return PublicSignOutFromAllDevicesResponse(
      isSuccess: isSuccess ?? this.isSuccess,
    );
  }

  PublicSignOutFromAllDevicesResponse copyWithWrapped({
    Wrapped<bool>? isSuccess,
  }) {
    return PublicSignOutFromAllDevicesResponse(
      isSuccess: (isSuccess != null ? isSuccess.value : this.isSuccess),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PublicSignOutRequest {
  const PublicSignOutRequest({required this.refreshToken});

  factory PublicSignOutRequest.fromJson(Map<String, dynamic> json) =>
      _$PublicSignOutRequestFromJson(json);

  static const toJsonFactory = _$PublicSignOutRequestToJson;
  Map<String, dynamic> toJson() => _$PublicSignOutRequestToJson(this);

  @JsonKey(name: 'refreshToken')
  final String refreshToken;
  static const fromJsonFactory = _$PublicSignOutRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PublicSignOutRequest &&
            (identical(other.refreshToken, refreshToken) ||
                const DeepCollectionEquality().equals(
                  other.refreshToken,
                  refreshToken,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(refreshToken) ^ runtimeType.hashCode;
}

extension $PublicSignOutRequestExtension on PublicSignOutRequest {
  PublicSignOutRequest copyWith({String? refreshToken}) {
    return PublicSignOutRequest(
      refreshToken: refreshToken ?? this.refreshToken,
    );
  }

  PublicSignOutRequest copyWithWrapped({Wrapped<String>? refreshToken}) {
    return PublicSignOutRequest(
      refreshToken: (refreshToken != null
          ? refreshToken.value
          : this.refreshToken),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PublicSignOutResponse {
  const PublicSignOutResponse({required this.isSuccess});

  factory PublicSignOutResponse.fromJson(Map<String, dynamic> json) =>
      _$PublicSignOutResponseFromJson(json);

  static const toJsonFactory = _$PublicSignOutResponseToJson;
  Map<String, dynamic> toJson() => _$PublicSignOutResponseToJson(this);

  @JsonKey(name: 'isSuccess')
  final bool isSuccess;
  static const fromJsonFactory = _$PublicSignOutResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PublicSignOutResponse &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality().equals(
                  other.isSuccess,
                  isSuccess,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(isSuccess) ^ runtimeType.hashCode;
}

extension $PublicSignOutResponseExtension on PublicSignOutResponse {
  PublicSignOutResponse copyWith({bool? isSuccess}) {
    return PublicSignOutResponse(isSuccess: isSuccess ?? this.isSuccess);
  }

  PublicSignOutResponse copyWithWrapped({Wrapped<bool>? isSuccess}) {
    return PublicSignOutResponse(
      isSuccess: (isSuccess != null ? isSuccess.value : this.isSuccess),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PublicSignUpRequest {
  const PublicSignUpRequest({
    required this.email,
    required this.userName,
    required this.password,
  });

  factory PublicSignUpRequest.fromJson(Map<String, dynamic> json) =>
      _$PublicSignUpRequestFromJson(json);

  static const toJsonFactory = _$PublicSignUpRequestToJson;
  Map<String, dynamic> toJson() => _$PublicSignUpRequestToJson(this);

  @JsonKey(name: 'email')
  final String email;
  @JsonKey(name: 'userName')
  final String userName;
  @JsonKey(name: 'password')
  final String password;
  static const fromJsonFactory = _$PublicSignUpRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PublicSignUpRequest &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality().equals(
                  other.userName,
                  userName,
                )) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality().equals(
                  other.password,
                  password,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(password) ^
      runtimeType.hashCode;
}

extension $PublicSignUpRequestExtension on PublicSignUpRequest {
  PublicSignUpRequest copyWith({
    String? email,
    String? userName,
    String? password,
  }) {
    return PublicSignUpRequest(
      email: email ?? this.email,
      userName: userName ?? this.userName,
      password: password ?? this.password,
    );
  }

  PublicSignUpRequest copyWithWrapped({
    Wrapped<String>? email,
    Wrapped<String>? userName,
    Wrapped<String>? password,
  }) {
    return PublicSignUpRequest(
      email: (email != null ? email.value : this.email),
      userName: (userName != null ? userName.value : this.userName),
      password: (password != null ? password.value : this.password),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PublicSignUpResponse {
  const PublicSignUpResponse({
    required this.user,
    required this.accessToken,
    required this.accessTokenExpiresAt,
    required this.refreshToken,
    required this.refreshTokenExpiresAt,
    required this.tokenType,
    required this.verificationRequired,
  });

  factory PublicSignUpResponse.fromJson(Map<String, dynamic> json) =>
      _$PublicSignUpResponseFromJson(json);

  static const toJsonFactory = _$PublicSignUpResponseToJson;
  Map<String, dynamic> toJson() => _$PublicSignUpResponseToJson(this);

  @JsonKey(name: 'user')
  final UserResponseDto user;
  @JsonKey(name: 'accessToken')
  final String accessToken;
  @JsonKey(name: 'accessTokenExpiresAt')
  final DateTime accessTokenExpiresAt;
  @JsonKey(name: 'refreshToken')
  final String refreshToken;
  @JsonKey(name: 'refreshTokenExpiresAt')
  final DateTime refreshTokenExpiresAt;
  @JsonKey(name: 'tokenType')
  final String tokenType;
  @JsonKey(name: 'verificationRequired')
  final bool verificationRequired;
  static const fromJsonFactory = _$PublicSignUpResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PublicSignUpResponse &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.accessToken, accessToken) ||
                const DeepCollectionEquality().equals(
                  other.accessToken,
                  accessToken,
                )) &&
            (identical(other.accessTokenExpiresAt, accessTokenExpiresAt) ||
                const DeepCollectionEquality().equals(
                  other.accessTokenExpiresAt,
                  accessTokenExpiresAt,
                )) &&
            (identical(other.refreshToken, refreshToken) ||
                const DeepCollectionEquality().equals(
                  other.refreshToken,
                  refreshToken,
                )) &&
            (identical(other.refreshTokenExpiresAt, refreshTokenExpiresAt) ||
                const DeepCollectionEquality().equals(
                  other.refreshTokenExpiresAt,
                  refreshTokenExpiresAt,
                )) &&
            (identical(other.tokenType, tokenType) ||
                const DeepCollectionEquality().equals(
                  other.tokenType,
                  tokenType,
                )) &&
            (identical(other.verificationRequired, verificationRequired) ||
                const DeepCollectionEquality().equals(
                  other.verificationRequired,
                  verificationRequired,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(accessToken) ^
      const DeepCollectionEquality().hash(accessTokenExpiresAt) ^
      const DeepCollectionEquality().hash(refreshToken) ^
      const DeepCollectionEquality().hash(refreshTokenExpiresAt) ^
      const DeepCollectionEquality().hash(tokenType) ^
      const DeepCollectionEquality().hash(verificationRequired) ^
      runtimeType.hashCode;
}

extension $PublicSignUpResponseExtension on PublicSignUpResponse {
  PublicSignUpResponse copyWith({
    UserResponseDto? user,
    String? accessToken,
    DateTime? accessTokenExpiresAt,
    String? refreshToken,
    DateTime? refreshTokenExpiresAt,
    String? tokenType,
    bool? verificationRequired,
  }) {
    return PublicSignUpResponse(
      user: user ?? this.user,
      accessToken: accessToken ?? this.accessToken,
      accessTokenExpiresAt: accessTokenExpiresAt ?? this.accessTokenExpiresAt,
      refreshToken: refreshToken ?? this.refreshToken,
      refreshTokenExpiresAt:
          refreshTokenExpiresAt ?? this.refreshTokenExpiresAt,
      tokenType: tokenType ?? this.tokenType,
      verificationRequired: verificationRequired ?? this.verificationRequired,
    );
  }

  PublicSignUpResponse copyWithWrapped({
    Wrapped<UserResponseDto>? user,
    Wrapped<String>? accessToken,
    Wrapped<DateTime>? accessTokenExpiresAt,
    Wrapped<String>? refreshToken,
    Wrapped<DateTime>? refreshTokenExpiresAt,
    Wrapped<String>? tokenType,
    Wrapped<bool>? verificationRequired,
  }) {
    return PublicSignUpResponse(
      user: (user != null ? user.value : this.user),
      accessToken: (accessToken != null ? accessToken.value : this.accessToken),
      accessTokenExpiresAt: (accessTokenExpiresAt != null
          ? accessTokenExpiresAt.value
          : this.accessTokenExpiresAt),
      refreshToken: (refreshToken != null
          ? refreshToken.value
          : this.refreshToken),
      refreshTokenExpiresAt: (refreshTokenExpiresAt != null
          ? refreshTokenExpiresAt.value
          : this.refreshTokenExpiresAt),
      tokenType: (tokenType != null ? tokenType.value : this.tokenType),
      verificationRequired: (verificationRequired != null
          ? verificationRequired.value
          : this.verificationRequired),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PublicSocialLoginRequest {
  const PublicSocialLoginRequest({
    required this.email,
    required this.userName,
    this.avatarUrl,
    required this.provider,
  });

  factory PublicSocialLoginRequest.fromJson(Map<String, dynamic> json) =>
      _$PublicSocialLoginRequestFromJson(json);

  static const toJsonFactory = _$PublicSocialLoginRequestToJson;
  Map<String, dynamic> toJson() => _$PublicSocialLoginRequestToJson(this);

  @JsonKey(name: 'email')
  final String email;
  @JsonKey(name: 'userName')
  final String userName;
  @JsonKey(name: 'avatarUrl')
  final String? avatarUrl;
  @JsonKey(name: 'provider')
  final String provider;
  static const fromJsonFactory = _$PublicSocialLoginRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PublicSocialLoginRequest &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality().equals(
                  other.userName,
                  userName,
                )) &&
            (identical(other.avatarUrl, avatarUrl) ||
                const DeepCollectionEquality().equals(
                  other.avatarUrl,
                  avatarUrl,
                )) &&
            (identical(other.provider, provider) ||
                const DeepCollectionEquality().equals(
                  other.provider,
                  provider,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(avatarUrl) ^
      const DeepCollectionEquality().hash(provider) ^
      runtimeType.hashCode;
}

extension $PublicSocialLoginRequestExtension on PublicSocialLoginRequest {
  PublicSocialLoginRequest copyWith({
    String? email,
    String? userName,
    String? avatarUrl,
    String? provider,
  }) {
    return PublicSocialLoginRequest(
      email: email ?? this.email,
      userName: userName ?? this.userName,
      avatarUrl: avatarUrl ?? this.avatarUrl,
      provider: provider ?? this.provider,
    );
  }

  PublicSocialLoginRequest copyWithWrapped({
    Wrapped<String>? email,
    Wrapped<String>? userName,
    Wrapped<String?>? avatarUrl,
    Wrapped<String>? provider,
  }) {
    return PublicSocialLoginRequest(
      email: (email != null ? email.value : this.email),
      userName: (userName != null ? userName.value : this.userName),
      avatarUrl: (avatarUrl != null ? avatarUrl.value : this.avatarUrl),
      provider: (provider != null ? provider.value : this.provider),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PublicSocialLoginResponse {
  const PublicSocialLoginResponse({
    required this.user,
    required this.accessToken,
    required this.accessTokenExpiresAt,
    required this.refreshToken,
    required this.refreshTokenExpiresAt,
    required this.tokenType,
  });

  factory PublicSocialLoginResponse.fromJson(Map<String, dynamic> json) =>
      _$PublicSocialLoginResponseFromJson(json);

  static const toJsonFactory = _$PublicSocialLoginResponseToJson;
  Map<String, dynamic> toJson() => _$PublicSocialLoginResponseToJson(this);

  @JsonKey(name: 'user')
  final UserResponseDto user;
  @JsonKey(name: 'accessToken')
  final String accessToken;
  @JsonKey(name: 'accessTokenExpiresAt')
  final DateTime accessTokenExpiresAt;
  @JsonKey(name: 'refreshToken')
  final String refreshToken;
  @JsonKey(name: 'refreshTokenExpiresAt')
  final DateTime refreshTokenExpiresAt;
  @JsonKey(name: 'tokenType')
  final String tokenType;
  static const fromJsonFactory = _$PublicSocialLoginResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PublicSocialLoginResponse &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.accessToken, accessToken) ||
                const DeepCollectionEquality().equals(
                  other.accessToken,
                  accessToken,
                )) &&
            (identical(other.accessTokenExpiresAt, accessTokenExpiresAt) ||
                const DeepCollectionEquality().equals(
                  other.accessTokenExpiresAt,
                  accessTokenExpiresAt,
                )) &&
            (identical(other.refreshToken, refreshToken) ||
                const DeepCollectionEquality().equals(
                  other.refreshToken,
                  refreshToken,
                )) &&
            (identical(other.refreshTokenExpiresAt, refreshTokenExpiresAt) ||
                const DeepCollectionEquality().equals(
                  other.refreshTokenExpiresAt,
                  refreshTokenExpiresAt,
                )) &&
            (identical(other.tokenType, tokenType) ||
                const DeepCollectionEquality().equals(
                  other.tokenType,
                  tokenType,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(accessToken) ^
      const DeepCollectionEquality().hash(accessTokenExpiresAt) ^
      const DeepCollectionEquality().hash(refreshToken) ^
      const DeepCollectionEquality().hash(refreshTokenExpiresAt) ^
      const DeepCollectionEquality().hash(tokenType) ^
      runtimeType.hashCode;
}

extension $PublicSocialLoginResponseExtension on PublicSocialLoginResponse {
  PublicSocialLoginResponse copyWith({
    UserResponseDto? user,
    String? accessToken,
    DateTime? accessTokenExpiresAt,
    String? refreshToken,
    DateTime? refreshTokenExpiresAt,
    String? tokenType,
  }) {
    return PublicSocialLoginResponse(
      user: user ?? this.user,
      accessToken: accessToken ?? this.accessToken,
      accessTokenExpiresAt: accessTokenExpiresAt ?? this.accessTokenExpiresAt,
      refreshToken: refreshToken ?? this.refreshToken,
      refreshTokenExpiresAt:
          refreshTokenExpiresAt ?? this.refreshTokenExpiresAt,
      tokenType: tokenType ?? this.tokenType,
    );
  }

  PublicSocialLoginResponse copyWithWrapped({
    Wrapped<UserResponseDto>? user,
    Wrapped<String>? accessToken,
    Wrapped<DateTime>? accessTokenExpiresAt,
    Wrapped<String>? refreshToken,
    Wrapped<DateTime>? refreshTokenExpiresAt,
    Wrapped<String>? tokenType,
  }) {
    return PublicSocialLoginResponse(
      user: (user != null ? user.value : this.user),
      accessToken: (accessToken != null ? accessToken.value : this.accessToken),
      accessTokenExpiresAt: (accessTokenExpiresAt != null
          ? accessTokenExpiresAt.value
          : this.accessTokenExpiresAt),
      refreshToken: (refreshToken != null
          ? refreshToken.value
          : this.refreshToken),
      refreshTokenExpiresAt: (refreshTokenExpiresAt != null
          ? refreshTokenExpiresAt.value
          : this.refreshTokenExpiresAt),
      tokenType: (tokenType != null ? tokenType.value : this.tokenType),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PublicUpdateAvatarResponse {
  const PublicUpdateAvatarResponse({required this.user});

  factory PublicUpdateAvatarResponse.fromJson(Map<String, dynamic> json) =>
      _$PublicUpdateAvatarResponseFromJson(json);

  static const toJsonFactory = _$PublicUpdateAvatarResponseToJson;
  Map<String, dynamic> toJson() => _$PublicUpdateAvatarResponseToJson(this);

  @JsonKey(name: 'user')
  final UserResponseDto user;
  static const fromJsonFactory = _$PublicUpdateAvatarResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PublicUpdateAvatarResponse &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(user) ^ runtimeType.hashCode;
}

extension $PublicUpdateAvatarResponseExtension on PublicUpdateAvatarResponse {
  PublicUpdateAvatarResponse copyWith({UserResponseDto? user}) {
    return PublicUpdateAvatarResponse(user: user ?? this.user);
  }

  PublicUpdateAvatarResponse copyWithWrapped({Wrapped<UserResponseDto>? user}) {
    return PublicUpdateAvatarResponse(
      user: (user != null ? user.value : this.user),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PublicUpdateOwnProfileRequest {
  const PublicUpdateOwnProfileRequest({
    this.email,
    this.userName,
    this.countryName,
    this.partialPhoneNumber,
    this.countryIsoCode,
    this.countryDialCode,
  });

  factory PublicUpdateOwnProfileRequest.fromJson(Map<String, dynamic> json) =>
      _$PublicUpdateOwnProfileRequestFromJson(json);

  static const toJsonFactory = _$PublicUpdateOwnProfileRequestToJson;
  Map<String, dynamic> toJson() => _$PublicUpdateOwnProfileRequestToJson(this);

  @JsonKey(name: 'email')
  final String? email;
  @JsonKey(name: 'userName')
  final String? userName;
  @JsonKey(name: 'countryName')
  final String? countryName;
  @JsonKey(name: 'partialPhoneNumber')
  final String? partialPhoneNumber;
  @JsonKey(name: 'countryIsoCode')
  final String? countryIsoCode;
  @JsonKey(name: 'countryDialCode')
  final String? countryDialCode;
  static const fromJsonFactory = _$PublicUpdateOwnProfileRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PublicUpdateOwnProfileRequest &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality().equals(
                  other.userName,
                  userName,
                )) &&
            (identical(other.countryName, countryName) ||
                const DeepCollectionEquality().equals(
                  other.countryName,
                  countryName,
                )) &&
            (identical(other.partialPhoneNumber, partialPhoneNumber) ||
                const DeepCollectionEquality().equals(
                  other.partialPhoneNumber,
                  partialPhoneNumber,
                )) &&
            (identical(other.countryIsoCode, countryIsoCode) ||
                const DeepCollectionEquality().equals(
                  other.countryIsoCode,
                  countryIsoCode,
                )) &&
            (identical(other.countryDialCode, countryDialCode) ||
                const DeepCollectionEquality().equals(
                  other.countryDialCode,
                  countryDialCode,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(countryName) ^
      const DeepCollectionEquality().hash(partialPhoneNumber) ^
      const DeepCollectionEquality().hash(countryIsoCode) ^
      const DeepCollectionEquality().hash(countryDialCode) ^
      runtimeType.hashCode;
}

extension $PublicUpdateOwnProfileRequestExtension
    on PublicUpdateOwnProfileRequest {
  PublicUpdateOwnProfileRequest copyWith({
    String? email,
    String? userName,
    String? countryName,
    String? partialPhoneNumber,
    String? countryIsoCode,
    String? countryDialCode,
  }) {
    return PublicUpdateOwnProfileRequest(
      email: email ?? this.email,
      userName: userName ?? this.userName,
      countryName: countryName ?? this.countryName,
      partialPhoneNumber: partialPhoneNumber ?? this.partialPhoneNumber,
      countryIsoCode: countryIsoCode ?? this.countryIsoCode,
      countryDialCode: countryDialCode ?? this.countryDialCode,
    );
  }

  PublicUpdateOwnProfileRequest copyWithWrapped({
    Wrapped<String?>? email,
    Wrapped<String?>? userName,
    Wrapped<String?>? countryName,
    Wrapped<String?>? partialPhoneNumber,
    Wrapped<String?>? countryIsoCode,
    Wrapped<String?>? countryDialCode,
  }) {
    return PublicUpdateOwnProfileRequest(
      email: (email != null ? email.value : this.email),
      userName: (userName != null ? userName.value : this.userName),
      countryName: (countryName != null ? countryName.value : this.countryName),
      partialPhoneNumber: (partialPhoneNumber != null
          ? partialPhoneNumber.value
          : this.partialPhoneNumber),
      countryIsoCode: (countryIsoCode != null
          ? countryIsoCode.value
          : this.countryIsoCode),
      countryDialCode: (countryDialCode != null
          ? countryDialCode.value
          : this.countryDialCode),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PublicUpdateOwnProfileResponse {
  const PublicUpdateOwnProfileResponse({required this.user});

  factory PublicUpdateOwnProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$PublicUpdateOwnProfileResponseFromJson(json);

  static const toJsonFactory = _$PublicUpdateOwnProfileResponseToJson;
  Map<String, dynamic> toJson() => _$PublicUpdateOwnProfileResponseToJson(this);

  @JsonKey(name: 'user')
  final UserResponseDto user;
  static const fromJsonFactory = _$PublicUpdateOwnProfileResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PublicUpdateOwnProfileResponse &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(user) ^ runtimeType.hashCode;
}

extension $PublicUpdateOwnProfileResponseExtension
    on PublicUpdateOwnProfileResponse {
  PublicUpdateOwnProfileResponse copyWith({UserResponseDto? user}) {
    return PublicUpdateOwnProfileResponse(user: user ?? this.user);
  }

  PublicUpdateOwnProfileResponse copyWithWrapped({
    Wrapped<UserResponseDto>? user,
  }) {
    return PublicUpdateOwnProfileResponse(
      user: (user != null ? user.value : this.user),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PublicVerifyOtpRequest {
  const PublicVerifyOtpRequest({
    required this.email,
    required this.code,
    required this.purpose,
  });

  factory PublicVerifyOtpRequest.fromJson(Map<String, dynamic> json) =>
      _$PublicVerifyOtpRequestFromJson(json);

  static const toJsonFactory = _$PublicVerifyOtpRequestToJson;
  Map<String, dynamic> toJson() => _$PublicVerifyOtpRequestToJson(this);

  @JsonKey(name: 'email')
  final String email;
  @JsonKey(name: 'code')
  final String code;
  @JsonKey(name: 'purpose')
  final String purpose;
  static const fromJsonFactory = _$PublicVerifyOtpRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PublicVerifyOtpRequest &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.purpose, purpose) ||
                const DeepCollectionEquality().equals(other.purpose, purpose)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(purpose) ^
      runtimeType.hashCode;
}

extension $PublicVerifyOtpRequestExtension on PublicVerifyOtpRequest {
  PublicVerifyOtpRequest copyWith({
    String? email,
    String? code,
    String? purpose,
  }) {
    return PublicVerifyOtpRequest(
      email: email ?? this.email,
      code: code ?? this.code,
      purpose: purpose ?? this.purpose,
    );
  }

  PublicVerifyOtpRequest copyWithWrapped({
    Wrapped<String>? email,
    Wrapped<String>? code,
    Wrapped<String>? purpose,
  }) {
    return PublicVerifyOtpRequest(
      email: (email != null ? email.value : this.email),
      code: (code != null ? code.value : this.code),
      purpose: (purpose != null ? purpose.value : this.purpose),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PublicVerifyOtpResponse {
  const PublicVerifyOtpResponse({required this.isSuccess});

  factory PublicVerifyOtpResponse.fromJson(Map<String, dynamic> json) =>
      _$PublicVerifyOtpResponseFromJson(json);

  static const toJsonFactory = _$PublicVerifyOtpResponseToJson;
  Map<String, dynamic> toJson() => _$PublicVerifyOtpResponseToJson(this);

  @JsonKey(name: 'isSuccess')
  final bool isSuccess;
  static const fromJsonFactory = _$PublicVerifyOtpResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PublicVerifyOtpResponse &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality().equals(
                  other.isSuccess,
                  isSuccess,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(isSuccess) ^ runtimeType.hashCode;
}

extension $PublicVerifyOtpResponseExtension on PublicVerifyOtpResponse {
  PublicVerifyOtpResponse copyWith({bool? isSuccess}) {
    return PublicVerifyOtpResponse(isSuccess: isSuccess ?? this.isSuccess);
  }

  PublicVerifyOtpResponse copyWithWrapped({Wrapped<bool>? isSuccess}) {
    return PublicVerifyOtpResponse(
      isSuccess: (isSuccess != null ? isSuccess.value : this.isSuccess),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class RoleDto {
  const RoleDto({
    required this.id,
    required this.name,
    required this.description,
  });

  factory RoleDto.fromJson(Map<String, dynamic> json) =>
      _$RoleDtoFromJson(json);

  static const toJsonFactory = _$RoleDtoToJson;
  Map<String, dynamic> toJson() => _$RoleDtoToJson(this);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'description')
  final String description;
  static const fromJsonFactory = _$RoleDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is RoleDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality().equals(
                  other.description,
                  description,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      runtimeType.hashCode;
}

extension $RoleDtoExtension on RoleDto {
  RoleDto copyWith({String? id, String? name, String? description}) {
    return RoleDto(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
    );
  }

  RoleDto copyWithWrapped({
    Wrapped<String>? id,
    Wrapped<String>? name,
    Wrapped<String>? description,
  }) {
    return RoleDto(
      id: (id != null ? id.value : this.id),
      name: (name != null ? name.value : this.name),
      description: (description != null ? description.value : this.description),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class SessionDto {
  const SessionDto({
    required this.id,
    this.ipAddress,
    this.userAgent,
    required this.browser,
    required this.device,
    required this.platform,
    required this.$client,
    required this.createdAt,
    required this.expiresAt,
    required this.isActive,
  });

  factory SessionDto.fromJson(Map<String, dynamic> json) =>
      _$SessionDtoFromJson(json);

  static const toJsonFactory = _$SessionDtoToJson;
  Map<String, dynamic> toJson() => _$SessionDtoToJson(this);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'ipAddress')
  final String? ipAddress;
  @JsonKey(name: 'userAgent')
  final String? userAgent;
  @JsonKey(
    name: 'browser',
    toJson: enumBrowserToJson,
    fromJson: enumBrowserFromJson,
  )
  final enums.EnumBrowser browser;
  @JsonKey(
    name: 'device',
    toJson: enumDeviceToJson,
    fromJson: enumDeviceFromJson,
  )
  final enums.EnumDevice device;
  @JsonKey(
    name: 'platform',
    toJson: enumPlatformToJson,
    fromJson: enumPlatformFromJson,
  )
  final enums.EnumPlatform platform;
  @JsonKey(
    name: 'client',
    toJson: enumClientToJson,
    fromJson: enumClientFromJson,
  )
  final enums.EnumClient $client;
  @JsonKey(name: 'createdAt')
  final DateTime createdAt;
  @JsonKey(name: 'expiresAt')
  final DateTime expiresAt;
  @JsonKey(name: 'isActive')
  final bool isActive;
  static const fromJsonFactory = _$SessionDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is SessionDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.ipAddress, ipAddress) ||
                const DeepCollectionEquality().equals(
                  other.ipAddress,
                  ipAddress,
                )) &&
            (identical(other.userAgent, userAgent) ||
                const DeepCollectionEquality().equals(
                  other.userAgent,
                  userAgent,
                )) &&
            (identical(other.browser, browser) ||
                const DeepCollectionEquality().equals(
                  other.browser,
                  browser,
                )) &&
            (identical(other.device, device) ||
                const DeepCollectionEquality().equals(other.device, device)) &&
            (identical(other.platform, platform) ||
                const DeepCollectionEquality().equals(
                  other.platform,
                  platform,
                )) &&
            (identical(other.$client, $client) ||
                const DeepCollectionEquality().equals(
                  other.$client,
                  $client,
                )) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality().equals(
                  other.createdAt,
                  createdAt,
                )) &&
            (identical(other.expiresAt, expiresAt) ||
                const DeepCollectionEquality().equals(
                  other.expiresAt,
                  expiresAt,
                )) &&
            (identical(other.isActive, isActive) ||
                const DeepCollectionEquality().equals(
                  other.isActive,
                  isActive,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(ipAddress) ^
      const DeepCollectionEquality().hash(userAgent) ^
      const DeepCollectionEquality().hash(browser) ^
      const DeepCollectionEquality().hash(device) ^
      const DeepCollectionEquality().hash(platform) ^
      const DeepCollectionEquality().hash($client) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(expiresAt) ^
      const DeepCollectionEquality().hash(isActive) ^
      runtimeType.hashCode;
}

extension $SessionDtoExtension on SessionDto {
  SessionDto copyWith({
    String? id,
    String? ipAddress,
    String? userAgent,
    enums.EnumBrowser? browser,
    enums.EnumDevice? device,
    enums.EnumPlatform? platform,
    enums.EnumClient? $client,
    DateTime? createdAt,
    DateTime? expiresAt,
    bool? isActive,
  }) {
    return SessionDto(
      id: id ?? this.id,
      ipAddress: ipAddress ?? this.ipAddress,
      userAgent: userAgent ?? this.userAgent,
      browser: browser ?? this.browser,
      device: device ?? this.device,
      platform: platform ?? this.platform,
      $client: $client ?? this.$client,
      createdAt: createdAt ?? this.createdAt,
      expiresAt: expiresAt ?? this.expiresAt,
      isActive: isActive ?? this.isActive,
    );
  }

  SessionDto copyWithWrapped({
    Wrapped<String>? id,
    Wrapped<String?>? ipAddress,
    Wrapped<String?>? userAgent,
    Wrapped<enums.EnumBrowser>? browser,
    Wrapped<enums.EnumDevice>? device,
    Wrapped<enums.EnumPlatform>? platform,
    Wrapped<enums.EnumClient>? $client,
    Wrapped<DateTime>? createdAt,
    Wrapped<DateTime>? expiresAt,
    Wrapped<bool>? isActive,
  }) {
    return SessionDto(
      id: (id != null ? id.value : this.id),
      ipAddress: (ipAddress != null ? ipAddress.value : this.ipAddress),
      userAgent: (userAgent != null ? userAgent.value : this.userAgent),
      browser: (browser != null ? browser.value : this.browser),
      device: (device != null ? device.value : this.device),
      platform: (platform != null ? platform.value : this.platform),
      $client: ($client != null ? $client.value : this.$client),
      createdAt: (createdAt != null ? createdAt.value : this.createdAt),
      expiresAt: (expiresAt != null ? expiresAt.value : this.expiresAt),
      isActive: (isActive != null ? isActive.value : this.isActive),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class SessionDtoPaginatedResult {
  const SessionDtoPaginatedResult({
    required this.pageIndex,
    required this.pageSize,
    required this.count,
    required this.items,
  });

  factory SessionDtoPaginatedResult.fromJson(Map<String, dynamic> json) =>
      _$SessionDtoPaginatedResultFromJson(json);

  static const toJsonFactory = _$SessionDtoPaginatedResultToJson;
  Map<String, dynamic> toJson() => _$SessionDtoPaginatedResultToJson(this);

  @JsonKey(name: 'pageIndex')
  final int pageIndex;
  @JsonKey(name: 'pageSize')
  final int pageSize;
  @JsonKey(name: 'count')
  final int count;
  @JsonKey(name: 'items', defaultValue: <SessionDto>[])
  final List<SessionDto> items;
  static const fromJsonFactory = _$SessionDtoPaginatedResultFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is SessionDtoPaginatedResult &&
            (identical(other.pageIndex, pageIndex) ||
                const DeepCollectionEquality().equals(
                  other.pageIndex,
                  pageIndex,
                )) &&
            (identical(other.pageSize, pageSize) ||
                const DeepCollectionEquality().equals(
                  other.pageSize,
                  pageSize,
                )) &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(pageIndex) ^
      const DeepCollectionEquality().hash(pageSize) ^
      const DeepCollectionEquality().hash(count) ^
      const DeepCollectionEquality().hash(items) ^
      runtimeType.hashCode;
}

extension $SessionDtoPaginatedResultExtension on SessionDtoPaginatedResult {
  SessionDtoPaginatedResult copyWith({
    int? pageIndex,
    int? pageSize,
    int? count,
    List<SessionDto>? items,
  }) {
    return SessionDtoPaginatedResult(
      pageIndex: pageIndex ?? this.pageIndex,
      pageSize: pageSize ?? this.pageSize,
      count: count ?? this.count,
      items: items ?? this.items,
    );
  }

  SessionDtoPaginatedResult copyWithWrapped({
    Wrapped<int>? pageIndex,
    Wrapped<int>? pageSize,
    Wrapped<int>? count,
    Wrapped<List<SessionDto>>? items,
  }) {
    return SessionDtoPaginatedResult(
      pageIndex: (pageIndex != null ? pageIndex.value : this.pageIndex),
      pageSize: (pageSize != null ? pageSize.value : this.pageSize),
      count: (count != null ? count.value : this.count),
      items: (items != null ? items.value : this.items),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UserResponseDto {
  const UserResponseDto({
    required this.id,
    this.email,
    required this.userName,
    required this.roles,
    required this.permissions,
    required this.authProvider,
    required this.isVerified,
    required this.isActive,
    this.avatar,
    this.countryName,
    this.countryIsoCode,
    this.countryDialCode,
    this.partialPhoneNumber,
    this.fullPhoneNumber,
    this.createdAt,
    this.updatedAt,
  });

  factory UserResponseDto.fromJson(Map<String, dynamic> json) =>
      _$UserResponseDtoFromJson(json);

  static const toJsonFactory = _$UserResponseDtoToJson;
  Map<String, dynamic> toJson() => _$UserResponseDtoToJson(this);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'email')
  final String? email;
  @JsonKey(name: 'userName')
  final String userName;
  @JsonKey(name: 'roles', defaultValue: <RoleDto>[])
  final List<RoleDto> roles;
  @JsonKey(name: 'permissions', defaultValue: <PermissionDto>[])
  final List<PermissionDto> permissions;
  @JsonKey(name: 'authProvider')
  final String authProvider;
  @JsonKey(name: 'isVerified')
  final bool isVerified;
  @JsonKey(name: 'isActive')
  final bool isActive;
  @JsonKey(name: 'avatar')
  final FileDto? avatar;
  @JsonKey(name: 'countryName')
  final String? countryName;
  @JsonKey(name: 'countryIsoCode')
  final String? countryIsoCode;
  @JsonKey(name: 'countryDialCode')
  final String? countryDialCode;
  @JsonKey(name: 'partialPhoneNumber')
  final String? partialPhoneNumber;
  @JsonKey(name: 'fullPhoneNumber')
  final String? fullPhoneNumber;
  @JsonKey(name: 'createdAt')
  final DateTime? createdAt;
  @JsonKey(name: 'updatedAt')
  final DateTime? updatedAt;
  static const fromJsonFactory = _$UserResponseDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UserResponseDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality().equals(
                  other.userName,
                  userName,
                )) &&
            (identical(other.roles, roles) ||
                const DeepCollectionEquality().equals(other.roles, roles)) &&
            (identical(other.permissions, permissions) ||
                const DeepCollectionEquality().equals(
                  other.permissions,
                  permissions,
                )) &&
            (identical(other.authProvider, authProvider) ||
                const DeepCollectionEquality().equals(
                  other.authProvider,
                  authProvider,
                )) &&
            (identical(other.isVerified, isVerified) ||
                const DeepCollectionEquality().equals(
                  other.isVerified,
                  isVerified,
                )) &&
            (identical(other.isActive, isActive) ||
                const DeepCollectionEquality().equals(
                  other.isActive,
                  isActive,
                )) &&
            (identical(other.avatar, avatar) ||
                const DeepCollectionEquality().equals(other.avatar, avatar)) &&
            (identical(other.countryName, countryName) ||
                const DeepCollectionEquality().equals(
                  other.countryName,
                  countryName,
                )) &&
            (identical(other.countryIsoCode, countryIsoCode) ||
                const DeepCollectionEquality().equals(
                  other.countryIsoCode,
                  countryIsoCode,
                )) &&
            (identical(other.countryDialCode, countryDialCode) ||
                const DeepCollectionEquality().equals(
                  other.countryDialCode,
                  countryDialCode,
                )) &&
            (identical(other.partialPhoneNumber, partialPhoneNumber) ||
                const DeepCollectionEquality().equals(
                  other.partialPhoneNumber,
                  partialPhoneNumber,
                )) &&
            (identical(other.fullPhoneNumber, fullPhoneNumber) ||
                const DeepCollectionEquality().equals(
                  other.fullPhoneNumber,
                  fullPhoneNumber,
                )) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality().equals(
                  other.createdAt,
                  createdAt,
                )) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality().equals(
                  other.updatedAt,
                  updatedAt,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(roles) ^
      const DeepCollectionEquality().hash(permissions) ^
      const DeepCollectionEquality().hash(authProvider) ^
      const DeepCollectionEquality().hash(isVerified) ^
      const DeepCollectionEquality().hash(isActive) ^
      const DeepCollectionEquality().hash(avatar) ^
      const DeepCollectionEquality().hash(countryName) ^
      const DeepCollectionEquality().hash(countryIsoCode) ^
      const DeepCollectionEquality().hash(countryDialCode) ^
      const DeepCollectionEquality().hash(partialPhoneNumber) ^
      const DeepCollectionEquality().hash(fullPhoneNumber) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $UserResponseDtoExtension on UserResponseDto {
  UserResponseDto copyWith({
    String? id,
    String? email,
    String? userName,
    List<RoleDto>? roles,
    List<PermissionDto>? permissions,
    String? authProvider,
    bool? isVerified,
    bool? isActive,
    FileDto? avatar,
    String? countryName,
    String? countryIsoCode,
    String? countryDialCode,
    String? partialPhoneNumber,
    String? fullPhoneNumber,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return UserResponseDto(
      id: id ?? this.id,
      email: email ?? this.email,
      userName: userName ?? this.userName,
      roles: roles ?? this.roles,
      permissions: permissions ?? this.permissions,
      authProvider: authProvider ?? this.authProvider,
      isVerified: isVerified ?? this.isVerified,
      isActive: isActive ?? this.isActive,
      avatar: avatar ?? this.avatar,
      countryName: countryName ?? this.countryName,
      countryIsoCode: countryIsoCode ?? this.countryIsoCode,
      countryDialCode: countryDialCode ?? this.countryDialCode,
      partialPhoneNumber: partialPhoneNumber ?? this.partialPhoneNumber,
      fullPhoneNumber: fullPhoneNumber ?? this.fullPhoneNumber,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  UserResponseDto copyWithWrapped({
    Wrapped<String>? id,
    Wrapped<String?>? email,
    Wrapped<String>? userName,
    Wrapped<List<RoleDto>>? roles,
    Wrapped<List<PermissionDto>>? permissions,
    Wrapped<String>? authProvider,
    Wrapped<bool>? isVerified,
    Wrapped<bool>? isActive,
    Wrapped<FileDto?>? avatar,
    Wrapped<String?>? countryName,
    Wrapped<String?>? countryIsoCode,
    Wrapped<String?>? countryDialCode,
    Wrapped<String?>? partialPhoneNumber,
    Wrapped<String?>? fullPhoneNumber,
    Wrapped<DateTime?>? createdAt,
    Wrapped<DateTime?>? updatedAt,
  }) {
    return UserResponseDto(
      id: (id != null ? id.value : this.id),
      email: (email != null ? email.value : this.email),
      userName: (userName != null ? userName.value : this.userName),
      roles: (roles != null ? roles.value : this.roles),
      permissions: (permissions != null ? permissions.value : this.permissions),
      authProvider: (authProvider != null
          ? authProvider.value
          : this.authProvider),
      isVerified: (isVerified != null ? isVerified.value : this.isVerified),
      isActive: (isActive != null ? isActive.value : this.isActive),
      avatar: (avatar != null ? avatar.value : this.avatar),
      countryName: (countryName != null ? countryName.value : this.countryName),
      countryIsoCode: (countryIsoCode != null
          ? countryIsoCode.value
          : this.countryIsoCode),
      countryDialCode: (countryDialCode != null
          ? countryDialCode.value
          : this.countryDialCode),
      partialPhoneNumber: (partialPhoneNumber != null
          ? partialPhoneNumber.value
          : this.partialPhoneNumber),
      fullPhoneNumber: (fullPhoneNumber != null
          ? fullPhoneNumber.value
          : this.fullPhoneNumber),
      createdAt: (createdAt != null ? createdAt.value : this.createdAt),
      updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ApiV1AdminUserAvatarPatch$RequestBody {
  const ApiV1AdminUserAvatarPatch$RequestBody({required this.avatarFile});

  factory ApiV1AdminUserAvatarPatch$RequestBody.fromJson(
    Map<String, dynamic> json,
  ) => _$ApiV1AdminUserAvatarPatch$RequestBodyFromJson(json);

  static const toJsonFactory = _$ApiV1AdminUserAvatarPatch$RequestBodyToJson;
  Map<String, dynamic> toJson() =>
      _$ApiV1AdminUserAvatarPatch$RequestBodyToJson(this);

  @JsonKey(name: 'avatarFile')
  final String avatarFile;
  static const fromJsonFactory =
      _$ApiV1AdminUserAvatarPatch$RequestBodyFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ApiV1AdminUserAvatarPatch$RequestBody &&
            (identical(other.avatarFile, avatarFile) ||
                const DeepCollectionEquality().equals(
                  other.avatarFile,
                  avatarFile,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(avatarFile) ^ runtimeType.hashCode;
}

extension $ApiV1AdminUserAvatarPatch$RequestBodyExtension
    on ApiV1AdminUserAvatarPatch$RequestBody {
  ApiV1AdminUserAvatarPatch$RequestBody copyWith({String? avatarFile}) {
    return ApiV1AdminUserAvatarPatch$RequestBody(
      avatarFile: avatarFile ?? this.avatarFile,
    );
  }

  ApiV1AdminUserAvatarPatch$RequestBody copyWithWrapped({
    Wrapped<String>? avatarFile,
  }) {
    return ApiV1AdminUserAvatarPatch$RequestBody(
      avatarFile: (avatarFile != null ? avatarFile.value : this.avatarFile),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ApiV1PublicUserAvatarPatch$RequestBody {
  const ApiV1PublicUserAvatarPatch$RequestBody({required this.avatarFile});

  factory ApiV1PublicUserAvatarPatch$RequestBody.fromJson(
    Map<String, dynamic> json,
  ) => _$ApiV1PublicUserAvatarPatch$RequestBodyFromJson(json);

  static const toJsonFactory = _$ApiV1PublicUserAvatarPatch$RequestBodyToJson;
  Map<String, dynamic> toJson() =>
      _$ApiV1PublicUserAvatarPatch$RequestBodyToJson(this);

  @JsonKey(name: 'avatarFile')
  final String avatarFile;
  static const fromJsonFactory =
      _$ApiV1PublicUserAvatarPatch$RequestBodyFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ApiV1PublicUserAvatarPatch$RequestBody &&
            (identical(other.avatarFile, avatarFile) ||
                const DeepCollectionEquality().equals(
                  other.avatarFile,
                  avatarFile,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(avatarFile) ^ runtimeType.hashCode;
}

extension $ApiV1PublicUserAvatarPatch$RequestBodyExtension
    on ApiV1PublicUserAvatarPatch$RequestBody {
  ApiV1PublicUserAvatarPatch$RequestBody copyWith({String? avatarFile}) {
    return ApiV1PublicUserAvatarPatch$RequestBody(
      avatarFile: avatarFile ?? this.avatarFile,
    );
  }

  ApiV1PublicUserAvatarPatch$RequestBody copyWithWrapped({
    Wrapped<String>? avatarFile,
  }) {
    return ApiV1PublicUserAvatarPatch$RequestBody(
      avatarFile: (avatarFile != null ? avatarFile.value : this.avatarFile),
    );
  }
}

int? enumBrowserNullableToJson(enums.EnumBrowser? enumBrowser) {
  return enumBrowser?.value;
}

int? enumBrowserToJson(enums.EnumBrowser enumBrowser) {
  return enumBrowser.value;
}

enums.EnumBrowser enumBrowserFromJson(
  Object? enumBrowser, [
  enums.EnumBrowser? defaultValue,
]) {
  return enums.EnumBrowser.values.firstWhereOrNull(
        (e) => e.value == enumBrowser,
      ) ??
      defaultValue ??
      enums.EnumBrowser.swaggerGeneratedUnknown;
}

enums.EnumBrowser? enumBrowserNullableFromJson(
  Object? enumBrowser, [
  enums.EnumBrowser? defaultValue,
]) {
  if (enumBrowser == null) {
    return null;
  }
  return enums.EnumBrowser.values.firstWhereOrNull(
        (e) => e.value == enumBrowser,
      ) ??
      defaultValue;
}

String enumBrowserExplodedListToJson(List<enums.EnumBrowser>? enumBrowser) {
  return enumBrowser?.map((e) => e.value!).join(',') ?? '';
}

List<int> enumBrowserListToJson(List<enums.EnumBrowser>? enumBrowser) {
  if (enumBrowser == null) {
    return [];
  }

  return enumBrowser.map((e) => e.value!).toList();
}

List<enums.EnumBrowser> enumBrowserListFromJson(
  List? enumBrowser, [
  List<enums.EnumBrowser>? defaultValue,
]) {
  if (enumBrowser == null) {
    return defaultValue ?? [];
  }

  return enumBrowser.map((e) => enumBrowserFromJson(e)).toList();
}

List<enums.EnumBrowser>? enumBrowserNullableListFromJson(
  List? enumBrowser, [
  List<enums.EnumBrowser>? defaultValue,
]) {
  if (enumBrowser == null) {
    return defaultValue;
  }

  return enumBrowser.map((e) => enumBrowserFromJson(e)).toList();
}

int? enumClientNullableToJson(enums.EnumClient? enumClient) {
  return enumClient?.value;
}

int? enumClientToJson(enums.EnumClient enumClient) {
  return enumClient.value;
}

enums.EnumClient enumClientFromJson(
  Object? enumClient, [
  enums.EnumClient? defaultValue,
]) {
  return enums.EnumClient.values.firstWhereOrNull(
        (e) => e.value == enumClient,
      ) ??
      defaultValue ??
      enums.EnumClient.swaggerGeneratedUnknown;
}

enums.EnumClient? enumClientNullableFromJson(
  Object? enumClient, [
  enums.EnumClient? defaultValue,
]) {
  if (enumClient == null) {
    return null;
  }
  return enums.EnumClient.values.firstWhereOrNull(
        (e) => e.value == enumClient,
      ) ??
      defaultValue;
}

String enumClientExplodedListToJson(List<enums.EnumClient>? enumClient) {
  return enumClient?.map((e) => e.value!).join(',') ?? '';
}

List<int> enumClientListToJson(List<enums.EnumClient>? enumClient) {
  if (enumClient == null) {
    return [];
  }

  return enumClient.map((e) => e.value!).toList();
}

List<enums.EnumClient> enumClientListFromJson(
  List? enumClient, [
  List<enums.EnumClient>? defaultValue,
]) {
  if (enumClient == null) {
    return defaultValue ?? [];
  }

  return enumClient.map((e) => enumClientFromJson(e)).toList();
}

List<enums.EnumClient>? enumClientNullableListFromJson(
  List? enumClient, [
  List<enums.EnumClient>? defaultValue,
]) {
  if (enumClient == null) {
    return defaultValue;
  }

  return enumClient.map((e) => enumClientFromJson(e)).toList();
}

int? enumDeviceNullableToJson(enums.EnumDevice? enumDevice) {
  return enumDevice?.value;
}

int? enumDeviceToJson(enums.EnumDevice enumDevice) {
  return enumDevice.value;
}

enums.EnumDevice enumDeviceFromJson(
  Object? enumDevice, [
  enums.EnumDevice? defaultValue,
]) {
  return enums.EnumDevice.values.firstWhereOrNull(
        (e) => e.value == enumDevice,
      ) ??
      defaultValue ??
      enums.EnumDevice.swaggerGeneratedUnknown;
}

enums.EnumDevice? enumDeviceNullableFromJson(
  Object? enumDevice, [
  enums.EnumDevice? defaultValue,
]) {
  if (enumDevice == null) {
    return null;
  }
  return enums.EnumDevice.values.firstWhereOrNull(
        (e) => e.value == enumDevice,
      ) ??
      defaultValue;
}

String enumDeviceExplodedListToJson(List<enums.EnumDevice>? enumDevice) {
  return enumDevice?.map((e) => e.value!).join(',') ?? '';
}

List<int> enumDeviceListToJson(List<enums.EnumDevice>? enumDevice) {
  if (enumDevice == null) {
    return [];
  }

  return enumDevice.map((e) => e.value!).toList();
}

List<enums.EnumDevice> enumDeviceListFromJson(
  List? enumDevice, [
  List<enums.EnumDevice>? defaultValue,
]) {
  if (enumDevice == null) {
    return defaultValue ?? [];
  }

  return enumDevice.map((e) => enumDeviceFromJson(e)).toList();
}

List<enums.EnumDevice>? enumDeviceNullableListFromJson(
  List? enumDevice, [
  List<enums.EnumDevice>? defaultValue,
]) {
  if (enumDevice == null) {
    return defaultValue;
  }

  return enumDevice.map((e) => enumDeviceFromJson(e)).toList();
}

int? enumPlatformNullableToJson(enums.EnumPlatform? enumPlatform) {
  return enumPlatform?.value;
}

int? enumPlatformToJson(enums.EnumPlatform enumPlatform) {
  return enumPlatform.value;
}

enums.EnumPlatform enumPlatformFromJson(
  Object? enumPlatform, [
  enums.EnumPlatform? defaultValue,
]) {
  return enums.EnumPlatform.values.firstWhereOrNull(
        (e) => e.value == enumPlatform,
      ) ??
      defaultValue ??
      enums.EnumPlatform.swaggerGeneratedUnknown;
}

enums.EnumPlatform? enumPlatformNullableFromJson(
  Object? enumPlatform, [
  enums.EnumPlatform? defaultValue,
]) {
  if (enumPlatform == null) {
    return null;
  }
  return enums.EnumPlatform.values.firstWhereOrNull(
        (e) => e.value == enumPlatform,
      ) ??
      defaultValue;
}

String enumPlatformExplodedListToJson(List<enums.EnumPlatform>? enumPlatform) {
  return enumPlatform?.map((e) => e.value!).join(',') ?? '';
}

List<int> enumPlatformListToJson(List<enums.EnumPlatform>? enumPlatform) {
  if (enumPlatform == null) {
    return [];
  }

  return enumPlatform.map((e) => e.value!).toList();
}

List<enums.EnumPlatform> enumPlatformListFromJson(
  List? enumPlatform, [
  List<enums.EnumPlatform>? defaultValue,
]) {
  if (enumPlatform == null) {
    return defaultValue ?? [];
  }

  return enumPlatform.map((e) => enumPlatformFromJson(e)).toList();
}

List<enums.EnumPlatform>? enumPlatformNullableListFromJson(
  List? enumPlatform, [
  List<enums.EnumPlatform>? defaultValue,
]) {
  if (enumPlatform == null) {
    return defaultValue;
  }

  return enumPlatform.map((e) => enumPlatformFromJson(e)).toList();
}

// ignore: unused_element
String? _dateToJson(DateTime? date) {
  if (date == null) {
    return null;
  }

  final year = date.year.toString();
  final month = date.month < 10 ? '0${date.month}' : date.month.toString();
  final day = date.day < 10 ? '0${date.day}' : date.day.toString();

  return '$year-$month-$day';
}

class Wrapped<T> {
  final T value;
  const Wrapped.value(this.value);
}
