import 'package:carelens/core/helper/spaces.dart';
import 'package:carelens/core/widget/app_buttom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class AnemiaStatusScreen extends StatelessWidget {
  AnemiaStatusScreen({super.key});
  final List colors = [
    Color(0xffff9100),
    Color(0xffff9100),
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
                color: Colors.black,
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
            Center(
              child: Image.asset(
                'assets/images/status/blood2.png',
                height: 200,
                width: 200,
              ),
            ),
            verticalSpace(50),
            Text(
              " Boost Your Strength: Fight \n Anemia",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
            verticalSpace(10),
            Text(
              "To help you choose iron-rich foods and fight anemia, answer these questions. We'll create your personal profile to focus on key nutrients—like iron and vitamin C—and provide precise recommendations when you scan products.",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Colors.black.withOpacity(0.7),
              ),
            ),
            verticalSpace(120),
            AppButton(
              textColor: Colors.black,
              buttonText: "Next",
              onPressed: () {
                Get.toNamed("/AnemiaScreen1");
              },
              backgroundColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
