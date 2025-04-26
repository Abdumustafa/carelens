import 'package:carelens/core/helper/spaces.dart';
import 'package:carelens/core/theming/styles.dart';
import 'package:carelens/core/widget/app_buttom.dart';
import 'package:carelens/feature/login_screen/ui/widget/app_text_field.dart';
import 'package:carelens/feature/login_screen/ui/widget/login_image_fac.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CreateNewPassword extends StatefulWidget {
  const CreateNewPassword({super.key});

  @override
  State<CreateNewPassword> createState() => _CreateNewPasswordState();
}

class _CreateNewPasswordState extends State<CreateNewPassword> {
  bool isObscuredPas = true;
  bool isObscuredConfPas = true;
  final TextEditingController passwordController = TextEditingController();
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
          "Create new Password",
          style: TextStyles.font22blackBold,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            AuthImageFac(
              image: 'assets/images/create_password.png',
              height: 220,
            ),
            verticalSpace(30.h),
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
            verticalSpace(220.h),
            Padding(
              padding: EdgeInsets.only(left: 18, right: 18),
              child: AppButtom(
                onPressed: () {
                  Get.offNamed('/SuccessScreen');
                },
                buttonText: "Save",
              ),
            ),
            verticalSpace(10.h),
          ],
        ),
      ),
    );
  }
}
