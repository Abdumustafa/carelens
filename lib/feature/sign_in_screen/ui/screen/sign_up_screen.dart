import 'package:carelens/core/helper/spaces.dart';
import 'package:carelens/core/theming/styles.dart';
import 'package:carelens/core/widget/app_buttom.dart';
import 'package:carelens/feature/login_screen/ui/widget/app_text_field.dart';
import 'package:carelens/feature/login_screen/ui/widget/login_image_fac.dart';
import 'package:carelens/feature/login_screen/ui/widget/or_and_divider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool isObscuredPas = true;
  bool isObscuredConfPas = true;

  final TextEditingController passwordController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "Create Account",
          style: TextStyles.font22blackBold,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            AuthImageFac(
              image: 'assets/images/signup.png',
              height: 190,
            ),
            verticalSpace(30.h),
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
              obscureText: isObscuredPas,
              textEditingController: passwordController,
              labelText: 'Password',
              suffixIcon: IconButton(
                icon: Icon(
                  isObscuredPas
                      ? Icons.visibility_off_outlined
                      : Icons.visibility_outlined,
                  color: Colors.grey,
                ),
                onPressed: () {
                  setState(() {
                    isObscuredPas = !isObscuredPas;
                  });
                },
              ),
            ),
            verticalSpace(30.h),
            AppTextField(
              obscureText: isObscuredConfPas,
              textEditingController: confirmPasswordController,
              labelText: 'Confirm Password',
              suffixIcon: IconButton(
                icon: Icon(
                  isObscuredConfPas
                      ? Icons.visibility_off_outlined
                      : Icons.visibility_outlined,
                  color: Colors.grey,
                ),
                onPressed: () {
                  setState(() {
                    isObscuredConfPas = !isObscuredConfPas;
                  });
                },
              ),
            ),
            verticalSpace(50.h),
            Padding(
              padding: EdgeInsets.only(left: 18, right: 18),
              child: AppButtom(
                onPressed: () {},
                buttonText: "Sign Up",
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
          ],
        ),
      ),
    );
  }
}
