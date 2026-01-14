// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'file.entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FileEntity {

 String get id; String get fileName; String get originalFileName; String get mimeType; String get storageUrl; int get sizeInBytes; bool get isDeleted;
/// Create a copy of FileEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FileEntityCopyWith<FileEntity> get copyWith => _$FileEntityCopyWithImpl<FileEntity>(this as FileEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FileEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.fileName, fileName) || other.fileName == fileName)&&(identical(other.originalFileName, originalFileName) || other.originalFileName == originalFileName)&&(identical(other.mimeType, mimeType) || other.mimeType == mimeType)&&(identical(other.storageUrl, storageUrl) || other.storageUrl == storageUrl)&&(identical(other.sizeInBytes, sizeInBytes) || other.sizeInBytes == sizeInBytes)&&(identical(other.isDeleted, isDeleted) || other.isDeleted == isDeleted));
}


@override
int get hashCode => Object.hash(runtimeType,id,fileName,originalFileName,mimeType,storageUrl,sizeInBytes,isDeleted);

@override
String toString() {
  return 'FileEntity(id: $id, fileName: $fileName, originalFileName: $originalFileName, mimeType: $mimeType, storageUrl: $storageUrl, sizeInBytes: $sizeInBytes, isDeleted: $isDeleted)';
}


}

/// @nodoc
abstract mixin class $FileEntityCopyWith<$Res>  {
  factory $FileEntityCopyWith(FileEntity value, $Res Function(FileEntity) _then) = _$FileEntityCopyWithImpl;
@useResult
$Res call({
 String id, String fileName, String originalFileName, String mimeType, String storageUrl, int sizeInBytes, bool isDeleted
});




}
/// @nodoc
class _$FileEntityCopyWithImpl<$Res>
    implements $FileEntityCopyWith<$Res> {
  _$FileEntityCopyWithImpl(this._self, this._then);

  final FileEntity _self;
  final $Res Function(FileEntity) _then;

/// Create a copy of FileEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? fileName = null,Object? originalFileName = null,Object? mimeType = null,Object? storageUrl = null,Object? sizeInBytes = null,Object? isDeleted = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,fileName: null == fileName ? _self.fileName : fileName // ignore: cast_nullable_to_non_nullable
as String,originalFileName: null == originalFileName ? _self.originalFileName : originalFileName // ignore: cast_nullable_to_non_nullable
as String,mimeType: null == mimeType ? _self.mimeType : mimeType // ignore: cast_nullable_to_non_nullable
as String,storageUrl: null == storageUrl ? _self.storageUrl : storageUrl // ignore: cast_nullable_to_non_nullable
as String,sizeInBytes: null == sizeInBytes ? _self.sizeInBytes : sizeInBytes // ignore: cast_nullable_to_non_nullable
as int,isDeleted: null == isDeleted ? _self.isDeleted : isDeleted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [FileEntity].
extension FileEntityPatterns on FileEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FileEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FileEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FileEntity value)  $default,){
final _that = this;
switch (_that) {
case _FileEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FileEntity value)?  $default,){
final _that = this;
switch (_that) {
case _FileEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String fileName,  String originalFileName,  String mimeType,  String storageUrl,  int sizeInBytes,  bool isDeleted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FileEntity() when $default != null:
return $default(_that.id,_that.fileName,_that.originalFileName,_that.mimeType,_that.storageUrl,_that.sizeInBytes,_that.isDeleted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String fileName,  String originalFileName,  String mimeType,  String storageUrl,  int sizeInBytes,  bool isDeleted)  $default,) {final _that = this;
switch (_that) {
case _FileEntity():
return $default(_that.id,_that.fileName,_that.originalFileName,_that.mimeType,_that.storageUrl,_that.sizeInBytes,_that.isDeleted);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String fileName,  String originalFileName,  String mimeType,  String storageUrl,  int sizeInBytes,  bool isDeleted)?  $default,) {final _that = this;
switch (_that) {
case _FileEntity() when $default != null:
return $default(_that.id,_that.fileName,_that.originalFileName,_that.mimeType,_that.storageUrl,_that.sizeInBytes,_that.isDeleted);case _:
  return null;

}
}

}

/// @nodoc


class _FileEntity implements FileEntity {
  const _FileEntity({required this.id, required this.fileName, required this.originalFileName, required this.mimeType, required this.storageUrl, required this.sizeInBytes, required this.isDeleted});
  

@override final  String id;
@override final  String fileName;
@override final  String originalFileName;
@override final  String mimeType;
@override final  String storageUrl;
@override final  int sizeInBytes;
@override final  bool isDeleted;

/// Create a copy of FileEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FileEntityCopyWith<_FileEntity> get copyWith => __$FileEntityCopyWithImpl<_FileEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FileEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.fileName, fileName) || other.fileName == fileName)&&(identical(other.originalFileName, originalFileName) || other.originalFileName == originalFileName)&&(identical(other.mimeType, mimeType) || other.mimeType == mimeType)&&(identical(other.storageUrl, storageUrl) || other.storageUrl == storageUrl)&&(identical(other.sizeInBytes, sizeInBytes) || other.sizeInBytes == sizeInBytes)&&(identical(other.isDeleted, isDeleted) || other.isDeleted == isDeleted));
}


@override
int get hashCode => Object.hash(runtimeType,id,fileName,originalFileName,mimeType,storageUrl,sizeInBytes,isDeleted);

@override
String toString() {
  return 'FileEntity(id: $id, fileName: $fileName, originalFileName: $originalFileName, mimeType: $mimeType, storageUrl: $storageUrl, sizeInBytes: $sizeInBytes, isDeleted: $isDeleted)';
}


}

/// @nodoc
abstract mixin class _$FileEntityCopyWith<$Res> implements $FileEntityCopyWith<$Res> {
  factory _$FileEntityCopyWith(_FileEntity value, $Res Function(_FileEntity) _then) = __$FileEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String fileName, String originalFileName, String mimeType, String storageUrl, int sizeInBytes, bool isDeleted
});




}
/// @nodoc
class __$FileEntityCopyWithImpl<$Res>
    implements _$FileEntityCopyWith<$Res> {
  __$FileEntityCopyWithImpl(this._self, this._then);

  final _FileEntity _self;
  final $Res Function(_FileEntity) _then;

/// Create a copy of FileEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? fileName = null,Object? originalFileName = null,Object? mimeType = null,Object? storageUrl = null,Object? sizeInBytes = null,Object? isDeleted = null,}) {
  return _then(_FileEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,fileName: null == fileName ? _self.fileName : fileName // ignore: cast_nullable_to_non_nullable
as String,originalFileName: null == originalFileName ? _self.originalFileName : originalFileName // ignore: cast_nullable_to_non_nullable
as String,mimeType: null == mimeType ? _self.mimeType : mimeType // ignore: cast_nullable_to_non_nullable
as String,storageUrl: null == storageUrl ? _self.storageUrl : storageUrl // ignore: cast_nullable_to_non_nullable
as String,sizeInBytes: null == sizeInBytes ? _self.sizeInBytes : sizeInBytes // ignore: cast_nullable_to_non_nullable
as int,isDeleted: null == isDeleted ? _self.isDeleted : isDeleted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
