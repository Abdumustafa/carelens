import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthImageFac extends StatelessWidget {
  const AuthImageFac({
    super.key,
    required this.image,
    required this.height,
  });
  final String image;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height.h,
        decoration: BoxDecoration(),
        child: Image.asset(image));
  }
}
