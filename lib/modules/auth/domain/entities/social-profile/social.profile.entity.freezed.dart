// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'social.profile.entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SocialProfileEntity {

 String get email; String? get displayName; String? get photoUrl; String? get idToken;
/// Create a copy of SocialProfileEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SocialProfileEntityCopyWith<SocialProfileEntity> get copyWith => _$SocialProfileEntityCopyWithImpl<SocialProfileEntity>(this as SocialProfileEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SocialProfileEntity&&(identical(other.email, email) || other.email == email)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.photoUrl, photoUrl) || other.photoUrl == photoUrl)&&(identical(other.idToken, idToken) || other.idToken == idToken));
}


@override
int get hashCode => Object.hash(runtimeType,email,displayName,photoUrl,idToken);

@override
String toString() {
  return 'SocialProfileEntity(email: $email, displayName: $displayName, photoUrl: $photoUrl, idToken: $idToken)';
}


}

/// @nodoc
abstract mixin class $SocialProfileEntityCopyWith<$Res>  {
  factory $SocialProfileEntityCopyWith(SocialProfileEntity value, $Res Function(SocialProfileEntity) _then) = _$SocialProfileEntityCopyWithImpl;
@useResult
$Res call({
 String email, String? displayName, String? photoUrl, String? idToken
});




}
/// @nodoc
class _$SocialProfileEntityCopyWithImpl<$Res>
    implements $SocialProfileEntityCopyWith<$Res> {
  _$SocialProfileEntityCopyWithImpl(this._self, this._then);

  final SocialProfileEntity _self;
  final $Res Function(SocialProfileEntity) _then;

/// Create a copy of SocialProfileEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,Object? displayName = freezed,Object? photoUrl = freezed,Object? idToken = freezed,}) {
  return _then(_self.copyWith(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,displayName: freezed == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String?,photoUrl: freezed == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as String?,idToken: freezed == idToken ? _self.idToken : idToken // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SocialProfileEntity].
extension SocialProfileEntityPatterns on SocialProfileEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SocialProfileEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SocialProfileEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SocialProfileEntity value)  $default,){
final _that = this;
switch (_that) {
case _SocialProfileEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SocialProfileEntity value)?  $default,){
final _that = this;
switch (_that) {
case _SocialProfileEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String email,  String? displayName,  String? photoUrl,  String? idToken)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SocialProfileEntity() when $default != null:
return $default(_that.email,_that.displayName,_that.photoUrl,_that.idToken);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String email,  String? displayName,  String? photoUrl,  String? idToken)  $default,) {final _that = this;
switch (_that) {
case _SocialProfileEntity():
return $default(_that.email,_that.displayName,_that.photoUrl,_that.idToken);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String email,  String? displayName,  String? photoUrl,  String? idToken)?  $default,) {final _that = this;
switch (_that) {
case _SocialProfileEntity() when $default != null:
return $default(_that.email,_that.displayName,_that.photoUrl,_that.idToken);case _:
  return null;

}
}

}

/// @nodoc


class _SocialProfileEntity implements SocialProfileEntity {
  const _SocialProfileEntity({required this.email, this.displayName, this.photoUrl, this.idToken});
  

@override final  String email;
@override final  String? displayName;
@override final  String? photoUrl;
@override final  String? idToken;

/// Create a copy of SocialProfileEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SocialProfileEntityCopyWith<_SocialProfileEntity> get copyWith => __$SocialProfileEntityCopyWithImpl<_SocialProfileEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SocialProfileEntity&&(identical(other.email, email) || other.email == email)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.photoUrl, photoUrl) || other.photoUrl == photoUrl)&&(identical(other.idToken, idToken) || other.idToken == idToken));
}


@override
int get hashCode => Object.hash(runtimeType,email,displayName,photoUrl,idToken);

@override
String toString() {
  return 'SocialProfileEntity(email: $email, displayName: $displayName, photoUrl: $photoUrl, idToken: $idToken)';
}


}

/// @nodoc
abstract mixin class _$SocialProfileEntityCopyWith<$Res> implements $SocialProfileEntityCopyWith<$Res> {
  factory _$SocialProfileEntityCopyWith(_SocialProfileEntity value, $Res Function(_SocialProfileEntity) _then) = __$SocialProfileEntityCopyWithImpl;
@override @useResult
$Res call({
 String email, String? displayName, String? photoUrl, String? idToken
});




}
/// @nodoc
class __$SocialProfileEntityCopyWithImpl<$Res>
    implements _$SocialProfileEntityCopyWith<$Res> {
  __$SocialProfileEntityCopyWithImpl(this._self, this._then);

  final _SocialProfileEntity _self;
  final $Res Function(_SocialProfileEntity) _then;

/// Create a copy of SocialProfileEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,Object? displayName = freezed,Object? photoUrl = freezed,Object? idToken = freezed,}) {
  return _then(_SocialProfileEntity(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,displayName: freezed == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String?,photoUrl: freezed == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as String?,idToken: freezed == idToken ? _self.idToken : idToken // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
