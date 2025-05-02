import 'package:carelens/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppButtomTwo extends StatelessWidget {
  const AppButtomTwo({
    super.key,
    required this.onPressed,
    required this.buttonText,
    this.backgroundColor,
    this.textColor,
  });

  final Function() onPressed;
  final String buttonText;
  final Color? backgroundColor;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      width: 250,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor ?? ColorsManager.mainGreen,
          minimumSize: Size(double.infinity, 50.h),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.r),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          buttonText,
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.w500,
            color: textColor ?? Colors.white,
          ),
        ),
      ),
    );
  }
}
