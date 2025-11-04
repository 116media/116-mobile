import 'package:equatable/equatable.dart' show Equatable;

/// File entity representing uploaded files in the system.
///
/// Domain entity for files (e.g., user avatars, documents, media).
/// Tracks file metadata and storage information including ID, filenames,
/// MIME type, storage URL, size in bytes, and deletion status.
class FileEntity extends Equatable {
  final String id;
  final String fileName;
  final String originalFileName;
  final String mimeType;
  final String storageUrl;
  final int sizeInBytes;
  final bool isDeleted;

  const FileEntity({
    required this.id,
    required this.fileName,
    required this.originalFileName,
    required this.mimeType,
    required this.storageUrl,
    required this.sizeInBytes,
    required this.isDeleted,
  });

  @override
  List<Object?> get props => [
    id,
    fileName,
    originalFileName,
    mimeType,
    storageUrl,
    sizeInBytes,
    isDeleted,
  ];
}
