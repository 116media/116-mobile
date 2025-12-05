import 'dart:io' show File;

/// Service for uploading images to Cloudinary cloud storage.
///
/// Provides methods to upload image files to Cloudinary and retrieve
/// the secure URLs for the uploaded images. Handles configuration
/// through environment variables.
///
/// Throws exceptions on errors which should be handled at the repository layer.
abstract class CloudinaryService {
  /// Uploads an image file to Cloudinary.
  ///
  /// Takes a [file] and uploads it to Cloudinary using the configured
  /// upload preset. Returns the secure URL of the uploaded image on success.
  ///
  /// Parameters:
  /// - [file]: The image file to upload
  /// - [folderName]: The folder in Cloudinary to upload the image to
  /// - [uploadPreset]: The upload preset configured in Cloudinary
  ///
  /// Returns:
  /// - The secure URL of the uploaded image
  ///
  /// Throws:
  /// - [Exception] if upload fails or response is invalid
  Future<String> uploadImage(File file, String folderName, String uploadPreset);
}
