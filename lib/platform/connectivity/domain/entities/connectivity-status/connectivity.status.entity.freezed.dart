// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'connectivity.status.entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ConnectivityStatusEntity {

 bool get isConnected;
/// Create a copy of ConnectivityStatusEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConnectivityStatusEntityCopyWith<ConnectivityStatusEntity> get copyWith => _$ConnectivityStatusEntityCopyWithImpl<ConnectivityStatusEntity>(this as ConnectivityStatusEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConnectivityStatusEntity&&(identical(other.isConnected, isConnected) || other.isConnected == isConnected));
}


@override
int get hashCode => Object.hash(runtimeType,isConnected);

@override
String toString() {
  return 'ConnectivityStatusEntity(isConnected: $isConnected)';
}


}

/// @nodoc
abstract mixin class $ConnectivityStatusEntityCopyWith<$Res>  {
  factory $ConnectivityStatusEntityCopyWith(ConnectivityStatusEntity value, $Res Function(ConnectivityStatusEntity) _then) = _$ConnectivityStatusEntityCopyWithImpl;
@useResult
$Res call({
 bool isConnected
});




}
/// @nodoc
class _$ConnectivityStatusEntityCopyWithImpl<$Res>
    implements $ConnectivityStatusEntityCopyWith<$Res> {
  _$ConnectivityStatusEntityCopyWithImpl(this._self, this._then);

  final ConnectivityStatusEntity _self;
  final $Res Function(ConnectivityStatusEntity) _then;

/// Create a copy of ConnectivityStatusEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isConnected = null,}) {
  return _then(_self.copyWith(
isConnected: null == isConnected ? _self.isConnected : isConnected // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ConnectivityStatusEntity].
extension ConnectivityStatusEntityPatterns on ConnectivityStatusEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ConnectivityStatusEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ConnectivityStatusEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ConnectivityStatusEntity value)  $default,){
final _that = this;
switch (_that) {
case _ConnectivityStatusEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ConnectivityStatusEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ConnectivityStatusEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isConnected)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ConnectivityStatusEntity() when $default != null:
return $default(_that.isConnected);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isConnected)  $default,) {final _that = this;
switch (_that) {
case _ConnectivityStatusEntity():
return $default(_that.isConnected);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isConnected)?  $default,) {final _that = this;
switch (_that) {
case _ConnectivityStatusEntity() when $default != null:
return $default(_that.isConnected);case _:
  return null;

}
}

}

/// @nodoc


class _ConnectivityStatusEntity implements ConnectivityStatusEntity {
  const _ConnectivityStatusEntity({required this.isConnected});
  

@override final  bool isConnected;

/// Create a copy of ConnectivityStatusEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ConnectivityStatusEntityCopyWith<_ConnectivityStatusEntity> get copyWith => __$ConnectivityStatusEntityCopyWithImpl<_ConnectivityStatusEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ConnectivityStatusEntity&&(identical(other.isConnected, isConnected) || other.isConnected == isConnected));
}


@override
int get hashCode => Object.hash(runtimeType,isConnected);

@override
String toString() {
  return 'ConnectivityStatusEntity(isConnected: $isConnected)';
}


}

/// @nodoc
abstract mixin class _$ConnectivityStatusEntityCopyWith<$Res> implements $ConnectivityStatusEntityCopyWith<$Res> {
  factory _$ConnectivityStatusEntityCopyWith(_ConnectivityStatusEntity value, $Res Function(_ConnectivityStatusEntity) _then) = __$ConnectivityStatusEntityCopyWithImpl;
@override @useResult
$Res call({
 bool isConnected
});




}
/// @nodoc
class __$ConnectivityStatusEntityCopyWithImpl<$Res>
    implements _$ConnectivityStatusEntityCopyWith<$Res> {
  __$ConnectivityStatusEntityCopyWithImpl(this._self, this._then);

  final _ConnectivityStatusEntity _self;
  final $Res Function(_ConnectivityStatusEntity) _then;

/// Create a copy of ConnectivityStatusEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isConnected = null,}) {
  return _then(_ConnectivityStatusEntity(
isConnected: null == isConnected ? _self.isConnected : isConnected // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
