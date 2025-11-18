import '../../../../domain/entities/file/file.entity.dart' show FileEntity;

/// Hive model for persisting [FileEntity] to local storage.
///
/// Uses Hive type adapters for efficient binary serialization.
class FileModel {
  final String id;
  final String fileName;
  final String originalFileName;
  final String mimeType;
  final String storageUrl;
  final int sizeInBytes;
  final bool isDeleted;

  const FileModel({
    required this.id,
    required this.fileName,
    required this.originalFileName,
    required this.mimeType,
    required this.storageUrl,
    required this.sizeInBytes,
    required this.isDeleted,
  });

  /// Converts this model to a domain entity.
  FileEntity toEntity() {
    return FileEntity(
      id: id,
      fileName: fileName,
      originalFileName: originalFileName,
      mimeType: mimeType,
      storageUrl: storageUrl,
      sizeInBytes: sizeInBytes,
      isDeleted: isDeleted,
    );
  }

  /// Creates a model from a domain entity.
  factory FileModel.fromEntity(FileEntity entity) {
    return FileModel(
      id: entity.id,
      fileName: entity.fileName,
      originalFileName: entity.originalFileName,
      mimeType: entity.mimeType,
      storageUrl: entity.storageUrl,
      sizeInBytes: entity.sizeInBytes,
      isDeleted: entity.isDeleted,
    );
  }
}
