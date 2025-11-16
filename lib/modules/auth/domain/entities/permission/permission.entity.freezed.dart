// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'permission.entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PermissionEntity {

 String get id; String get resource; String get action; String get description;
/// Create a copy of PermissionEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PermissionEntityCopyWith<PermissionEntity> get copyWith => _$PermissionEntityCopyWithImpl<PermissionEntity>(this as PermissionEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PermissionEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.resource, resource) || other.resource == resource)&&(identical(other.action, action) || other.action == action)&&(identical(other.description, description) || other.description == description));
}


@override
int get hashCode => Object.hash(runtimeType,id,resource,action,description);

@override
String toString() {
  return 'PermissionEntity(id: $id, resource: $resource, action: $action, description: $description)';
}


}

/// @nodoc
abstract mixin class $PermissionEntityCopyWith<$Res>  {
  factory $PermissionEntityCopyWith(PermissionEntity value, $Res Function(PermissionEntity) _then) = _$PermissionEntityCopyWithImpl;
@useResult
$Res call({
 String id, String resource, String action, String description
});




}
/// @nodoc
class _$PermissionEntityCopyWithImpl<$Res>
    implements $PermissionEntityCopyWith<$Res> {
  _$PermissionEntityCopyWithImpl(this._self, this._then);

  final PermissionEntity _self;
  final $Res Function(PermissionEntity) _then;

/// Create a copy of PermissionEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? resource = null,Object? action = null,Object? description = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,resource: null == resource ? _self.resource : resource // ignore: cast_nullable_to_non_nullable
as String,action: null == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PermissionEntity].
extension PermissionEntityPatterns on PermissionEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PermissionEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PermissionEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PermissionEntity value)  $default,){
final _that = this;
switch (_that) {
case _PermissionEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PermissionEntity value)?  $default,){
final _that = this;
switch (_that) {
case _PermissionEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String resource,  String action,  String description)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PermissionEntity() when $default != null:
return $default(_that.id,_that.resource,_that.action,_that.description);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String resource,  String action,  String description)  $default,) {final _that = this;
switch (_that) {
case _PermissionEntity():
return $default(_that.id,_that.resource,_that.action,_that.description);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String resource,  String action,  String description)?  $default,) {final _that = this;
switch (_that) {
case _PermissionEntity() when $default != null:
return $default(_that.id,_that.resource,_that.action,_that.description);case _:
  return null;

}
}

}

/// @nodoc


class _PermissionEntity implements PermissionEntity {
  const _PermissionEntity({required this.id, required this.resource, required this.action, required this.description});
  

@override final  String id;
@override final  String resource;
@override final  String action;
@override final  String description;

/// Create a copy of PermissionEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PermissionEntityCopyWith<_PermissionEntity> get copyWith => __$PermissionEntityCopyWithImpl<_PermissionEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PermissionEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.resource, resource) || other.resource == resource)&&(identical(other.action, action) || other.action == action)&&(identical(other.description, description) || other.description == description));
}


@override
int get hashCode => Object.hash(runtimeType,id,resource,action,description);

@override
String toString() {
  return 'PermissionEntity(id: $id, resource: $resource, action: $action, description: $description)';
}


}

/// @nodoc
abstract mixin class _$PermissionEntityCopyWith<$Res> implements $PermissionEntityCopyWith<$Res> {
  factory _$PermissionEntityCopyWith(_PermissionEntity value, $Res Function(_PermissionEntity) _then) = __$PermissionEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String resource, String action, String description
});




}
/// @nodoc
class __$PermissionEntityCopyWithImpl<$Res>
    implements _$PermissionEntityCopyWith<$Res> {
  __$PermissionEntityCopyWithImpl(this._self, this._then);

  final _PermissionEntity _self;
  final $Res Function(_PermissionEntity) _then;

/// Create a copy of PermissionEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? resource = null,Object? action = null,Object? description = null,}) {
  return _then(_PermissionEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,resource: null == resource ? _self.resource : resource // ignore: cast_nullable_to_non_nullable
as String,action: null == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
