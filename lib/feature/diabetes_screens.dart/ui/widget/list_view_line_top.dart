import 'package:carelens/core/helper/spaces.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListViewLine extends StatelessWidget {
  const ListViewLine({
    super.key,
    required this.selectNum,
  });
  final int selectNum;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 8,
      itemBuilder: (context, index) {
        return Row(
          children: [
            verticalSpace(10),
            Container(
              width: 35.w,
              padding: EdgeInsets.symmetric(horizontal: 4.h),
              margin: EdgeInsets.symmetric(horizontal: 5..w),
              color: index < selectNum ? Color(0xffff9100) : Color(0xffcdcdcd),
            ),
          ],
        );
      },
    );
  }
}
