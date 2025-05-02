import 'package:carelens/core/helper/spaces.dart';
import 'package:carelens/feature/chouse_status_screen/ui/widget/chouse_your_healthy.dart';
import 'package:carelens/feature/diabetes_screens.dart/ui/widget/back_and_next.dart';
import 'package:carelens/feature/diabetes_screens.dart/ui/widget/list_view_line_top.dart';
import 'package:carelens/feature/diabetes_screens.dart/ui/widget/question_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class DiabetesScreen6 extends StatefulWidget {
  const DiabetesScreen6({super.key});

  @override
  State<DiabetesScreen6> createState() => _DiabetesScreen6State();
}

class _DiabetesScreen6State extends State<DiabetesScreen6> {
  int selectedAge = 1;
  String? selectedHealthCondition;

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
                selectNum: 8,
              ),
            ),
            verticalSpace(50),
            QuestionTextWidget(
              text: ' How often do you want to update \n your health status?',
            ),
            verticalSpace(30),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 240, 253, 233),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            'assets/images/magic-star.svg',
                            height: 20,
                            width: 20,
                            color: Colors.green,
                          ),
                          Text(
                            " We advice to you",
                            style: TextStyle(fontSize: 18),
                          )
                        ],
                      ),
                    ),
                    Text(
                      "      For the best experience, we recommend \n      updating it weekly",
                      style: TextStyle(fontSize: 16, color: Colors.green),
                    )
                  ],
                ),
              ),
            ),
            verticalSpace(20),
            ChouseYourHealthy(
              healthCondition: 'Daily',
              isSelected: selectedHealthCondition == 'Daily',
              onSelected: () {
                setState(() {
                  selectedHealthCondition = 'Daily';
                });
              },
            ),
            ChouseYourHealthy(
              healthCondition: 'Weekly',
              isSelected: selectedHealthCondition == 'Weekly',
              onSelected: () {
                setState(() {
                  selectedHealthCondition = 'Weekly';
                });
              },
            ),
            ChouseYourHealthy(
              healthCondition: 'Monthly',
              isSelected: selectedHealthCondition == 'Monthly',
              onSelected: () {
                setState(() {
                  selectedHealthCondition = 'Monthly';
                });
              },
            ),
            Spacer(),
            BackAndNextBottom(
              onTap: () {
                Get.toNamed("/AnalyzingScreen");
              },
            ),
            verticalSpace(20),
          ],
        ),
      ),
    );
  }
}
