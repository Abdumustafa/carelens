import 'package:carelens/core/helper/spaces.dart';
import 'package:carelens/feature/onboarding/logic/onboarding_cubit.dart';
import 'package:carelens/feature/onboarding/ui/widget/dete_animated.dart';
import 'package:carelens/feature/onboarding/ui/widget/skip_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BuildPageView extends StatelessWidget {
  const BuildPageView({
    super.key,
    required this.controller,
    required this.pages,
  });

  final PageController controller;
  final List<Map<String, String>> pages;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<OnboardingCubit, int>(
        builder: (context, state) {
          return PageView.builder(
            controller: controller,
            itemCount: pages.length,
            onPageChanged: (index) {
              context.read<OnboardingCubit>().updateIndex(index);
            },
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 500.h,
                        width: double.infinity,
                        child: ClipPath(
                          clipper: BottomArcClipper(),
                          child: Image.asset(
                            pages[index]['image']!,
                            fit: BoxFit.cover,
                            width: double.infinity,
                          ),
                        ),
                      ),
                      Positioned(top: 40.h, right: 5.w, child: SkipButton()),
                    ],
                  ),
                  DoteAnimatedContainer(pages: pages),
                  verticalSpace(20),
                  Text(
                    pages[index]['title']!,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 22.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  verticalSpace(5),
                  Text(
                    pages[index]['subtitle']!,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Colors.grey,
                    ),
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}

class BottomArcClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 80);
    path.quadraticBezierTo(
      size.width / 2,
      size.height,
      size.width,
      size.height - 80,
    );
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
