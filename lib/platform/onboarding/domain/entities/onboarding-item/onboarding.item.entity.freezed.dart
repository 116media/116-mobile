// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'onboarding.item.entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OnboardingItemEntity {

 String get image; String get title; String get description;
/// Create a copy of OnboardingItemEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OnboardingItemEntityCopyWith<OnboardingItemEntity> get copyWith => _$OnboardingItemEntityCopyWithImpl<OnboardingItemEntity>(this as OnboardingItemEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnboardingItemEntity&&(identical(other.image, image) || other.image == image)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description));
}


@override
int get hashCode => Object.hash(runtimeType,image,title,description);

@override
String toString() {
  return 'OnboardingItemEntity(image: $image, title: $title, description: $description)';
}


}

/// @nodoc
abstract mixin class $OnboardingItemEntityCopyWith<$Res>  {
  factory $OnboardingItemEntityCopyWith(OnboardingItemEntity value, $Res Function(OnboardingItemEntity) _then) = _$OnboardingItemEntityCopyWithImpl;
@useResult
$Res call({
 String image, String title, String description
});




}
/// @nodoc
class _$OnboardingItemEntityCopyWithImpl<$Res>
    implements $OnboardingItemEntityCopyWith<$Res> {
  _$OnboardingItemEntityCopyWithImpl(this._self, this._then);

  final OnboardingItemEntity _self;
  final $Res Function(OnboardingItemEntity) _then;

/// Create a copy of OnboardingItemEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? image = null,Object? title = null,Object? description = null,}) {
  return _then(_self.copyWith(
image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [OnboardingItemEntity].
extension OnboardingItemEntityPatterns on OnboardingItemEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OnboardingItemEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OnboardingItemEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OnboardingItemEntity value)  $default,){
final _that = this;
switch (_that) {
case _OnboardingItemEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OnboardingItemEntity value)?  $default,){
final _that = this;
switch (_that) {
case _OnboardingItemEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String image,  String title,  String description)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OnboardingItemEntity() when $default != null:
return $default(_that.image,_that.title,_that.description);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String image,  String title,  String description)  $default,) {final _that = this;
switch (_that) {
case _OnboardingItemEntity():
return $default(_that.image,_that.title,_that.description);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String image,  String title,  String description)?  $default,) {final _that = this;
switch (_that) {
case _OnboardingItemEntity() when $default != null:
return $default(_that.image,_that.title,_that.description);case _:
  return null;

}
}

}

/// @nodoc


class _OnboardingItemEntity implements OnboardingItemEntity {
  const _OnboardingItemEntity({required this.image, required this.title, required this.description});
  

@override final  String image;
@override final  String title;
@override final  String description;

/// Create a copy of OnboardingItemEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OnboardingItemEntityCopyWith<_OnboardingItemEntity> get copyWith => __$OnboardingItemEntityCopyWithImpl<_OnboardingItemEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OnboardingItemEntity&&(identical(other.image, image) || other.image == image)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description));
}


@override
int get hashCode => Object.hash(runtimeType,image,title,description);

@override
String toString() {
  return 'OnboardingItemEntity(image: $image, title: $title, description: $description)';
}


}

/// @nodoc
abstract mixin class _$OnboardingItemEntityCopyWith<$Res> implements $OnboardingItemEntityCopyWith<$Res> {
  factory _$OnboardingItemEntityCopyWith(_OnboardingItemEntity value, $Res Function(_OnboardingItemEntity) _then) = __$OnboardingItemEntityCopyWithImpl;
@override @useResult
$Res call({
 String image, String title, String description
});




}
/// @nodoc
class __$OnboardingItemEntityCopyWithImpl<$Res>
    implements _$OnboardingItemEntityCopyWith<$Res> {
  __$OnboardingItemEntityCopyWithImpl(this._self, this._then);

  final _OnboardingItemEntity _self;
  final $Res Function(_OnboardingItemEntity) _then;

/// Create a copy of OnboardingItemEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? image = null,Object? title = null,Object? description = null,}) {
  return _then(_OnboardingItemEntity(
image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
