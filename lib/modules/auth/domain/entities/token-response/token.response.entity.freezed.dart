// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'token.response.entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TokenResponseEntity {

 String get accessToken; String get refreshToken; DateTime get accessTokenExpiresAt; DateTime get refreshTokenExpiresAt; String get tokenType;
/// Create a copy of TokenResponseEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TokenResponseEntityCopyWith<TokenResponseEntity> get copyWith => _$TokenResponseEntityCopyWithImpl<TokenResponseEntity>(this as TokenResponseEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TokenResponseEntity&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken)&&(identical(other.accessTokenExpiresAt, accessTokenExpiresAt) || other.accessTokenExpiresAt == accessTokenExpiresAt)&&(identical(other.refreshTokenExpiresAt, refreshTokenExpiresAt) || other.refreshTokenExpiresAt == refreshTokenExpiresAt)&&(identical(other.tokenType, tokenType) || other.tokenType == tokenType));
}


@override
int get hashCode => Object.hash(runtimeType,accessToken,refreshToken,accessTokenExpiresAt,refreshTokenExpiresAt,tokenType);

@override
String toString() {
  return 'TokenResponseEntity(accessToken: $accessToken, refreshToken: $refreshToken, accessTokenExpiresAt: $accessTokenExpiresAt, refreshTokenExpiresAt: $refreshTokenExpiresAt, tokenType: $tokenType)';
}


}

/// @nodoc
abstract mixin class $TokenResponseEntityCopyWith<$Res>  {
  factory $TokenResponseEntityCopyWith(TokenResponseEntity value, $Res Function(TokenResponseEntity) _then) = _$TokenResponseEntityCopyWithImpl;
@useResult
$Res call({
 String accessToken, String refreshToken, DateTime accessTokenExpiresAt, DateTime refreshTokenExpiresAt, String tokenType
});




}
/// @nodoc
class _$TokenResponseEntityCopyWithImpl<$Res>
    implements $TokenResponseEntityCopyWith<$Res> {
  _$TokenResponseEntityCopyWithImpl(this._self, this._then);

  final TokenResponseEntity _self;
  final $Res Function(TokenResponseEntity) _then;

/// Create a copy of TokenResponseEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? accessToken = null,Object? refreshToken = null,Object? accessTokenExpiresAt = null,Object? refreshTokenExpiresAt = null,Object? tokenType = null,}) {
  return _then(_self.copyWith(
accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,refreshToken: null == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String,accessTokenExpiresAt: null == accessTokenExpiresAt ? _self.accessTokenExpiresAt : accessTokenExpiresAt // ignore: cast_nullable_to_non_nullable
as DateTime,refreshTokenExpiresAt: null == refreshTokenExpiresAt ? _self.refreshTokenExpiresAt : refreshTokenExpiresAt // ignore: cast_nullable_to_non_nullable
as DateTime,tokenType: null == tokenType ? _self.tokenType : tokenType // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TokenResponseEntity].
extension TokenResponseEntityPatterns on TokenResponseEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TokenResponseEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TokenResponseEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TokenResponseEntity value)  $default,){
final _that = this;
switch (_that) {
case _TokenResponseEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TokenResponseEntity value)?  $default,){
final _that = this;
switch (_that) {
case _TokenResponseEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String accessToken,  String refreshToken,  DateTime accessTokenExpiresAt,  DateTime refreshTokenExpiresAt,  String tokenType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TokenResponseEntity() when $default != null:
return $default(_that.accessToken,_that.refreshToken,_that.accessTokenExpiresAt,_that.refreshTokenExpiresAt,_that.tokenType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String accessToken,  String refreshToken,  DateTime accessTokenExpiresAt,  DateTime refreshTokenExpiresAt,  String tokenType)  $default,) {final _that = this;
switch (_that) {
case _TokenResponseEntity():
return $default(_that.accessToken,_that.refreshToken,_that.accessTokenExpiresAt,_that.refreshTokenExpiresAt,_that.tokenType);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String accessToken,  String refreshToken,  DateTime accessTokenExpiresAt,  DateTime refreshTokenExpiresAt,  String tokenType)?  $default,) {final _that = this;
switch (_that) {
case _TokenResponseEntity() when $default != null:
return $default(_that.accessToken,_that.refreshToken,_that.accessTokenExpiresAt,_that.refreshTokenExpiresAt,_that.tokenType);case _:
  return null;

}
}

}

/// @nodoc


class _TokenResponseEntity implements TokenResponseEntity {
  const _TokenResponseEntity({required this.accessToken, required this.refreshToken, required this.accessTokenExpiresAt, required this.refreshTokenExpiresAt, required this.tokenType});
  

@override final  String accessToken;
@override final  String refreshToken;
@override final  DateTime accessTokenExpiresAt;
@override final  DateTime refreshTokenExpiresAt;
@override final  String tokenType;

/// Create a copy of TokenResponseEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TokenResponseEntityCopyWith<_TokenResponseEntity> get copyWith => __$TokenResponseEntityCopyWithImpl<_TokenResponseEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TokenResponseEntity&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken)&&(identical(other.accessTokenExpiresAt, accessTokenExpiresAt) || other.accessTokenExpiresAt == accessTokenExpiresAt)&&(identical(other.refreshTokenExpiresAt, refreshTokenExpiresAt) || other.refreshTokenExpiresAt == refreshTokenExpiresAt)&&(identical(other.tokenType, tokenType) || other.tokenType == tokenType));
}


@override
int get hashCode => Object.hash(runtimeType,accessToken,refreshToken,accessTokenExpiresAt,refreshTokenExpiresAt,tokenType);

@override
String toString() {
  return 'TokenResponseEntity(accessToken: $accessToken, refreshToken: $refreshToken, accessTokenExpiresAt: $accessTokenExpiresAt, refreshTokenExpiresAt: $refreshTokenExpiresAt, tokenType: $tokenType)';
}


}

/// @nodoc
abstract mixin class _$TokenResponseEntityCopyWith<$Res> implements $TokenResponseEntityCopyWith<$Res> {
  factory _$TokenResponseEntityCopyWith(_TokenResponseEntity value, $Res Function(_TokenResponseEntity) _then) = __$TokenResponseEntityCopyWithImpl;
@override @useResult
$Res call({
 String accessToken, String refreshToken, DateTime accessTokenExpiresAt, DateTime refreshTokenExpiresAt, String tokenType
});




}
/// @nodoc
class __$TokenResponseEntityCopyWithImpl<$Res>
    implements _$TokenResponseEntityCopyWith<$Res> {
  __$TokenResponseEntityCopyWithImpl(this._self, this._then);

  final _TokenResponseEntity _self;
  final $Res Function(_TokenResponseEntity) _then;

/// Create a copy of TokenResponseEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? accessToken = null,Object? refreshToken = null,Object? accessTokenExpiresAt = null,Object? refreshTokenExpiresAt = null,Object? tokenType = null,}) {
  return _then(_TokenResponseEntity(
accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,refreshToken: null == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String,accessTokenExpiresAt: null == accessTokenExpiresAt ? _self.accessTokenExpiresAt : accessTokenExpiresAt // ignore: cast_nullable_to_non_nullable
as DateTime,refreshTokenExpiresAt: null == refreshTokenExpiresAt ? _self.refreshTokenExpiresAt : refreshTokenExpiresAt // ignore: cast_nullable_to_non_nullable
as DateTime,tokenType: null == tokenType ? _self.tokenType : tokenType // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
