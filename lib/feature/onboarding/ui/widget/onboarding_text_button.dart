import 'package:carelens/feature/onboarding/logic/onboarding_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:go_router/go_router.dart';

class OnboardingTextButton extends StatelessWidget {
  const OnboardingTextButton({
    super.key,
    required this.pages,
    required this.controller,
    required this.buttonText,
  });

  final List pages;
  final PageController controller;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 40.h),
      child: BlocBuilder<OnboardingCubit, int>(
        builder: (context, state) {
          return ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xff21ba3b),
              minimumSize: Size(double.infinity, 50.h),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.r),
              ),
            ),
            onPressed: () {
              if (state < pages.length - 1) {
                context.read<OnboardingCubit>().nextPage(pages.length);
                controller.nextPage(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeInOut,
                );
              } else {
                Get.offNamed('/Login');
              }
            },
            child: Text(
              buttonText,
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.sp,
              ),
            ),
          );
        },
      ),
    );
  }
}
