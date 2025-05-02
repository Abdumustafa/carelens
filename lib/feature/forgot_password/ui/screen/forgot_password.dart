import 'package:carelens/core/helper/spaces.dart';
import 'package:carelens/core/theming/styles.dart';
import 'package:carelens/core/widget/app_buttom.dart';
import 'package:carelens/feature/login_screen/ui/widget/app_text_field.dart';
import 'package:carelens/feature/login_screen/ui/widget/login_image_fac.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ForgotPassword extends StatelessWidget {
  ForgotPassword({super.key});
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "Forgot Password",
          style: TextStyles.font22blackBold,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            AuthImageFac(
                image: 'assets/images/forget_password.png', height: 300),
            verticalSpace(30.h),
            Center(
              child: Text(
                textAlign: TextAlign.center,
                "At our app, we take the security of your information seriously.",
                style: TextStyles.font18greymedium,
              ),
            ),
            verticalSpace(30.h),
            AppTextField(
              textEditingController: emailController,
              labelText: 'Enter your email',
              suffixIcon: Icon(
                Icons.email_outlined,
                color: Colors.grey,
              ),
            ),
            verticalSpace(25),
            Text("Reset Password",
                style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.normal,
                    color: Colors.grey),
                textAlign: TextAlign.center),
            verticalSpace(130.h),
            Padding(
              padding: EdgeInsets.only(left: 18, right: 18),
              child: AppButton(
                onPressed: () {
                  Get.offNamed('/CheckEmail');
                },
                buttonText: "Reset password",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
