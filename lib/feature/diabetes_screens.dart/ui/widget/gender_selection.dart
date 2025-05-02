import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GenderSelection extends StatefulWidget {
  const GenderSelection({super.key});

  @override
  _GenderSelectionState createState() => _GenderSelectionState();
}

class _GenderSelectionState extends State<GenderSelection> {
  String? selectedGender;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        buildGenderCard(
          gender: "Female",
          assetPath: "assets/images/female_male/female.svg",
          originalColor: Color(0xfff575be),
        ),
        buildGenderCard(
          gender: "Male",
          assetPath: "assets/images/female_male/malee.svg",
          originalColor: Color(0xff3f99d9),
        ),
      ],
    );
  }

  Widget buildGenderCard({
    required String gender,
    required String assetPath,
    required Color originalColor,
  }) {
    final bool isSelected = selectedGender == gender;

    return GestureDetector(
      onTap: () {
        setState(() {
          selectedGender = gender;
        });
      },
      child: Container(
        width: 120,
        height: 150,
        decoration: BoxDecoration(
          color: isSelected ? originalColor : Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: SvgPicture.asset(
                assetPath,
                height: 80,
                width: 60,
                color: isSelected ? Colors.white : originalColor,
              ),
            ),
            verticalSpace(10),
            Text(
              gender,
              style: TextStyle(
                color: isSelected ? Colors.white : originalColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            verticalSpace(10),
          ],
        ),
      ),
    );
  }

  Widget verticalSpace(double height) => SizedBox(height: height);
}
