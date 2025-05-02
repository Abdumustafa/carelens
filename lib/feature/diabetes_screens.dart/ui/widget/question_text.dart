import 'package:flutter/material.dart';

class QuestionTextWidget extends StatelessWidget {
  const QuestionTextWidget({
    super.key, required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        color: Colors.black,
      ),
    );
  }
}