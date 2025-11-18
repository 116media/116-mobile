// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'session.state.entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SessionStateEntity {

 bool get hasCompletedOnboarding; bool get hasSetPreferences; AuthStatus get authStatus; String? get userId;
/// Create a copy of SessionStateEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SessionStateEntityCopyWith<SessionStateEntity> get copyWith => _$SessionStateEntityCopyWithImpl<SessionStateEntity>(this as SessionStateEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SessionStateEntity&&(identical(other.hasCompletedOnboarding, hasCompletedOnboarding) || other.hasCompletedOnboarding == hasCompletedOnboarding)&&(identical(other.hasSetPreferences, hasSetPreferences) || other.hasSetPreferences == hasSetPreferences)&&(identical(other.authStatus, authStatus) || other.authStatus == authStatus)&&(identical(other.userId, userId) || other.userId == userId));
}


@override
int get hashCode => Object.hash(runtimeType,hasCompletedOnboarding,hasSetPreferences,authStatus,userId);

@override
String toString() {
  return 'SessionStateEntity(hasCompletedOnboarding: $hasCompletedOnboarding, hasSetPreferences: $hasSetPreferences, authStatus: $authStatus, userId: $userId)';
}


}

/// @nodoc
abstract mixin class $SessionStateEntityCopyWith<$Res>  {
  factory $SessionStateEntityCopyWith(SessionStateEntity value, $Res Function(SessionStateEntity) _then) = _$SessionStateEntityCopyWithImpl;
@useResult
$Res call({
 bool hasCompletedOnboarding, bool hasSetPreferences, AuthStatus authStatus, String? userId
});




}
/// @nodoc
class _$SessionStateEntityCopyWithImpl<$Res>
    implements $SessionStateEntityCopyWith<$Res> {
  _$SessionStateEntityCopyWithImpl(this._self, this._then);

  final SessionStateEntity _self;
  final $Res Function(SessionStateEntity) _then;

/// Create a copy of SessionStateEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? hasCompletedOnboarding = null,Object? hasSetPreferences = null,Object? authStatus = null,Object? userId = freezed,}) {
  return _then(_self.copyWith(
hasCompletedOnboarding: null == hasCompletedOnboarding ? _self.hasCompletedOnboarding : hasCompletedOnboarding // ignore: cast_nullable_to_non_nullable
as bool,hasSetPreferences: null == hasSetPreferences ? _self.hasSetPreferences : hasSetPreferences // ignore: cast_nullable_to_non_nullable
as bool,authStatus: null == authStatus ? _self.authStatus : authStatus // ignore: cast_nullable_to_non_nullable
as AuthStatus,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SessionStateEntity].
extension SessionStateEntityPatterns on SessionStateEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SessionStateEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SessionStateEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SessionStateEntity value)  $default,){
final _that = this;
switch (_that) {
case _SessionStateEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SessionStateEntity value)?  $default,){
final _that = this;
switch (_that) {
case _SessionStateEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool hasCompletedOnboarding,  bool hasSetPreferences,  AuthStatus authStatus,  String? userId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SessionStateEntity() when $default != null:
return $default(_that.hasCompletedOnboarding,_that.hasSetPreferences,_that.authStatus,_that.userId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool hasCompletedOnboarding,  bool hasSetPreferences,  AuthStatus authStatus,  String? userId)  $default,) {final _that = this;
switch (_that) {
case _SessionStateEntity():
return $default(_that.hasCompletedOnboarding,_that.hasSetPreferences,_that.authStatus,_that.userId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool hasCompletedOnboarding,  bool hasSetPreferences,  AuthStatus authStatus,  String? userId)?  $default,) {final _that = this;
switch (_that) {
case _SessionStateEntity() when $default != null:
return $default(_that.hasCompletedOnboarding,_that.hasSetPreferences,_that.authStatus,_that.userId);case _:
  return null;

}
}

}

/// @nodoc


class _SessionStateEntity extends SessionStateEntity {
  const _SessionStateEntity({required this.hasCompletedOnboarding, required this.hasSetPreferences, required this.authStatus, this.userId}): super._();
  

@override final  bool hasCompletedOnboarding;
@override final  bool hasSetPreferences;
@override final  AuthStatus authStatus;
@override final  String? userId;

/// Create a copy of SessionStateEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SessionStateEntityCopyWith<_SessionStateEntity> get copyWith => __$SessionStateEntityCopyWithImpl<_SessionStateEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SessionStateEntity&&(identical(other.hasCompletedOnboarding, hasCompletedOnboarding) || other.hasCompletedOnboarding == hasCompletedOnboarding)&&(identical(other.hasSetPreferences, hasSetPreferences) || other.hasSetPreferences == hasSetPreferences)&&(identical(other.authStatus, authStatus) || other.authStatus == authStatus)&&(identical(other.userId, userId) || other.userId == userId));
}


@override
int get hashCode => Object.hash(runtimeType,hasCompletedOnboarding,hasSetPreferences,authStatus,userId);

@override
String toString() {
  return 'SessionStateEntity(hasCompletedOnboarding: $hasCompletedOnboarding, hasSetPreferences: $hasSetPreferences, authStatus: $authStatus, userId: $userId)';
}


}

/// @nodoc
abstract mixin class _$SessionStateEntityCopyWith<$Res> implements $SessionStateEntityCopyWith<$Res> {
  factory _$SessionStateEntityCopyWith(_SessionStateEntity value, $Res Function(_SessionStateEntity) _then) = __$SessionStateEntityCopyWithImpl;
@override @useResult
$Res call({
 bool hasCompletedOnboarding, bool hasSetPreferences, AuthStatus authStatus, String? userId
});




}
/// @nodoc
class __$SessionStateEntityCopyWithImpl<$Res>
    implements _$SessionStateEntityCopyWith<$Res> {
  __$SessionStateEntityCopyWithImpl(this._self, this._then);

  final _SessionStateEntity _self;
  final $Res Function(_SessionStateEntity) _then;

/// Create a copy of SessionStateEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? hasCompletedOnboarding = null,Object? hasSetPreferences = null,Object? authStatus = null,Object? userId = freezed,}) {
  return _then(_SessionStateEntity(
hasCompletedOnboarding: null == hasCompletedOnboarding ? _self.hasCompletedOnboarding : hasCompletedOnboarding // ignore: cast_nullable_to_non_nullable
as bool,hasSetPreferences: null == hasSetPreferences ? _self.hasSetPreferences : hasSetPreferences // ignore: cast_nullable_to_non_nullable
as bool,authStatus: null == authStatus ? _self.authStatus : authStatus // ignore: cast_nullable_to_non_nullable
as AuthStatus,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
