import 'package:carelens/core/helper/spaces.dart';
import 'package:carelens/feature/diabetes_screens.dart/ui/widget/back_and_next.dart';
import 'package:carelens/feature/diabetes_screens.dart/ui/widget/list_view_line_top.dart';
import 'package:carelens/feature/diabetes_screens.dart/ui/widget/question_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DiabetesScreen4 extends StatefulWidget {
  const DiabetesScreen4({super.key});

  @override
  State<DiabetesScreen4> createState() => _DiabetesScreen4State();
}

class _DiabetesScreen4State extends State<DiabetesScreen4> {
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
                selectNum: 6,
              ),
            ),
            verticalSpace(200),
            Center(
              child: QuestionTextWidget(
                text: ' What is your age?',
              ),
            ),
            verticalSpace(70),
            Center(
              child: SizedBox(
                height: 100,
                width: 300,
                child: PageView.builder(
                  controller: PageController(
                    viewportFraction: 0.2,
                    initialPage: selectedAge - 18,
                  ),
                  itemCount: 83,
                  onPageChanged: (index) {
                    setState(() {
                      selectedAge = index + 18;
                    });
                  },
                  itemBuilder: (context, index) {
                    final age = index + 18;
                    final isSelected = selectedAge == age;
                    return Center(
                      child: Text(
                        '$age',
                        style: TextStyle(
                          fontSize: isSelected ? 26 : 18,
                          fontWeight:
                              isSelected ? FontWeight.bold : FontWeight.normal,
                          color: isSelected ? Colors.green : Colors.grey,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            Spacer(),
            BackAndNextBottom(
              onTap: () {
                Get.toNamed("/DiabetesScreen5");
              },
            ),
            verticalSpace(20),
          ],
        ),
      ),
    );
  }
}
