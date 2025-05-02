import 'package:carelens/feature/onboarding/logic/onboarding_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoteAnimatedContainer extends StatelessWidget {
  const DoteAnimatedContainer({
    super.key,
    required this.pages,
  });

  final List<Map<String, String>> pages;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        pages.length,
        (i) => BlocBuilder<OnboardingCubit, int>(
          builder: (context, state) {
            return AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              margin: EdgeInsets.symmetric(horizontal: 5.w),
              width: state == i ? 30.w : 10.w,
              height: 8.h,
              decoration: BoxDecoration(
                color:
                    state == i ? const Color(0xff21ba3b) : Colors.grey.shade300,
                borderRadius: BorderRadius.circular(10.r),
              ),
            );
          },
        ),
      ),
    );
  }
}
