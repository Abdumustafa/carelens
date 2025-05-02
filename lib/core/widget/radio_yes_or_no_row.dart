import 'package:flutter/material.dart';

class YesNoRadioRow extends StatefulWidget {
  const YesNoRadioRow({super.key});

  @override
  State<YesNoRadioRow> createState() => _YesNoRadioRowState();
}

class _YesNoRadioRowState extends State<YesNoRadioRow> {
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedValue = 'Yes';
              });
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.grey.shade300,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    '  Yes',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  Spacer(),
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
        ),
        const SizedBox(width: 16),
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedValue = 'No';
              });
            },
            child: Container(
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
                    '  No',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  Spacer(),
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
        ),
      ],
    );
  }
}
