import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HealthItem extends StatelessWidget {
  final String title;
  final String image;
  final Color color;
  final Function()? onTap;

  const HealthItem(
      {required this.title,
      required this.image,
      required this.color,
      super.key,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: 
        onTap,     
      child: Container(
        width: 80.w,
        height: 120.h,
        margin: EdgeInsets.only(right: 12.w),
        padding: EdgeInsets.all(4.w),
        decoration: BoxDecoration(
          color: color.withOpacity(0.1),
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(image, height: 40.h),
            SizedBox(height: 10.h),
            Text(title,
                style: TextStyle(color: color, fontSize: 12.sp),
                textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}
