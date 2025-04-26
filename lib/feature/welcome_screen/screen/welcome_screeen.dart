import 'package:carelens/core/helper/spaces.dart';
import 'package:carelens/core/theming/styles.dart';
import 'package:carelens/core/widget/app_buttom.dart';
import 'package:carelens/feature/welcome_screen/widget/already_have_an_account.dart';
import 'package:carelens/feature/welcome_screen/widget/image_welcome.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        ImageWelcome(),
        Positioned(
          bottom: 30.h,
          right: 20.w,
          left: 20.w,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Personalize Your Product Scanner",
                  style: TextStyles.font20whiteBold),
              verticalSpace(20),
              Text(
                  "We have a few quick questions to \n personalize your CareLens experience \nReady to start",
                  textAlign: TextAlign.center,
                  style: TextStyles.font15whiteMedium),
              verticalSpace(40),
              AppButtom(
                buttonText: "Get Started",
                onPressed: () {
                  Get.toNamed("/StatusScreen");
                },
              ),
              verticalSpace(40),
              AlreadyHaveAnAccount()
            ],
          ),
        )
      ],
    ));
  }
}
