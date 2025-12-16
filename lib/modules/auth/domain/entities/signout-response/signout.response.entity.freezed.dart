// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signout.response.entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SignOutResponseEntity {

 bool get isSuccess;
/// Create a copy of SignOutResponseEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignOutResponseEntityCopyWith<SignOutResponseEntity> get copyWith => _$SignOutResponseEntityCopyWithImpl<SignOutResponseEntity>(this as SignOutResponseEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignOutResponseEntity&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess));
}


@override
int get hashCode => Object.hash(runtimeType,isSuccess);

@override
String toString() {
  return 'SignOutResponseEntity(isSuccess: $isSuccess)';
}


}

/// @nodoc
abstract mixin class $SignOutResponseEntityCopyWith<$Res>  {
  factory $SignOutResponseEntityCopyWith(SignOutResponseEntity value, $Res Function(SignOutResponseEntity) _then) = _$SignOutResponseEntityCopyWithImpl;
@useResult
$Res call({
 bool isSuccess
});




}
/// @nodoc
class _$SignOutResponseEntityCopyWithImpl<$Res>
    implements $SignOutResponseEntityCopyWith<$Res> {
  _$SignOutResponseEntityCopyWithImpl(this._self, this._then);

  final SignOutResponseEntity _self;
  final $Res Function(SignOutResponseEntity) _then;

/// Create a copy of SignOutResponseEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isSuccess = null,}) {
  return _then(_self.copyWith(
isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [SignOutResponseEntity].
extension SignOutResponseEntityPatterns on SignOutResponseEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SignOutResponseEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SignOutResponseEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SignOutResponseEntity value)  $default,){
final _that = this;
switch (_that) {
case _SignOutResponseEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SignOutResponseEntity value)?  $default,){
final _that = this;
switch (_that) {
case _SignOutResponseEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isSuccess)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SignOutResponseEntity() when $default != null:
return $default(_that.isSuccess);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isSuccess)  $default,) {final _that = this;
switch (_that) {
case _SignOutResponseEntity():
return $default(_that.isSuccess);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isSuccess)?  $default,) {final _that = this;
switch (_that) {
case _SignOutResponseEntity() when $default != null:
return $default(_that.isSuccess);case _:
  return null;

}
}

}

/// @nodoc


class _SignOutResponseEntity implements SignOutResponseEntity {
  const _SignOutResponseEntity({required this.isSuccess});
  

@override final  bool isSuccess;

/// Create a copy of SignOutResponseEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignOutResponseEntityCopyWith<_SignOutResponseEntity> get copyWith => __$SignOutResponseEntityCopyWithImpl<_SignOutResponseEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignOutResponseEntity&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess));
}


@override
int get hashCode => Object.hash(runtimeType,isSuccess);

@override
String toString() {
  return 'SignOutResponseEntity(isSuccess: $isSuccess)';
}


}

/// @nodoc
abstract mixin class _$SignOutResponseEntityCopyWith<$Res> implements $SignOutResponseEntityCopyWith<$Res> {
  factory _$SignOutResponseEntityCopyWith(_SignOutResponseEntity value, $Res Function(_SignOutResponseEntity) _then) = __$SignOutResponseEntityCopyWithImpl;
@override @useResult
$Res call({
 bool isSuccess
});




}
/// @nodoc
class __$SignOutResponseEntityCopyWithImpl<$Res>
    implements _$SignOutResponseEntityCopyWith<$Res> {
  __$SignOutResponseEntityCopyWithImpl(this._self, this._then);

  final _SignOutResponseEntity _self;
  final $Res Function(_SignOutResponseEntity) _then;

/// Create a copy of SignOutResponseEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isSuccess = null,}) {
  return _then(_SignOutResponseEntity(
isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
