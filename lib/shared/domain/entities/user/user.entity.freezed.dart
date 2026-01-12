// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UserEntity {

 String get id; String? get email; String get userName; List<RoleEntity> get roles; List<PermissionEntity> get permissions; String get authProvider; bool get isVerified; bool get isActive; FileEntity? get avatar; String? get countryName; String? get countryIsoCode; String? get countryDialCode; String? get partialPhoneNumber; String? get fullPhoneNumber; String? get createdAt; String? get updatedAt;
/// Create a copy of UserEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserEntityCopyWith<UserEntity> get copyWith => _$UserEntityCopyWithImpl<UserEntity>(this as UserEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.email, email) || other.email == email)&&(identical(other.userName, userName) || other.userName == userName)&&const DeepCollectionEquality().equals(other.roles, roles)&&const DeepCollectionEquality().equals(other.permissions, permissions)&&(identical(other.authProvider, authProvider) || other.authProvider == authProvider)&&(identical(other.isVerified, isVerified) || other.isVerified == isVerified)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.avatar, avatar) || other.avatar == avatar)&&(identical(other.countryName, countryName) || other.countryName == countryName)&&(identical(other.countryIsoCode, countryIsoCode) || other.countryIsoCode == countryIsoCode)&&(identical(other.countryDialCode, countryDialCode) || other.countryDialCode == countryDialCode)&&(identical(other.partialPhoneNumber, partialPhoneNumber) || other.partialPhoneNumber == partialPhoneNumber)&&(identical(other.fullPhoneNumber, fullPhoneNumber) || other.fullPhoneNumber == fullPhoneNumber)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,email,userName,const DeepCollectionEquality().hash(roles),const DeepCollectionEquality().hash(permissions),authProvider,isVerified,isActive,avatar,countryName,countryIsoCode,countryDialCode,partialPhoneNumber,fullPhoneNumber,createdAt,updatedAt);

@override
String toString() {
  return 'UserEntity(id: $id, email: $email, userName: $userName, roles: $roles, permissions: $permissions, authProvider: $authProvider, isVerified: $isVerified, isActive: $isActive, avatar: $avatar, countryName: $countryName, countryIsoCode: $countryIsoCode, countryDialCode: $countryDialCode, partialPhoneNumber: $partialPhoneNumber, fullPhoneNumber: $fullPhoneNumber, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $UserEntityCopyWith<$Res>  {
  factory $UserEntityCopyWith(UserEntity value, $Res Function(UserEntity) _then) = _$UserEntityCopyWithImpl;
@useResult
$Res call({
 String id, String? email, String userName, List<RoleEntity> roles, List<PermissionEntity> permissions, String authProvider, bool isVerified, bool isActive, FileEntity? avatar, String? countryName, String? countryIsoCode, String? countryDialCode, String? partialPhoneNumber, String? fullPhoneNumber, String? createdAt, String? updatedAt
});


$FileEntityCopyWith<$Res>? get avatar;

}
/// @nodoc
class _$UserEntityCopyWithImpl<$Res>
    implements $UserEntityCopyWith<$Res> {
  _$UserEntityCopyWithImpl(this._self, this._then);

  final UserEntity _self;
  final $Res Function(UserEntity) _then;

/// Create a copy of UserEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? email = freezed,Object? userName = null,Object? roles = null,Object? permissions = null,Object? authProvider = null,Object? isVerified = null,Object? isActive = null,Object? avatar = freezed,Object? countryName = freezed,Object? countryIsoCode = freezed,Object? countryDialCode = freezed,Object? partialPhoneNumber = freezed,Object? fullPhoneNumber = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,userName: null == userName ? _self.userName : userName // ignore: cast_nullable_to_non_nullable
as String,roles: null == roles ? _self.roles : roles // ignore: cast_nullable_to_non_nullable
as List<RoleEntity>,permissions: null == permissions ? _self.permissions : permissions // ignore: cast_nullable_to_non_nullable
as List<PermissionEntity>,authProvider: null == authProvider ? _self.authProvider : authProvider // ignore: cast_nullable_to_non_nullable
as String,isVerified: null == isVerified ? _self.isVerified : isVerified // ignore: cast_nullable_to_non_nullable
as bool,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as FileEntity?,countryName: freezed == countryName ? _self.countryName : countryName // ignore: cast_nullable_to_non_nullable
as String?,countryIsoCode: freezed == countryIsoCode ? _self.countryIsoCode : countryIsoCode // ignore: cast_nullable_to_non_nullable
as String?,countryDialCode: freezed == countryDialCode ? _self.countryDialCode : countryDialCode // ignore: cast_nullable_to_non_nullable
as String?,partialPhoneNumber: freezed == partialPhoneNumber ? _self.partialPhoneNumber : partialPhoneNumber // ignore: cast_nullable_to_non_nullable
as String?,fullPhoneNumber: freezed == fullPhoneNumber ? _self.fullPhoneNumber : fullPhoneNumber // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of UserEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FileEntityCopyWith<$Res>? get avatar {
    if (_self.avatar == null) {
    return null;
  }

  return $FileEntityCopyWith<$Res>(_self.avatar!, (value) {
    return _then(_self.copyWith(avatar: value));
  });
}
}


/// Adds pattern-matching-related methods to [UserEntity].
extension UserEntityPatterns on UserEntity {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserEntity() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserEntity value)  $default,){
final _that = this;
switch (_that) {
case _UserEntity():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserEntity value)?  $default,){
final _that = this;
switch (_that) {
case _UserEntity() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String? email,  String userName,  List<RoleEntity> roles,  List<PermissionEntity> permissions,  String authProvider,  bool isVerified,  bool isActive,  FileEntity? avatar,  String? countryName,  String? countryIsoCode,  String? countryDialCode,  String? partialPhoneNumber,  String? fullPhoneNumber,  String? createdAt,  String? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserEntity() when $default != null:
return $default(_that.id,_that.email,_that.userName,_that.roles,_that.permissions,_that.authProvider,_that.isVerified,_that.isActive,_that.avatar,_that.countryName,_that.countryIsoCode,_that.countryDialCode,_that.partialPhoneNumber,_that.fullPhoneNumber,_that.createdAt,_that.updatedAt);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String? email,  String userName,  List<RoleEntity> roles,  List<PermissionEntity> permissions,  String authProvider,  bool isVerified,  bool isActive,  FileEntity? avatar,  String? countryName,  String? countryIsoCode,  String? countryDialCode,  String? partialPhoneNumber,  String? fullPhoneNumber,  String? createdAt,  String? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _UserEntity():
return $default(_that.id,_that.email,_that.userName,_that.roles,_that.permissions,_that.authProvider,_that.isVerified,_that.isActive,_that.avatar,_that.countryName,_that.countryIsoCode,_that.countryDialCode,_that.partialPhoneNumber,_that.fullPhoneNumber,_that.createdAt,_that.updatedAt);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String? email,  String userName,  List<RoleEntity> roles,  List<PermissionEntity> permissions,  String authProvider,  bool isVerified,  bool isActive,  FileEntity? avatar,  String? countryName,  String? countryIsoCode,  String? countryDialCode,  String? partialPhoneNumber,  String? fullPhoneNumber,  String? createdAt,  String? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _UserEntity() when $default != null:
return $default(_that.id,_that.email,_that.userName,_that.roles,_that.permissions,_that.authProvider,_that.isVerified,_that.isActive,_that.avatar,_that.countryName,_that.countryIsoCode,_that.countryDialCode,_that.partialPhoneNumber,_that.fullPhoneNumber,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc


class _UserEntity implements UserEntity {
  const _UserEntity({required this.id, this.email, required this.userName, required final  List<RoleEntity> roles, required final  List<PermissionEntity> permissions, required this.authProvider, required this.isVerified, required this.isActive, this.avatar, this.countryName, this.countryIsoCode, this.countryDialCode, this.partialPhoneNumber, this.fullPhoneNumber, this.createdAt, this.updatedAt}): _roles = roles,_permissions = permissions;
  

@override final  String id;
@override final  String? email;
@override final  String userName;
 final  List<RoleEntity> _roles;
@override List<RoleEntity> get roles {
  if (_roles is EqualUnmodifiableListView) return _roles;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_roles);
}

 final  List<PermissionEntity> _permissions;
@override List<PermissionEntity> get permissions {
  if (_permissions is EqualUnmodifiableListView) return _permissions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_permissions);
}

@override final  String authProvider;
@override final  bool isVerified;
@override final  bool isActive;
@override final  FileEntity? avatar;
@override final  String? countryName;
@override final  String? countryIsoCode;
@override final  String? countryDialCode;
@override final  String? partialPhoneNumber;
@override final  String? fullPhoneNumber;
@override final  String? createdAt;
@override final  String? updatedAt;

/// Create a copy of UserEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserEntityCopyWith<_UserEntity> get copyWith => __$UserEntityCopyWithImpl<_UserEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.email, email) || other.email == email)&&(identical(other.userName, userName) || other.userName == userName)&&const DeepCollectionEquality().equals(other._roles, _roles)&&const DeepCollectionEquality().equals(other._permissions, _permissions)&&(identical(other.authProvider, authProvider) || other.authProvider == authProvider)&&(identical(other.isVerified, isVerified) || other.isVerified == isVerified)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.avatar, avatar) || other.avatar == avatar)&&(identical(other.countryName, countryName) || other.countryName == countryName)&&(identical(other.countryIsoCode, countryIsoCode) || other.countryIsoCode == countryIsoCode)&&(identical(other.countryDialCode, countryDialCode) || other.countryDialCode == countryDialCode)&&(identical(other.partialPhoneNumber, partialPhoneNumber) || other.partialPhoneNumber == partialPhoneNumber)&&(identical(other.fullPhoneNumber, fullPhoneNumber) || other.fullPhoneNumber == fullPhoneNumber)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,email,userName,const DeepCollectionEquality().hash(_roles),const DeepCollectionEquality().hash(_permissions),authProvider,isVerified,isActive,avatar,countryName,countryIsoCode,countryDialCode,partialPhoneNumber,fullPhoneNumber,createdAt,updatedAt);

@override
String toString() {
  return 'UserEntity(id: $id, email: $email, userName: $userName, roles: $roles, permissions: $permissions, authProvider: $authProvider, isVerified: $isVerified, isActive: $isActive, avatar: $avatar, countryName: $countryName, countryIsoCode: $countryIsoCode, countryDialCode: $countryDialCode, partialPhoneNumber: $partialPhoneNumber, fullPhoneNumber: $fullPhoneNumber, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$UserEntityCopyWith<$Res> implements $UserEntityCopyWith<$Res> {
  factory _$UserEntityCopyWith(_UserEntity value, $Res Function(_UserEntity) _then) = __$UserEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String? email, String userName, List<RoleEntity> roles, List<PermissionEntity> permissions, String authProvider, bool isVerified, bool isActive, FileEntity? avatar, String? countryName, String? countryIsoCode, String? countryDialCode, String? partialPhoneNumber, String? fullPhoneNumber, String? createdAt, String? updatedAt
});


@override $FileEntityCopyWith<$Res>? get avatar;

}
/// @nodoc
class __$UserEntityCopyWithImpl<$Res>
    implements _$UserEntityCopyWith<$Res> {
  __$UserEntityCopyWithImpl(this._self, this._then);

  final _UserEntity _self;
  final $Res Function(_UserEntity) _then;

/// Create a copy of UserEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? email = freezed,Object? userName = null,Object? roles = null,Object? permissions = null,Object? authProvider = null,Object? isVerified = null,Object? isActive = null,Object? avatar = freezed,Object? countryName = freezed,Object? countryIsoCode = freezed,Object? countryDialCode = freezed,Object? partialPhoneNumber = freezed,Object? fullPhoneNumber = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_UserEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,userName: null == userName ? _self.userName : userName // ignore: cast_nullable_to_non_nullable
as String,roles: null == roles ? _self._roles : roles // ignore: cast_nullable_to_non_nullable
as List<RoleEntity>,permissions: null == permissions ? _self._permissions : permissions // ignore: cast_nullable_to_non_nullable
as List<PermissionEntity>,authProvider: null == authProvider ? _self.authProvider : authProvider // ignore: cast_nullable_to_non_nullable
as String,isVerified: null == isVerified ? _self.isVerified : isVerified // ignore: cast_nullable_to_non_nullable
as bool,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as FileEntity?,countryName: freezed == countryName ? _self.countryName : countryName // ignore: cast_nullable_to_non_nullable
as String?,countryIsoCode: freezed == countryIsoCode ? _self.countryIsoCode : countryIsoCode // ignore: cast_nullable_to_non_nullable
as String?,countryDialCode: freezed == countryDialCode ? _self.countryDialCode : countryDialCode // ignore: cast_nullable_to_non_nullable
as String?,partialPhoneNumber: freezed == partialPhoneNumber ? _self.partialPhoneNumber : partialPhoneNumber // ignore: cast_nullable_to_non_nullable
as String?,fullPhoneNumber: freezed == fullPhoneNumber ? _self.fullPhoneNumber : fullPhoneNumber // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of UserEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FileEntityCopyWith<$Res>? get avatar {
    if (_self.avatar == null) {
    return null;
  }

  return $FileEntityCopyWith<$Res>(_self.avatar!, (value) {
    return _then(_self.copyWith(avatar: value));
  });
}
}

// dart format on
