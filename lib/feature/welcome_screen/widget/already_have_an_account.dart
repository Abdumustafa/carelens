import 'package:carelens/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AlreadyHaveAnAccount extends StatelessWidget {
  const AlreadyHaveAnAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Already have an account? ",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        GestureDetector(
          onTap: () {
            Get.offNamed('/Login');
          },
          child: Text(
            "Login",
            style: TextStyle(
              color: ColorsManager.mainGreen,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
