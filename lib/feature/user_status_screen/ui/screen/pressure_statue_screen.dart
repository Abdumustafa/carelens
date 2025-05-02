import 'package:carelens/core/helper/spaces.dart';
import 'package:carelens/core/widget/app_buttom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class PressureStatueScreen extends StatelessWidget {
  PressureStatueScreen({super.key});
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
      backgroundColor: Color(0xffca11db),
      appBar: AppBar(
        backgroundColor: Color(0xffca11db),
        scrolledUnderElevation: 0,
        title: Text(
          "Pressure",
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
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: colors.length,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      verticalSpace(10),
                      Container(
                        width: 35,
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
            Center(
              child: Image.asset(
                'assets/images/status/blood.png',
                height: 200,
                width: 200,
              ),
            ),
            verticalSpace(50),
            Text(
              " Take Control of Your Blood \n Pressure",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
            verticalSpace(10),
            Text(
              "To help you manage your blood pressure better, answer these questions.  We'll create your personal profile to focus on key factors—like sodium and potassium—and provide precise recommendations when you scan products.",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Colors.white.withOpacity(0.7),
              ),
            ),
            verticalSpace(120),
            AppButton(
              textColor: Color(0xffca11db),
              buttonText: "Next",
              onPressed: () {
                Get.toNamed("/Pressure1Screen");
              },
              backgroundColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
