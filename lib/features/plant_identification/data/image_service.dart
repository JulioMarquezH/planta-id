import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:image_picker/image_picker.dart';

/// Result from picking an image, containing bytes and metadata.
class PickedImage {
  final Uint8List bytes;
  final String mediaType;

  const PickedImage({required this.bytes, required this.mediaType});
}

class ImageService {
  final ImagePicker _picker = ImagePicker();

  bool get cameraSupported => !kIsWeb && (Platform.isAndroid || Platform.isIOS);

  Future<PickedImage?> pickFromCamera() async {
    // Camera capture is only supported on mobile platforms
    if (!cameraSupported) return pickFromGallery();
    final XFile? picked = await _picker.pickImage(
      source: ImageSource.camera,
      maxWidth: 1568,
      maxHeight: 1568,
      imageQuality: 85,
    );
    return picked != null ? await _toPickedImage(picked) : null;
  }

  Future<PickedImage?> pickFromGallery() async {
    final XFile? picked = await _picker.pickImage(
      source: ImageSource.gallery,
      maxWidth: 1568,
      maxHeight: 1568,
      imageQuality: 85,
    );
    return picked != null ? await _toPickedImage(picked) : null;
  }

  Future<PickedImage> _toPickedImage(XFile file) async {
    final bytes = await file.readAsBytes();
    final mediaType = _getMediaType(file.name);
    return PickedImage(bytes: bytes, mediaType: mediaType);
  }

  String encodeToBase64(Uint8List bytes) {
    return base64Encode(bytes);
  }

  String _getMediaType(String fileName) {
    final extension = fileName.split('.').last.toLowerCase();
    switch (extension) {
      case 'jpg':
      case 'jpeg':
        return 'image/jpeg';
      case 'png':
        return 'image/png';
      case 'webp':
        return 'image/webp';
      case 'gif':
        return 'image/gif';
      default:
        return 'image/jpeg';
    }
  }
}
