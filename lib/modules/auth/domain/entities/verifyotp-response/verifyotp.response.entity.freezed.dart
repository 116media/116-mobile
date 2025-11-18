// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verifyotp.response.entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$VerifyOtpResponseEntity {

 bool get isSuccess;
/// Create a copy of VerifyOtpResponseEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VerifyOtpResponseEntityCopyWith<VerifyOtpResponseEntity> get copyWith => _$VerifyOtpResponseEntityCopyWithImpl<VerifyOtpResponseEntity>(this as VerifyOtpResponseEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VerifyOtpResponseEntity&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess));
}


@override
int get hashCode => Object.hash(runtimeType,isSuccess);

@override
String toString() {
  return 'VerifyOtpResponseEntity(isSuccess: $isSuccess)';
}


}

/// @nodoc
abstract mixin class $VerifyOtpResponseEntityCopyWith<$Res>  {
  factory $VerifyOtpResponseEntityCopyWith(VerifyOtpResponseEntity value, $Res Function(VerifyOtpResponseEntity) _then) = _$VerifyOtpResponseEntityCopyWithImpl;
@useResult
$Res call({
 bool isSuccess
});




}
/// @nodoc
class _$VerifyOtpResponseEntityCopyWithImpl<$Res>
    implements $VerifyOtpResponseEntityCopyWith<$Res> {
  _$VerifyOtpResponseEntityCopyWithImpl(this._self, this._then);

  final VerifyOtpResponseEntity _self;
  final $Res Function(VerifyOtpResponseEntity) _then;

/// Create a copy of VerifyOtpResponseEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isSuccess = null,}) {
  return _then(_self.copyWith(
isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [VerifyOtpResponseEntity].
extension VerifyOtpResponseEntityPatterns on VerifyOtpResponseEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VerifyOtpResponseEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VerifyOtpResponseEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VerifyOtpResponseEntity value)  $default,){
final _that = this;
switch (_that) {
case _VerifyOtpResponseEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VerifyOtpResponseEntity value)?  $default,){
final _that = this;
switch (_that) {
case _VerifyOtpResponseEntity() when $default != null:
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
case _VerifyOtpResponseEntity() when $default != null:
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
case _VerifyOtpResponseEntity():
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
case _VerifyOtpResponseEntity() when $default != null:
return $default(_that.isSuccess);case _:
  return null;

}
}

}

/// @nodoc


class _VerifyOtpResponseEntity implements VerifyOtpResponseEntity {
  const _VerifyOtpResponseEntity({required this.isSuccess});
  

@override final  bool isSuccess;

/// Create a copy of VerifyOtpResponseEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VerifyOtpResponseEntityCopyWith<_VerifyOtpResponseEntity> get copyWith => __$VerifyOtpResponseEntityCopyWithImpl<_VerifyOtpResponseEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VerifyOtpResponseEntity&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess));
}


@override
int get hashCode => Object.hash(runtimeType,isSuccess);

@override
String toString() {
  return 'VerifyOtpResponseEntity(isSuccess: $isSuccess)';
}


}

/// @nodoc
abstract mixin class _$VerifyOtpResponseEntityCopyWith<$Res> implements $VerifyOtpResponseEntityCopyWith<$Res> {
  factory _$VerifyOtpResponseEntityCopyWith(_VerifyOtpResponseEntity value, $Res Function(_VerifyOtpResponseEntity) _then) = __$VerifyOtpResponseEntityCopyWithImpl;
@override @useResult
$Res call({
 bool isSuccess
});




}
/// @nodoc
class __$VerifyOtpResponseEntityCopyWithImpl<$Res>
    implements _$VerifyOtpResponseEntityCopyWith<$Res> {
  __$VerifyOtpResponseEntityCopyWithImpl(this._self, this._then);

  final _VerifyOtpResponseEntity _self;
  final $Res Function(_VerifyOtpResponseEntity) _then;

/// Create a copy of VerifyOtpResponseEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isSuccess = null,}) {
  return _then(_VerifyOtpResponseEntity(
isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
