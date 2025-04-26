import 'package:carelens/core/helper/spaces.dart';
import 'package:carelens/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ForgetPssword extends StatefulWidget {
  const ForgetPssword({
    super.key,
  });

  @override
  State<ForgetPssword> createState() => _ForgetPsswordState();
}

class _ForgetPsswordState extends State<ForgetPssword> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: 15.w,
        left: 15.w,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Transform.scale(
                scale: 0.8,
                child: Checkbox(
                  value: isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = value!;
                    });
                  },
                  checkColor: Colors.white,
                  activeColor: ColorsManager.mainGreen,
                  side: BorderSide(color: Colors.grey, width: 2),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3.r),
                  ),
                ),
              ),
              Text(
                "Remember Me",
                style: TextStyle(
                  fontSize: 14.sp,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          horizontalSpace(50),
          Container(
            padding: EdgeInsets.only(
                left: 20.w, right: 10.w, top: 10.h, bottom: 20.h),
            child: GestureDetector(
              onTap: () {
                Get.toNamed('/ForgotPassword');
              },
              child: Text(
                "Forget password",
                style: TextStyle(
                  // decoration: TextDecoration.underline,
                  color: ColorsManager.mainGreen,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
