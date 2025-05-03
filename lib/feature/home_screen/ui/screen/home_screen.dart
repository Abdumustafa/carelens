import 'dart:io';

import 'package:carelens/feature/chate_me_screen/ui/screen/chate_me_screen.dart';
import 'package:carelens/feature/home_screen/ui/screen/home_screenn.dart';
import 'package:carelens/feature/home_screen/ui/widget/custom_bottom_nav.dart';
import 'package:carelens/feature/scan_screen/ui/screen/scan_screen.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class HomeScreenChouse extends StatefulWidget {
  const HomeScreenChouse({super.key});

  @override
  State<HomeScreenChouse> createState() => _HomeScreenChouseState();
}

class _HomeScreenChouseState extends State<HomeScreenChouse> {
  int _currentIndex = 0;

  File? imageFile;
  getImage() async {
    ImagePicker imagePicker = ImagePicker();
    XFile? image = await imagePicker.pickImage(source: ImageSource.camera);
    if (image != null) {
      setState(() {
        imageFile = File(image.path);
      });
    }
  }

  final List<Widget> _screens = [
    HomeScreen(),
    HomeScreen(),
    ScanScreen(),
    HomeScreen(),
  ];

  void _onItemTapped(int index) {
    if (index == 3) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ChateMeScreen()),
      );
    } else {
      setState(() {
        _currentIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: CustomBottomNavBar(
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: _screens,
      ),
    );
  }
}
