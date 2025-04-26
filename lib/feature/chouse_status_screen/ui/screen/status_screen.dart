import 'package:carelens/core/helper/spaces.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class StatusScreen extends StatelessWidget {
  StatusScreen({super.key});
  final List colors = [
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
      backgroundColor: Colors.white,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "status",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
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
      body: Column(
        children: [
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
                      width: 20,
                      padding: EdgeInsets.symmetric(horizontal: 4),
                      margin: EdgeInsets.symmetric(horizontal: 4),
                      color: colors[index],
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
