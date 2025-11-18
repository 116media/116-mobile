import 'package:freezed_annotation/freezed_annotation.dart';

part 'file.entity.freezed.dart';

/// File entity representing uploaded files in the system.
///
/// Domain entity for files (e.g., user avatars, documents, media).
/// Tracks file metadata and storage information including ID, filenames,
/// MIME type, storage URL, size in bytes, and deletion status.
@freezed
abstract class FileEntity with _$FileEntity {
  const factory FileEntity({
    required String id,
    required String fileName,
    required String originalFileName,
    required String mimeType,
    required String storageUrl,
    required int sizeInBytes,
    required bool isDeleted,
  }) = _FileEntity;
}
