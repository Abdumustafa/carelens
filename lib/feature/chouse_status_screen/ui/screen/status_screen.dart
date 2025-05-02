import 'package:carelens/core/helper/spaces.dart';
import 'package:carelens/core/widget/app_buttom.dart';
import 'package:carelens/feature/chouse_status_screen/ui/widget/chouse_your_healthy.dart';
import 'package:carelens/feature/diabetes_screens.dart/ui/widget/list_view_line_top.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class StatusScreen extends StatefulWidget {
  const StatusScreen({super.key});

  @override
  State<StatusScreen> createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  String? selectedHealthCondition;

  final List colors = [
    Color(0xffff9100),
    Color(0xffcdcdcd),
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
      backgroundColor: Colors.white,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "Status",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Colors.black,
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
                selectNum: 1,
              ),
            ),
            verticalSpace(20),
            Text(
              " kindly choose your health \n condition😊",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
            verticalSpace(10),
            Text(
              "We use this information to calculate and provide you with daily personalized recommendations",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              ),
            ),
            verticalSpace(30),
            ChouseYourHealthy(
              healthCondition: 'Diabetes',
              isSelected: selectedHealthCondition == 'Diabetes',
              onSelected: () {
                setState(() {
                  selectedHealthCondition = 'Diabetes';
                });
              },
            ),
            ChouseYourHealthy(
              healthCondition: 'Heart Disease',
              isSelected: selectedHealthCondition == 'Heart Disease',
              onSelected: () {
                setState(() {
                  selectedHealthCondition = 'Heart Disease';
                });
              },
            ),
            ChouseYourHealthy(
              healthCondition: 'Pressure',
              isSelected: selectedHealthCondition == 'Pressure',
              onSelected: () {
                setState(() {
                  selectedHealthCondition = 'Pressure';
                });
              },
            ),
            ChouseYourHealthy(
              healthCondition: 'Anemia',
              isSelected: selectedHealthCondition == 'Anemia',
              onSelected: () {
                setState(() {
                  selectedHealthCondition = 'Anemia';
                });
              },
            ),
            Spacer(),
            AppButton(
              onPressed: () {
                if (selectedHealthCondition == 'Diabetes') {
                  Get.toNamed('/MyDiabetesStateScreen');
                } else if (selectedHealthCondition == 'Heart Disease') {
                  Get.toNamed('/MyHeartStateScreen');
                } else if (selectedHealthCondition == 'Pressure') {
                  Get.toNamed('/PressureStatueScreen');
                } else if (selectedHealthCondition == 'Anemia') {
                  Get.toNamed('/AnemiaStatusScreen');
                } else {
                  Get.snackbar(
                    "Error",
                    "Please select a health condition",
                  );
                }
              },
              buttonText: "Next",
            ),
            verticalSpace(40),
          ],
        ),
      ),
    );
  }
}
