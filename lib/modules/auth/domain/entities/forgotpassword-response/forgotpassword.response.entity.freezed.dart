// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forgotpassword.response.entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ForgotPasswordResponseEntity {

 String get email; bool get isSuccess;
/// Create a copy of ForgotPasswordResponseEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ForgotPasswordResponseEntityCopyWith<ForgotPasswordResponseEntity> get copyWith => _$ForgotPasswordResponseEntityCopyWithImpl<ForgotPasswordResponseEntity>(this as ForgotPasswordResponseEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ForgotPasswordResponseEntity&&(identical(other.email, email) || other.email == email)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess));
}


@override
int get hashCode => Object.hash(runtimeType,email,isSuccess);

@override
String toString() {
  return 'ForgotPasswordResponseEntity(email: $email, isSuccess: $isSuccess)';
}


}

/// @nodoc
abstract mixin class $ForgotPasswordResponseEntityCopyWith<$Res>  {
  factory $ForgotPasswordResponseEntityCopyWith(ForgotPasswordResponseEntity value, $Res Function(ForgotPasswordResponseEntity) _then) = _$ForgotPasswordResponseEntityCopyWithImpl;
@useResult
$Res call({
 String email, bool isSuccess
});




}
/// @nodoc
class _$ForgotPasswordResponseEntityCopyWithImpl<$Res>
    implements $ForgotPasswordResponseEntityCopyWith<$Res> {
  _$ForgotPasswordResponseEntityCopyWithImpl(this._self, this._then);

  final ForgotPasswordResponseEntity _self;
  final $Res Function(ForgotPasswordResponseEntity) _then;

/// Create a copy of ForgotPasswordResponseEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,Object? isSuccess = null,}) {
  return _then(_self.copyWith(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ForgotPasswordResponseEntity].
extension ForgotPasswordResponseEntityPatterns on ForgotPasswordResponseEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ForgotPasswordResponseEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ForgotPasswordResponseEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ForgotPasswordResponseEntity value)  $default,){
final _that = this;
switch (_that) {
case _ForgotPasswordResponseEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ForgotPasswordResponseEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ForgotPasswordResponseEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String email,  bool isSuccess)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ForgotPasswordResponseEntity() when $default != null:
return $default(_that.email,_that.isSuccess);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String email,  bool isSuccess)  $default,) {final _that = this;
switch (_that) {
case _ForgotPasswordResponseEntity():
return $default(_that.email,_that.isSuccess);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String email,  bool isSuccess)?  $default,) {final _that = this;
switch (_that) {
case _ForgotPasswordResponseEntity() when $default != null:
return $default(_that.email,_that.isSuccess);case _:
  return null;

}
}

}

/// @nodoc


class _ForgotPasswordResponseEntity implements ForgotPasswordResponseEntity {
  const _ForgotPasswordResponseEntity({required this.email, required this.isSuccess});
  

@override final  String email;
@override final  bool isSuccess;

/// Create a copy of ForgotPasswordResponseEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ForgotPasswordResponseEntityCopyWith<_ForgotPasswordResponseEntity> get copyWith => __$ForgotPasswordResponseEntityCopyWithImpl<_ForgotPasswordResponseEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ForgotPasswordResponseEntity&&(identical(other.email, email) || other.email == email)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess));
}


@override
int get hashCode => Object.hash(runtimeType,email,isSuccess);

@override
String toString() {
  return 'ForgotPasswordResponseEntity(email: $email, isSuccess: $isSuccess)';
}


}

/// @nodoc
abstract mixin class _$ForgotPasswordResponseEntityCopyWith<$Res> implements $ForgotPasswordResponseEntityCopyWith<$Res> {
  factory _$ForgotPasswordResponseEntityCopyWith(_ForgotPasswordResponseEntity value, $Res Function(_ForgotPasswordResponseEntity) _then) = __$ForgotPasswordResponseEntityCopyWithImpl;
@override @useResult
$Res call({
 String email, bool isSuccess
});




}
/// @nodoc
class __$ForgotPasswordResponseEntityCopyWithImpl<$Res>
    implements _$ForgotPasswordResponseEntityCopyWith<$Res> {
  __$ForgotPasswordResponseEntityCopyWithImpl(this._self, this._then);

  final _ForgotPasswordResponseEntity _self;
  final $Res Function(_ForgotPasswordResponseEntity) _then;

/// Create a copy of ForgotPasswordResponseEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,Object? isSuccess = null,}) {
  return _then(_ForgotPasswordResponseEntity(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
