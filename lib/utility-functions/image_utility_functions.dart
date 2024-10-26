import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class ImageUtils {
  static ImageProvider<Object> getImage(String? imageUrl) {
    try {
      if (imageUrl == null || imageUrl.isEmpty) {
        return const AssetImage('assets/no_image.png');
      }

      ImageProvider<Object> imageProvider;

      if (imageUrl.startsWith('http') || imageUrl.startsWith('HTTP')) {
        imageProvider = CachedNetworkImageProvider(imageUrl);
      } else if (imageUrl.toLowerCase().endsWith('.svg')) {
        imageProvider = Svg(imageUrl);
      } else {
        try {
          if (imageUrl.startsWith('assets/')) {
            imageProvider = AssetImage(imageUrl);
          } else {
            imageProvider = const AssetImage('assets/no_image.png');
          }
        } catch (e) {
          debugPrint("Error loading image: $e");
          imageProvider = const AssetImage('assets/no_image.png');
        }
      }
      return imageProvider;
    } catch (e) {
      debugPrint("Error loading image: $e");
      return const AssetImage('assets/no_image.png');
    }
  }

}
