import 'package:carelens/core/helper/spaces.dart';
import 'package:carelens/core/theming/colors.dart';
import 'package:carelens/core/theming/styles.dart';
import 'package:carelens/core/widget/app_buttom.dart';
import 'package:carelens/feature/login_screen/ui/widget/app_text_field.dart';
import 'package:carelens/feature/login_screen/ui/widget/forget_password.dart';
import 'package:carelens/feature/login_screen/ui/widget/login_image_fac.dart';
import 'package:carelens/feature/login_screen/ui/widget/or_and_divider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isObscured = true;
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "Welcome Back",
          style: TextStyles.font22blackBold,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            verticalSpace(20.h),
            AuthImageFac(
              image: 'assets/images/login.png',
              height: 190,
            ),
            verticalSpace(40.h),
            AppTextField(
              textEditingController: emailController,
              labelText: 'Email',
              suffixIcon: Icon(
                Icons.email_outlined,
                color: Colors.grey,
              ),
            ),
            verticalSpace(30.h),
            AppTextField(
              obscureText: isObscured,
              textEditingController: passwordController,
              labelText: 'Password',
              suffixIcon: IconButton(
                icon: Icon(
                  isObscured
                      ? Icons.visibility_off_outlined
                      : Icons.visibility_outlined,
                  color: Colors.grey,
                ),
                onPressed: () {
                  setState(() {
                    isObscured = !isObscured;
                  });
                },
              ),
            ),
            ForgetPssword(),
            verticalSpace(20.h),
            Padding(
              padding: const EdgeInsets.only(left: 18, right: 18),
              child: AppButton(
                onPressed: () {
                  Get.toNamed('/StatusScreen');
                },
                buttonText: "Login",
              ),
            ),
            verticalSpace(10.h),
            OrAndDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Image.asset(
                    'assets/images/google_icon.png',
                    height: 100.h,
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Image.asset(
                    'assets/images/apple_icon.png',
                    height: 100.h,
                  ),
                ),
              ],
            ),
            verticalSpace(5.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account? ",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Get.toNamed('/SingIn');
                  },
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                      color: ColorsManager.mainGreen,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
