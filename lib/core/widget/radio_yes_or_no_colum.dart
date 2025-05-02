import 'package:carelens/core/helper/spaces.dart';
import 'package:flutter/material.dart';

class YesNoRadiocolum extends StatefulWidget {
  const YesNoRadiocolum({super.key});

  @override
  State<YesNoRadiocolum> createState() => _YesNoRadiocolumState();
}

class _YesNoRadiocolumState extends State<YesNoRadiocolum> {
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              selectedValue = 'Yes';
            });
          },
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            margin: const EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.grey.shade300,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                const Text(
                  'Yes',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                const Spacer(),
                Radio<String>(
                  value: 'Yes',
                  groupValue: selectedValue,
                  onChanged: (value) {
                    setState(() {
                      selectedValue = value;
                    });
                  },
                  activeColor: Colors.green,
                ),
              ],
            ),
          ),
        ),
        verticalSpace(5),
        GestureDetector(
          onTap: () {
            setState(() {
              selectedValue = 'No';
            });
          },
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.grey.shade300,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                const Text(
                  'No',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                const Spacer(),
                Radio<String>(
                  value: 'No',
                  groupValue: selectedValue,
                  onChanged: (value) {
                    setState(() {
                      selectedValue = value;
                    });
                  },
                  activeColor: Colors.green,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
