import '../../../../domain/entities/file.entity.dart' show FileEntity;

/// Hive model for persisting [FileEntity] to local storage.
///
/// Uses JSON serialization for Hive storage without code generation.
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

  /// Deserializes from JSON (used by Hive internally).
  factory FileModel.fromJson(Map<String, dynamic> json) {
    return FileModel(
      id: json['id'] as String,
      fileName: json['fileName'] as String,
      originalFileName: json['originalFileName'] as String,
      mimeType: json['mimeType'] as String,
      storageUrl: json['storageUrl'] as String,
      sizeInBytes: json['sizeInBytes'] as int,
      isDeleted: json['isDeleted'] as bool,
    );
  }

  /// Serializes to JSON (used by Hive internally).
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'fileName': fileName,
      'originalFileName': originalFileName,
      'mimeType': mimeType,
      'storageUrl': storageUrl,
      'sizeInBytes': sizeInBytes,
      'isDeleted': isDeleted,
    };
  }

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
