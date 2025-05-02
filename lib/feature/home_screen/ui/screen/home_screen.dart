// import 'package:carelens/core/helper/spaces.dart';
import 'package:carelens/core/helper/spaces.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.bar_chart), label: 'Statistics'),
          BottomNavigationBarItem(
              icon: Icon(Icons.qr_code_scanner), label: 'Scan'),
          BottomNavigationBarItem(icon: Icon(Icons.history), label: 'History'),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Assistant'),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              height: 200,
              decoration: const BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Column(
                children: [
                  verticalSpace(50),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      horizontalSpace(10),
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage('assets/images/person.png'),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Hi, Arwa',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w500),
                            ),
                            const Text(
                              'how is your health?',
                              style: TextStyle(
                                  color: Colors.white70, fontSize: 16),
                            ),
                            const SizedBox(height: 10),
                            Chip(
                              label: SizedBox(
                                width: 100,
                                child: Row(
                                  children: [
                                    Image.asset(
                                      'assets/images/uil_fire.png',
                                      height: 20,
                                    ),
                                    const Text(
                                      '0-day Streak',
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ],
                                ),
                              ),
                              backgroundColor: Colors.white,
                            ),
                          ],
                        ),
                      ),
                      const Icon(Icons.notifications, color: Colors.white),
                    ],
                  ),
                ],
              ),
            ),
            verticalSpace(20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text('Health status',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
            verticalSpace(10),
            SizedBox(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                children: [
                  buildHealthItem(
                      'Diabetes', "assets/images/diabetes.png", Colors.blue),
                  buildHealthItem('Heart Disease',
                      "assets/images/heart_disease.png", Colors.pink),
                  buildHealthItem(
                      'Anemia', "assets/images/aanemia.png", Colors.redAccent),
                  buildHealthItem(
                      'Pressure', "assets/images/pressure.png", Colors.green),
                ],
              ),
            ),
            verticalSpace(20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('My Communities',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  Text('View All', style: TextStyle(color: Colors.green)),
                ],
              ),
            ),
            verticalSpace(10),
            SizedBox(
              height: 180,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                children: [
                  buildCommunityItem('assets/images/community1.jpg',
                      'Stronger Together: Diabetes', '15 new post'),
                  buildCommunityItem('assets/images/community2.jpg',
                      'Pressure Friendly Foods', '8 new post'),
                ],
              ),
            ),
            verticalSpace(20),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Container(
                    height: 150,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                        image: AssetImage('assets/images/food_background.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    padding: const EdgeInsets.all(16),
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text:
                                'A small checkup \ntoday can save a life \ntomorrow\n',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                          TextSpan(
                            text:
                                'Lorem ipsum dolor sit amet consectetur.\ndictum accumsan magna vitae non',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                                fontSize: 14),
                          ),
                        ],
                      ),
                    ))),
            verticalSpace(20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Articles',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  Text('View All', style: TextStyle(color: Colors.green)),
                ],
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 220,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                children: [
                  buildArticleItem(
                      'assets/images/community1.jpg',
                      'Healthy lifestyle for diabetics',
                      'Dr. Ahmed Zweil',
                      '12-6-2022'),
                  buildArticleItem('assets/images/community1.jpg',
                      'Tips: la qualification', 'Dr. Ahmed Zweil', '12-6-2022'),
                ],
              ),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  Widget buildHealthItem(String title, String image, Color color) {
    return Container(
      width: 80,
      margin: const EdgeInsets.only(right: 12),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(image, height: 40),
          const SizedBox(height: 10),
          Text(title,
              style: TextStyle(color: color, fontSize: 12),
              textAlign: TextAlign.center),
        ],
      ),
    );
  }

  Widget buildCommunityItem(String imagePath, String title, String subtitle) {
    return Container(
      width: 140,
      margin: const EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
            child: Image.asset(imagePath,
                height: 100, width: double.infinity, fit: BoxFit.cover),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Text(title,
                style:
                    const TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text(subtitle,
                style: const TextStyle(fontSize: 10, color: Colors.grey)),
          ),
        ],
      ),
    );
  }

  Widget buildArticleItem(
      String imagePath, String title, String author, String date) {
    return Container(
      width: 180,
      margin: const EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
            child: Image.asset(imagePath,
                height: 100, width: double.infinity, fit: BoxFit.cover),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Text(title,
                style:
                    const TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            child: Row(
              children: [
                CircleAvatar(
                    radius: 10,
                    backgroundImage: AssetImage('assets/images/person.png')),
                const SizedBox(width: 5),
                Text(author, style: const TextStyle(fontSize: 10)),
                Spacer(),
                Text(date, style: const TextStyle(fontSize: 10)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
