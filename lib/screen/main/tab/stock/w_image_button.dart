import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';

class ImageButton extends StatelessWidget {
  final VoidCallback onTap;
  final double imageSize;
  final String imagePath;

  const ImageButton({
    super.key,
    required this.onTap,
    this.imageSize = 26,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Tap(
      onTap: onTap,
      child: Image.asset(
        imagePath,
        height: imageSize,
        width: imageSize,
      ),
    );
  }
}
