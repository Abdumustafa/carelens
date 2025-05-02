import 'package:carelens/core/helper/spaces.dart';
import 'package:carelens/core/widget/app_elevatedBotom.dart';
import 'package:carelens/core/widget/radio_yes_or_no_row.dart';
import 'package:carelens/feature/diabetes_screens.dart/ui/widget/back_and_next.dart';
import 'package:carelens/feature/diabetes_screens.dart/ui/widget/list_view_line_top.dart';
import 'package:carelens/feature/diabetes_screens.dart/ui/widget/question_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Pressure3Screen extends StatelessWidget {
  const Pressure3Screen({super.key});

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
                selectNum: 5,
              ),
            ),
            verticalSpace(50),
            QuestionTextWidget(
              text: ' Chronic Kidney Disease?',
            ),
            verticalSpace(20),
            YesNoRadioRow(),
            verticalSpace(50),
            QuestionTextWidget(
              text: ' Adrenal or Thyroid Disorders?',
            ),
            verticalSpace(20),
            YesNoRadioRow(),
            Spacer(),
            BackAndNextBottom(
              onTap: () {
                Get.toNamed("/DiabetesScreen4");
              },
            ),
            verticalSpace(20),
          ],
        ),
      ),
    );
  }
}
