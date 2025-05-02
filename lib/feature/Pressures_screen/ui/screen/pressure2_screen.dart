import 'package:carelens/core/helper/spaces.dart';
import 'package:carelens/core/widget/app_elevatedBotom.dart';
import 'package:carelens/feature/diabetes_screens.dart/ui/widget/back_and_next.dart';
import 'package:carelens/feature/diabetes_screens.dart/ui/widget/list_view_line_top.dart';
import 'package:carelens/feature/diabetes_screens.dart/ui/widget/question_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Pressure2Screen extends StatelessWidget {
  const Pressure2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0,
        title: Text(
          "Pressure",
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
              width: double.infinity,
              child: ListViewLine(
                selectNum: 4,
              ),
            ),
            verticalSpace(50),
            QuestionTextWidget(
              text: ' salt_content_in_the_diet (grams per day)',
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
              text: ' Physical Activity (Step Count)',
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
                Get.toNamed("/Pressure3Screen");
              },
            ),
            verticalSpace(20),
          ],
        ),
      ),
    );
  }
}
