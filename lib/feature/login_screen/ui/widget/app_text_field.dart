import 'package:carelens/core/theming/colors.dart';
import 'package:carelens/core/theming/font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextField extends StatefulWidget {
  const AppTextField({
    super.key,
    required this.textEditingController,
    required this.labelText,
    this.suffixIcon,
    this.obscureText = false,
  });

  final String labelText;
  final Widget? suffixIcon;
  final TextEditingController textEditingController;
  final bool obscureText;

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      padding: EdgeInsets.only(left: 20.w, right: 20.w),
      child: TextField(
        controller: widget.textEditingController,
        obscureText: widget.obscureText,
        decoration: InputDecoration(
          labelText: widget.labelText,
          labelStyle: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeightHelper.medium,
            color: Colors.grey, 
          ),
          focusedBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: ColorsManager.mainGreen, width: 2.0.w),
            borderRadius: BorderRadius.circular(10.r),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
          ),
          suffixIcon: widget.suffixIcon,
        ),
      ),
    );
  }
}
