import 'package:carelens/core/helper/spaces.dart';
import 'package:carelens/feature/diabetes_screens.dart/ui/widget/back_and_next.dart';
import 'package:carelens/feature/diabetes_screens.dart/ui/widget/gender_selection.dart';
import 'package:carelens/feature/diabetes_screens.dart/ui/widget/list_view_line_top.dart';
import 'package:carelens/feature/diabetes_screens.dart/ui/widget/question_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DiabetesScreen5 extends StatefulWidget {
  const DiabetesScreen5({super.key});

  @override
  State<DiabetesScreen5> createState() => _DiabetesScreen5State();
}

class _DiabetesScreen5State extends State<DiabetesScreen5> {
  int selectedAge = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0,
        title: Text(
          "Yourself",
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
                selectNum: 7,
              ),
            ),
            verticalSpace(200),
            Center(
              child: QuestionTextWidget(
                text: ' what’s your gender?',
              ),
            ),
            verticalSpace(50),
            GenderSelection(),
            verticalSpace(70),
            Spacer(),
            BackAndNextBottom(
              onTap: () {
                Get.toNamed("/DiabetesScreen6");
              },
            ),
            verticalSpace(20),
          ],
        ),
      ),
    );
  }
}
