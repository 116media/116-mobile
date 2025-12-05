import 'dart:io' show File;

import 'package:cloudinary_url_gen/cloudinary.dart' show Cloudinary;
import 'package:cloudinary_api/uploader/cloudinary_uploader.dart' show CloudinaryUploader;
import 'package:cloudinary_api/src/request/model/uploader_params.dart' show UploadParams;

import '../../../application/configs/env.config.dart' show EnvConfig;
import '../../../application/services/cloudinary/cloudinary.service.port.dart'
    show CloudinaryService;
import '../../exceptions/remote/cloudinary.exception.dart' show CloudinaryException;

/// Implementation of [CloudinaryService] using the Cloudinary API.
class CloudinaryServiceImpl implements CloudinaryService {
  late final Cloudinary _cloudinary;

  CloudinaryServiceImpl() {
    final config = EnvConfig.cloudinaryConfig;
    _cloudinary = Cloudinary.fromCloudName(cloudName: config.cloudName);
  }

  @override
  Future<String> uploadImage(File file, String folderName, String uploadPreset) async {
    try {
      final response = await _cloudinary.uploader().upload(
        file,
        params: UploadParams(unsigned: true, folder: folderName, uploadPreset: uploadPreset),
      );

      final secureUrl = response?.data?.secureUrl;

      if (secureUrl == null || secureUrl.isEmpty) {
        throw CloudinaryException("Cloudinary returned an empty URL");
      }

      return secureUrl;
    } on CloudinaryException {
      rethrow;
    } catch (e) {
      throw CloudinaryException("Cloudinary upload failed: $e");
    }
  }
}
