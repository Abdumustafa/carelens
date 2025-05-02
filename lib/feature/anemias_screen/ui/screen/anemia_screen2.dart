import 'package:carelens/core/helper/spaces.dart';
import 'package:carelens/core/widget/app_elevatedBotom.dart';
import 'package:carelens/feature/diabetes_screens.dart/ui/widget/back_and_next.dart';
import 'package:carelens/feature/diabetes_screens.dart/ui/widget/question_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class AnemiaScreen2 extends StatelessWidget {
  AnemiaScreen2({super.key});
  final List colors = [
    Color(0xffff9100),
    Color(0xffff9100),
    Color(0xffff9100),
    Color(0xffff9100),
    Color(0xffcdcdcd),
    Color(0xffcdcdcd),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0,
        title: Text(
          "Anemia",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalSpace(10),
            SizedBox(
              height: 3,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: colors.length,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      verticalSpace(10),
                      Container(
                        width: 50.w,
                        padding: EdgeInsets.symmetric(horizontal: 4),
                        margin: EdgeInsets.symmetric(horizontal: 4),
                        color: colors[index],
                      ),
                    ],
                  );
                },
              ),
            ),
            verticalSpace(50),
            QuestionTextWidget(
              text: ' MCHC (g/dL)',
            ),
            verticalSpace(20),
            AppTextFormField(
              controller: TextEditingController(),
              hintText: "Enter your BMI",
              labelText: "e.g",
              keyboardType: TextInputType.number,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your BMI';
                }
                return null;
              },
            ),
            verticalSpace(50),
            QuestionTextWidget(
              text: ' MCV (fL)',
            ),
            verticalSpace(20),
            AppTextFormField(
              controller: TextEditingController(),
              hintText: "Enter your BMI",
              labelText: "e.g",
              keyboardType: TextInputType.number,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your BMI';
                }
                return null;
              },
            ),
            Spacer(),
            BackAndNextBottom(
              onTap: () {
                Get.toNamed("/GenderScreen");
              },
            ),
            verticalSpace(20),
          ],
        ),
      ),
    );
  }
}
