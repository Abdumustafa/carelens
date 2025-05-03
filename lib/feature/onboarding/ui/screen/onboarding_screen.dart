import 'package:carelens/feature/onboarding/logic/onboarding_cubit.dart';
import 'package:carelens/feature/onboarding/ui/widget/build_pageview.dart';
import 'package:carelens/feature/onboarding/ui/widget/onboarding_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({super.key});

  final List<Map<String, String>> pages = const [
    {
      'image': 'assets/images/onboarding1.png',
      'title': 'Easily Scan and Analyze \n Products for Better Choices.',
      'subtitle':
          'Scan any product to quickly check its ingredients and matches your health condition and dietary'
    },
    {
      'image': 'assets/images/onboarding2.png',
      'title': 'Smart Support for Your Health \nJourney',
      'subtitle':
          'Get instant help from our smart assistant scan products, check ingredients, get advice, and make healthier choices with confidence'
    },
    {
      'image': 'assets/images/onbording3.jpg',
      'title': "Keep track of your stats and \ncurrent health condition",
      'subtitle':
          'Stay updated on your health with real-time insights and meaningful statistics .'
    }
  ];

  final PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => OnboardingCubit(),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.only(bottom: 20.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BuildPageView(controller: controller, pages: pages),
              OnboardingTextButton(
                pages: pages,
                controller: controller,
                buttonText: 'Next',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
