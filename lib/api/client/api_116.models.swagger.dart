// coverage:ignore-file
// ignore_for_file: type=lint

import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';
import 'dart:convert';

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
  const AdminLoginResponse({required this.user, required this.token});

  factory AdminLoginResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminLoginResponseFromJson(json);

  static const toJsonFactory = _$AdminLoginResponseToJson;
  Map<String, dynamic> toJson() => _$AdminLoginResponseToJson(this);

  @JsonKey(name: 'user')
  final UserResponseDto user;
  @JsonKey(name: 'token')
  final String token;
  static const fromJsonFactory = _$AdminLoginResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AdminLoginResponse &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(token) ^
      runtimeType.hashCode;
}

extension $AdminLoginResponseExtension on AdminLoginResponse {
  AdminLoginResponse copyWith({UserResponseDto? user, String? token}) {
    return AdminLoginResponse(
      user: user ?? this.user,
      token: token ?? this.token,
    );
  }

  AdminLoginResponse copyWithWrapped({
    Wrapped<UserResponseDto>? user,
    Wrapped<String>? token,
  }) {
    return AdminLoginResponse(
      user: (user != null ? user.value : this.user),
      token: (token != null ? token.value : this.token),
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
    this.countryFlagUrl,
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
  @JsonKey(name: 'countryFlagUrl')
  final String? countryFlagUrl;
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
            (identical(other.countryFlagUrl, countryFlagUrl) ||
                const DeepCollectionEquality().equals(
                  other.countryFlagUrl,
                  countryFlagUrl,
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
      const DeepCollectionEquality().hash(countryFlagUrl) ^
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
    String? countryFlagUrl,
    String? partialPhoneNumber,
    String? countryIsoCode,
    String? countryDialCode,
  }) {
    return AdminUpdateOwnProfileRequest(
      userName: userName ?? this.userName,
      countryName: countryName ?? this.countryName,
      countryFlagUrl: countryFlagUrl ?? this.countryFlagUrl,
      partialPhoneNumber: partialPhoneNumber ?? this.partialPhoneNumber,
      countryIsoCode: countryIsoCode ?? this.countryIsoCode,
      countryDialCode: countryDialCode ?? this.countryDialCode,
    );
  }

  AdminUpdateOwnProfileRequest copyWithWrapped({
    Wrapped<String?>? userName,
    Wrapped<String?>? countryName,
    Wrapped<String?>? countryFlagUrl,
    Wrapped<String?>? partialPhoneNumber,
    Wrapped<String?>? countryIsoCode,
    Wrapped<String?>? countryDialCode,
  }) {
    return AdminUpdateOwnProfileRequest(
      userName: (userName != null ? userName.value : this.userName),
      countryName: (countryName != null ? countryName.value : this.countryName),
      countryFlagUrl: (countryFlagUrl != null
          ? countryFlagUrl.value
          : this.countryFlagUrl),
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
  const PublicLoginResponse({required this.user, required this.token});

  factory PublicLoginResponse.fromJson(Map<String, dynamic> json) =>
      _$PublicLoginResponseFromJson(json);

  static const toJsonFactory = _$PublicLoginResponseToJson;
  Map<String, dynamic> toJson() => _$PublicLoginResponseToJson(this);

  @JsonKey(name: 'user')
  final UserResponseDto user;
  @JsonKey(name: 'token')
  final String token;
  static const fromJsonFactory = _$PublicLoginResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PublicLoginResponse &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(token) ^
      runtimeType.hashCode;
}

extension $PublicLoginResponseExtension on PublicLoginResponse {
  PublicLoginResponse copyWith({UserResponseDto? user, String? token}) {
    return PublicLoginResponse(
      user: user ?? this.user,
      token: token ?? this.token,
    );
  }

  PublicLoginResponse copyWithWrapped({
    Wrapped<UserResponseDto>? user,
    Wrapped<String>? token,
  }) {
    return PublicLoginResponse(
      user: (user != null ? user.value : this.user),
      token: (token != null ? token.value : this.token),
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
    required this.token,
    required this.verificationRequired,
  });

  factory PublicSignUpResponse.fromJson(Map<String, dynamic> json) =>
      _$PublicSignUpResponseFromJson(json);

  static const toJsonFactory = _$PublicSignUpResponseToJson;
  Map<String, dynamic> toJson() => _$PublicSignUpResponseToJson(this);

  @JsonKey(name: 'user')
  final UserResponseDto user;
  @JsonKey(name: 'token')
  final String token;
  @JsonKey(name: 'verificationRequired')
  final bool verificationRequired;
  static const fromJsonFactory = _$PublicSignUpResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PublicSignUpResponse &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)) &&
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
      const DeepCollectionEquality().hash(token) ^
      const DeepCollectionEquality().hash(verificationRequired) ^
      runtimeType.hashCode;
}

extension $PublicSignUpResponseExtension on PublicSignUpResponse {
  PublicSignUpResponse copyWith({
    UserResponseDto? user,
    String? token,
    bool? verificationRequired,
  }) {
    return PublicSignUpResponse(
      user: user ?? this.user,
      token: token ?? this.token,
      verificationRequired: verificationRequired ?? this.verificationRequired,
    );
  }

  PublicSignUpResponse copyWithWrapped({
    Wrapped<UserResponseDto>? user,
    Wrapped<String>? token,
    Wrapped<bool>? verificationRequired,
  }) {
    return PublicSignUpResponse(
      user: (user != null ? user.value : this.user),
      token: (token != null ? token.value : this.token),
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
  const PublicSocialLoginResponse({required this.user, required this.token});

  factory PublicSocialLoginResponse.fromJson(Map<String, dynamic> json) =>
      _$PublicSocialLoginResponseFromJson(json);

  static const toJsonFactory = _$PublicSocialLoginResponseToJson;
  Map<String, dynamic> toJson() => _$PublicSocialLoginResponseToJson(this);

  @JsonKey(name: 'user')
  final UserResponseDto user;
  @JsonKey(name: 'token')
  final String token;
  static const fromJsonFactory = _$PublicSocialLoginResponseFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PublicSocialLoginResponse &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(token) ^
      runtimeType.hashCode;
}

extension $PublicSocialLoginResponseExtension on PublicSocialLoginResponse {
  PublicSocialLoginResponse copyWith({UserResponseDto? user, String? token}) {
    return PublicSocialLoginResponse(
      user: user ?? this.user,
      token: token ?? this.token,
    );
  }

  PublicSocialLoginResponse copyWithWrapped({
    Wrapped<UserResponseDto>? user,
    Wrapped<String>? token,
  }) {
    return PublicSocialLoginResponse(
      user: (user != null ? user.value : this.user),
      token: (token != null ? token.value : this.token),
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
    this.countryFlagUrl,
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
  @JsonKey(name: 'countryFlagUrl')
  final String? countryFlagUrl;
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
            (identical(other.countryFlagUrl, countryFlagUrl) ||
                const DeepCollectionEquality().equals(
                  other.countryFlagUrl,
                  countryFlagUrl,
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
      const DeepCollectionEquality().hash(countryFlagUrl) ^
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
    String? countryFlagUrl,
    String? partialPhoneNumber,
    String? countryIsoCode,
    String? countryDialCode,
  }) {
    return PublicUpdateOwnProfileRequest(
      email: email ?? this.email,
      userName: userName ?? this.userName,
      countryName: countryName ?? this.countryName,
      countryFlagUrl: countryFlagUrl ?? this.countryFlagUrl,
      partialPhoneNumber: partialPhoneNumber ?? this.partialPhoneNumber,
      countryIsoCode: countryIsoCode ?? this.countryIsoCode,
      countryDialCode: countryDialCode ?? this.countryDialCode,
    );
  }

  PublicUpdateOwnProfileRequest copyWithWrapped({
    Wrapped<String?>? email,
    Wrapped<String?>? userName,
    Wrapped<String?>? countryName,
    Wrapped<String?>? countryFlagUrl,
    Wrapped<String?>? partialPhoneNumber,
    Wrapped<String?>? countryIsoCode,
    Wrapped<String?>? countryDialCode,
  }) {
    return PublicUpdateOwnProfileRequest(
      email: (email != null ? email.value : this.email),
      userName: (userName != null ? userName.value : this.userName),
      countryName: (countryName != null ? countryName.value : this.countryName),
      countryFlagUrl: (countryFlagUrl != null
          ? countryFlagUrl.value
          : this.countryFlagUrl),
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
    required this.isLoggedIn,
    this.lastLoginAt,
    this.avatar,
    this.countryName,
    this.countryFlagUrl,
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
  @JsonKey(name: 'isLoggedIn')
  final bool isLoggedIn;
  @JsonKey(name: 'lastLoginAt')
  final DateTime? lastLoginAt;
  @JsonKey(name: 'avatar')
  final FileDto? avatar;
  @JsonKey(name: 'countryName')
  final String? countryName;
  @JsonKey(name: 'countryFlagUrl')
  final String? countryFlagUrl;
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
            (identical(other.isLoggedIn, isLoggedIn) ||
                const DeepCollectionEquality().equals(
                  other.isLoggedIn,
                  isLoggedIn,
                )) &&
            (identical(other.lastLoginAt, lastLoginAt) ||
                const DeepCollectionEquality().equals(
                  other.lastLoginAt,
                  lastLoginAt,
                )) &&
            (identical(other.avatar, avatar) ||
                const DeepCollectionEquality().equals(other.avatar, avatar)) &&
            (identical(other.countryName, countryName) ||
                const DeepCollectionEquality().equals(
                  other.countryName,
                  countryName,
                )) &&
            (identical(other.countryFlagUrl, countryFlagUrl) ||
                const DeepCollectionEquality().equals(
                  other.countryFlagUrl,
                  countryFlagUrl,
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
      const DeepCollectionEquality().hash(isLoggedIn) ^
      const DeepCollectionEquality().hash(lastLoginAt) ^
      const DeepCollectionEquality().hash(avatar) ^
      const DeepCollectionEquality().hash(countryName) ^
      const DeepCollectionEquality().hash(countryFlagUrl) ^
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
    bool? isLoggedIn,
    DateTime? lastLoginAt,
    FileDto? avatar,
    String? countryName,
    String? countryFlagUrl,
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
      isLoggedIn: isLoggedIn ?? this.isLoggedIn,
      lastLoginAt: lastLoginAt ?? this.lastLoginAt,
      avatar: avatar ?? this.avatar,
      countryName: countryName ?? this.countryName,
      countryFlagUrl: countryFlagUrl ?? this.countryFlagUrl,
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
    Wrapped<bool>? isLoggedIn,
    Wrapped<DateTime?>? lastLoginAt,
    Wrapped<FileDto?>? avatar,
    Wrapped<String?>? countryName,
    Wrapped<String?>? countryFlagUrl,
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
      isLoggedIn: (isLoggedIn != null ? isLoggedIn.value : this.isLoggedIn),
      lastLoginAt: (lastLoginAt != null ? lastLoginAt.value : this.lastLoginAt),
      avatar: (avatar != null ? avatar.value : this.avatar),
      countryName: (countryName != null ? countryName.value : this.countryName),
      countryFlagUrl: (countryFlagUrl != null
          ? countryFlagUrl.value
          : this.countryFlagUrl),
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
class ApiV1AdminProfileAvatarPatch$RequestBody {
  const ApiV1AdminProfileAvatarPatch$RequestBody({required this.avatarFile});

  factory ApiV1AdminProfileAvatarPatch$RequestBody.fromJson(
    Map<String, dynamic> json,
  ) => _$ApiV1AdminProfileAvatarPatch$RequestBodyFromJson(json);

  static const toJsonFactory = _$ApiV1AdminProfileAvatarPatch$RequestBodyToJson;
  Map<String, dynamic> toJson() =>
      _$ApiV1AdminProfileAvatarPatch$RequestBodyToJson(this);

  @JsonKey(name: 'avatarFile')
  final String avatarFile;
  static const fromJsonFactory =
      _$ApiV1AdminProfileAvatarPatch$RequestBodyFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ApiV1AdminProfileAvatarPatch$RequestBody &&
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

extension $ApiV1AdminProfileAvatarPatch$RequestBodyExtension
    on ApiV1AdminProfileAvatarPatch$RequestBody {
  ApiV1AdminProfileAvatarPatch$RequestBody copyWith({String? avatarFile}) {
    return ApiV1AdminProfileAvatarPatch$RequestBody(
      avatarFile: avatarFile ?? this.avatarFile,
    );
  }

  ApiV1AdminProfileAvatarPatch$RequestBody copyWithWrapped({
    Wrapped<String>? avatarFile,
  }) {
    return ApiV1AdminProfileAvatarPatch$RequestBody(
      avatarFile: (avatarFile != null ? avatarFile.value : this.avatarFile),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ApiV1PublicProfileAvatarPatch$RequestBody {
  const ApiV1PublicProfileAvatarPatch$RequestBody({required this.avatarFile});

  factory ApiV1PublicProfileAvatarPatch$RequestBody.fromJson(
    Map<String, dynamic> json,
  ) => _$ApiV1PublicProfileAvatarPatch$RequestBodyFromJson(json);

  static const toJsonFactory =
      _$ApiV1PublicProfileAvatarPatch$RequestBodyToJson;
  Map<String, dynamic> toJson() =>
      _$ApiV1PublicProfileAvatarPatch$RequestBodyToJson(this);

  @JsonKey(name: 'avatarFile')
  final String avatarFile;
  static const fromJsonFactory =
      _$ApiV1PublicProfileAvatarPatch$RequestBodyFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ApiV1PublicProfileAvatarPatch$RequestBody &&
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

extension $ApiV1PublicProfileAvatarPatch$RequestBodyExtension
    on ApiV1PublicProfileAvatarPatch$RequestBody {
  ApiV1PublicProfileAvatarPatch$RequestBody copyWith({String? avatarFile}) {
    return ApiV1PublicProfileAvatarPatch$RequestBody(
      avatarFile: avatarFile ?? this.avatarFile,
    );
  }

  ApiV1PublicProfileAvatarPatch$RequestBody copyWithWrapped({
    Wrapped<String>? avatarFile,
  }) {
    return ApiV1PublicProfileAvatarPatch$RequestBody(
      avatarFile: (avatarFile != null ? avatarFile.value : this.avatarFile),
    );
  }
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
