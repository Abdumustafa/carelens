import 'package:carelens/core/helper/spaces.dart';
import 'package:carelens/core/widget/app_buttom.dart';
import 'package:carelens/feature/diabetes_screens.dart/ui/widget/list_view_line_top.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class MyDiabetesStateScreen extends StatelessWidget {
  MyDiabetesStateScreen({super.key});
  final List colors = [
    Color(0xffff9100),
    Color(0xffff9100),
    Color(0xffcdcdcd),
    Color(0xffcdcdcd),
    Color(0xffcdcdcd),
    Color(0xffcdcdcd),
    Color(0xffcdcdcd),
    Color(0xffcdcdcd),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0fa3f9),
      appBar: AppBar(
        backgroundColor: Color(0xff0fa3f9),
        scrolledUnderElevation: 0,
        title: Text(
          "Diabetes",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Row(
            children: [
              SizedBox(width: 14),
              SvgPicture.asset(
                'assets/icons/back_arrow.svg',
                height: 15,
                width: 15,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalSpace(10),
           SizedBox(
              height: 3,
              width: double.infinity,
              child: ListViewLine(
                selectNum: 2,
              ),
            ),
            verticalSpace(50),
            Center(
              child: Image.asset(
                'assets/images/status/Treatment.png',
                height: 200,
                width: 200,
              ),
            ),
            verticalSpace(50),
            Text(
              " Your Health Matters: Let’s\n Get to Know You",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
            verticalSpace(10),
            Text(
              " To help you choose diabetes-friendly food from the  \n supermarket, answer these questions. We’ll build your \n personal profile to focus on what’s important—like sugar \n and carbs—and give you accurate recommendations when \n you scan products.",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Colors.white.withOpacity(0.7),
              ),
            ),
            verticalSpace(120),
            AppButton(
              textColor: Color(0xff0fa3f9),
              buttonText: "Next",
              onPressed: () {
                Get.toNamed('/DiabetesScreen');
              },
              backgroundColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
