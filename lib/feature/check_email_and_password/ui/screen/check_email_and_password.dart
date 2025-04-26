import 'package:carelens/core/helper/spaces.dart';
import 'package:carelens/core/theming/styles.dart';
import 'package:carelens/core/widget/app_buttom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pinput/pinput.dart';

class CheckEmail extends StatefulWidget {
  const CheckEmail({super.key});

  @override
  State<CheckEmail> createState() => _CheckEmailState();
}

class _CheckEmailState extends State<CheckEmail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "Check Your Password",
          style: TextStyles.font22blackBold,
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          verticalSpace(10),
          Text(
            textAlign: TextAlign.center,
            "We've sent a password reset link to your email. Please check your inbox and follow the instructions to reset your password.",
            style: TextStyles.font18greymedium,
          ),
          verticalSpace(50),
          SizedBox(
            width: double.infinity,
            child: Pinput(
              // controller: otpController,
              length: 4,
              // onChanged: _onOtpChanged,
              defaultPinTheme: PinTheme(
                width: 50.w,
                height: 50.h,
                textStyle: TextStyles.font22blackBold,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.grey, width: 1.w),
                  ),
                ),
                margin: EdgeInsets.symmetric(horizontal: 14.w),
              ),
            ),
          ),
          // verticalSpace(150),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(left: 18, right: 18, bottom: 50),
            child: AppButtom(
              onPressed: () {
                Get.offNamed('/CreateNewPassword');
              },
              buttonText: "Verify",
            ),
          ),
        ],
      ),
    );
  }
}
