// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.preferences.entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UserPreferencesEntity {

 String get languageCode; AppThemeMode get themeMode;
/// Create a copy of UserPreferencesEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserPreferencesEntityCopyWith<UserPreferencesEntity> get copyWith => _$UserPreferencesEntityCopyWithImpl<UserPreferencesEntity>(this as UserPreferencesEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserPreferencesEntity&&(identical(other.languageCode, languageCode) || other.languageCode == languageCode)&&(identical(other.themeMode, themeMode) || other.themeMode == themeMode));
}


@override
int get hashCode => Object.hash(runtimeType,languageCode,themeMode);

@override
String toString() {
  return 'UserPreferencesEntity(languageCode: $languageCode, themeMode: $themeMode)';
}


}

/// @nodoc
abstract mixin class $UserPreferencesEntityCopyWith<$Res>  {
  factory $UserPreferencesEntityCopyWith(UserPreferencesEntity value, $Res Function(UserPreferencesEntity) _then) = _$UserPreferencesEntityCopyWithImpl;
@useResult
$Res call({
 String languageCode, AppThemeMode themeMode
});




}
/// @nodoc
class _$UserPreferencesEntityCopyWithImpl<$Res>
    implements $UserPreferencesEntityCopyWith<$Res> {
  _$UserPreferencesEntityCopyWithImpl(this._self, this._then);

  final UserPreferencesEntity _self;
  final $Res Function(UserPreferencesEntity) _then;

/// Create a copy of UserPreferencesEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? languageCode = null,Object? themeMode = null,}) {
  return _then(_self.copyWith(
languageCode: null == languageCode ? _self.languageCode : languageCode // ignore: cast_nullable_to_non_nullable
as String,themeMode: null == themeMode ? _self.themeMode : themeMode // ignore: cast_nullable_to_non_nullable
as AppThemeMode,
  ));
}

}


/// Adds pattern-matching-related methods to [UserPreferencesEntity].
extension UserPreferencesEntityPatterns on UserPreferencesEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserPreferencesEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserPreferencesEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserPreferencesEntity value)  $default,){
final _that = this;
switch (_that) {
case _UserPreferencesEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserPreferencesEntity value)?  $default,){
final _that = this;
switch (_that) {
case _UserPreferencesEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String languageCode,  AppThemeMode themeMode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserPreferencesEntity() when $default != null:
return $default(_that.languageCode,_that.themeMode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String languageCode,  AppThemeMode themeMode)  $default,) {final _that = this;
switch (_that) {
case _UserPreferencesEntity():
return $default(_that.languageCode,_that.themeMode);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String languageCode,  AppThemeMode themeMode)?  $default,) {final _that = this;
switch (_that) {
case _UserPreferencesEntity() when $default != null:
return $default(_that.languageCode,_that.themeMode);case _:
  return null;

}
}

}

/// @nodoc


class _UserPreferencesEntity implements UserPreferencesEntity {
  const _UserPreferencesEntity({required this.languageCode, required this.themeMode});
  

@override final  String languageCode;
@override final  AppThemeMode themeMode;

/// Create a copy of UserPreferencesEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserPreferencesEntityCopyWith<_UserPreferencesEntity> get copyWith => __$UserPreferencesEntityCopyWithImpl<_UserPreferencesEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserPreferencesEntity&&(identical(other.languageCode, languageCode) || other.languageCode == languageCode)&&(identical(other.themeMode, themeMode) || other.themeMode == themeMode));
}


@override
int get hashCode => Object.hash(runtimeType,languageCode,themeMode);

@override
String toString() {
  return 'UserPreferencesEntity(languageCode: $languageCode, themeMode: $themeMode)';
}


}

/// @nodoc
abstract mixin class _$UserPreferencesEntityCopyWith<$Res> implements $UserPreferencesEntityCopyWith<$Res> {
  factory _$UserPreferencesEntityCopyWith(_UserPreferencesEntity value, $Res Function(_UserPreferencesEntity) _then) = __$UserPreferencesEntityCopyWithImpl;
@override @useResult
$Res call({
 String languageCode, AppThemeMode themeMode
});




}
/// @nodoc
class __$UserPreferencesEntityCopyWithImpl<$Res>
    implements _$UserPreferencesEntityCopyWith<$Res> {
  __$UserPreferencesEntityCopyWithImpl(this._self, this._then);

  final _UserPreferencesEntity _self;
  final $Res Function(_UserPreferencesEntity) _then;

/// Create a copy of UserPreferencesEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? languageCode = null,Object? themeMode = null,}) {
  return _then(_UserPreferencesEntity(
languageCode: null == languageCode ? _self.languageCode : languageCode // ignore: cast_nullable_to_non_nullable
as String,themeMode: null == themeMode ? _self.themeMode : themeMode // ignore: cast_nullable_to_non_nullable
as AppThemeMode,
  ));
}


}

// dart format on
