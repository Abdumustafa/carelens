
import 'package:flutter/material.dart';

class ImageWelcome extends StatelessWidget {
  const ImageWelcome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ColorFiltered(
      colorFilter: ColorFilter.mode(
        Colors.black.withValues(alpha: 0.5),
        BlendMode.darken,
      ),
      child: Image.asset(
        "assets/images/welcome.png",
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.cover,
      ),
    );
  }
}
