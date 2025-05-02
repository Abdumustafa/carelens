import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class AnalyzingScreen extends StatefulWidget {
  const AnalyzingScreen({super.key});

  @override
  _AnalyzingScreenState createState() => _AnalyzingScreenState();
}

class _AnalyzingScreenState extends State<AnalyzingScreen> {
  double progress = 0;

  @override
  void initState() {
    super.initState();
    startProgress();
  }

  void startProgress() {
    Timer.periodic(Duration(milliseconds: 100), (timer) {
      if (progress >= 100) {
        timer.cancel();
        Get.offAllNamed('/HomeScreen');
      } else {
        setState(() {
          progress += 1;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Stack(
            children: [
              Image.asset(
                width: double.infinity,
                height: double.infinity,
                'assets/images/background.jpg',
                fit: BoxFit.cover,
              ),
              Container(
                width: double.infinity,
                height: double.infinity,
                color: Colors.black.withOpacity(0.3),
              ),
            ],
          ),
          Container(
            color: Colors.black.withOpacity(0.3),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  SizedBox(
                    height: 150,
                    width: 150,
                    child: CircularProgressIndicator(
                      value: progress / 100,
                      strokeWidth: 8,
                      backgroundColor: Colors.white,
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
                    ),
                  ),
                  Text(
                    '${progress.toInt()}%',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40),
              Text(
                'We are analyzing your profile',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30),
              buildStep(
                text: "Customizing your product scanner.",
                isDone: progress >= 30,
              ),
              buildStep(
                text: "Track statistics for each disease.",
                isDone: progress >= 60,
              ),
              buildStep(
                text: "Chatbot for guidance and decision support.",
                isDone: progress >= 90,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildStep({required String text, required bool isDone}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 30),
      child: Row(
        children: [
          Icon(
            isDone ? Icons.check_circle : Icons.radio_button_unchecked,
            color: isDone ? Colors.green : Colors.white,
          ),
          SizedBox(width: 10),
          Expanded(
            child: Text(
              text,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
