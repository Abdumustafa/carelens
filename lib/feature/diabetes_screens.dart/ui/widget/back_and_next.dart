import 'package:carelens/core/widget/app_buttom_two.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class BackAndNextBottom extends StatelessWidget {
  const BackAndNextBottom({
    super.key,
    required this.onTap,
  });
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Container(
              height: 50,
              width: 60,
              decoration: BoxDecoration(
                color: Color(0xffDEF5E2),
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/icons/back_arrow.svg',
                    height: 20,
                    width: 20,
                    color: Colors.green,
                  ),
                ],
              ),
            ),
          ),
        ),
        Spacer(),
        AppButtomTwo(
          onPressed: onTap,
          buttonText: "Next",
          backgroundColor: Colors.green,
        ),
      ],
    );
  }
}
