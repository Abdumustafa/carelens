import 'package:carelens/core/helper/spaces.dart';
import 'package:carelens/core/theming/styles.dart';
import 'package:flutter/material.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              "assets/images/icons_success.png",
              height: 200,
            ),
          ),
          verticalSpace(30),
          Text(
            "Success",
            style: TextStyles.font22blackBold,
          ),
          verticalSpace(20),
          Text(
            "Password changed successfully",
            style: TextStyles.font18greymedium,
          ),
        ],
      ),
    );
  }
}
