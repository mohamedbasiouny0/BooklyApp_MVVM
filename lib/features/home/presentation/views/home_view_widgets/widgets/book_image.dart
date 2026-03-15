import 'package:cached_network_image_ce/cached_network_image.dart';
import 'package:flutter/material.dart';

class BookImage extends StatelessWidget {
  const BookImage({
    super.key,
    this.borderRadiusGeometry,
    required this.imagePath,
  });
  final BorderRadiusGeometry? borderRadiusGeometry;
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.01 / 3,
      child: ClipRRect(
        borderRadius: .circular(16),
        child: CachedNetworkImage(
          imageUrl: imagePath,
          fit: .fill,
          errorBuilder: (context, error, stackTrace) =>
              Center(child: CircularProgressIndicator()),
        ),
      ),
    );
  }
}
