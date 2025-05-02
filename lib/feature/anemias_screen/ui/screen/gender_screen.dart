import 'package:carelens/core/helper/spaces.dart';
import 'package:carelens/feature/diabetes_screens.dart/ui/widget/back_and_next.dart';
import 'package:carelens/feature/diabetes_screens.dart/ui/widget/gender_selection.dart';
import 'package:carelens/feature/diabetes_screens.dart/ui/widget/question_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class GenderScreen extends StatefulWidget {
  const GenderScreen({super.key});

  @override
  State<GenderScreen> createState() => _GenderScreenState();
}

class _GenderScreenState extends State<GenderScreen> {
  int selectedAge = 1;
  final List colors = [
    Color(0xffff9100),
    Color(0xffff9100),
    Color(0xffff9100),
    Color(0xffff9100),
    Color(0xffff9100),
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
                Get.toNamed("/UpdateStatusScreen");
              },
            ),
            verticalSpace(20),
          ],
        ),
      ),
    );
  }
}
