import 'package:carelens/feature/home_screen/ui/widget/health_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:carelens/core/helper/spaces.dart';
import 'package:carelens/feature/articalse_screen/ui/widget/artical_item_home.dart';
import 'package:url_launcher/url_launcher.dart';
import '../widget/dummy_articles.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final String phoneNumber = '201040148292';
  Future<void> _openWhatsApp() async {
    final Uri url = Uri.parse("https://wa.me/$phoneNumber");

    if (await canLaunchUrl(url)) {
      final bool launched = await launchUrl(
        url,
        mode: LaunchMode.externalApplication,
      );

      if (!launched) {
        Get.snackbar("Error", "Could not open WhatsApp");
      }
    } else {
      Get.snackbar("Error", "WhatsApp not available");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(16.w),
              height: 230.h,
              decoration: BoxDecoration(
                color: Color(0xff21BA3B),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20.r),
                  bottomRight: Radius.circular(20.r),
                ),
              ),
              child: Column(
                children: [
                  verticalSpace(50.h),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      horizontalSpace(10.w),
                      CircleAvatar(
                        radius: 30.r,
                        backgroundImage: AssetImage('assets/images/person.png'),
                      ),
                      SizedBox(width: 10.w),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Hi, Arwa',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              'how is your health?',
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 16.sp,
                              ),
                            ),
                            SizedBox(height: 10.h),
                            Chip(
                              label: SizedBox(
                                width: 100.w,
                                child: Row(
                                  children: [
                                    Image.asset(
                                      'assets/images/uil_fire.png',
                                      height: 20.h,
                                    ),
                                    Text(
                                      '0-day Streak',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 12.sp),
                                    ),
                                  ],
                                ),
                              ),
                              backgroundColor: Colors.white,
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                          onTap: () {
                            Get.toNamed("/NoHistoryScreen");
                          },
                          child: Icon(Icons.history,
                              color: Colors.white, size: 28.r)),
                      horizontalSpace(15.h),
                      Icon(Icons.notifications_outlined,
                          color: Colors.white, size: 28.r),
                    ],
                  ),
                ],
              ),
            ),
            verticalSpace(20.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Text(
                'Health status',
                style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
              ),
            ),
            verticalSpace(10.h),
            SizedBox(
              height: 100.h,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: 14.w),
                children: [
                  HealthItem(
                      title: 'Diabetes',
                      image: "assets/images/diabetes.png",
                      color: Colors.blue,
                      onTap: () {
                        Get.toNamed("/MyDiabetesStateScreen");
                      }),
                  HealthItem(
                      title: 'Heart Disease',
                      image: "assets/images/heart_disease.png",
                      color: Colors.pink,
                      onTap: () {
                        Get.toNamed("/MyHeartStateScreen");
                      }),
                  HealthItem(
                      title: 'Anemia',
                      image: "assets/images/aanemia.png",
                      color: Colors.redAccent,
                      onTap: () {
                        Get.toNamed("/PressureStatueScreen");
                      }),
                  HealthItem(
                      title: 'Pressure',
                      image: "assets/images/pressure.png",
                      color: Colors.green,
                      onTap: () {
                        Get.toNamed("/AnemiaStatusScreen");
                      })
                ],
              ),
            ),
            verticalSpace(20.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('My Communities',
                      style: TextStyle(
                          fontSize: 20.sp, fontWeight: FontWeight.bold)),
                  Text('View All',
                      style: TextStyle(color: Colors.green, fontSize: 14.sp)),
                ],
              ),
            ),
            verticalSpace(10.h),
            SizedBox(
              height: 180.h,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                children: [
                  buildCommunityItem('assets/images/community1.jpg',
                      'Stronger Together: Diabetes', '15 new post'),
                  buildCommunityItem('assets/images/community2.jpg',
                      'Pressure Friendly Foods', '8 new post'),
                  buildCommunityItem('assets/images/community1.jpg',
                      'Stronger Together: Diabetes', '15 new post'),
                  buildCommunityItem('assets/images/community1.jpg',
                      'Stronger Together: Diabetes', '15 new post'),
                ],
              ),
            ),
            verticalSpace(20.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Container(
                height: 150.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(12.r),
                  image: const DecorationImage(
                    image: AssetImage('assets/images/food_background.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                padding: EdgeInsets.all(16.w),
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text:
                            'A small checkup \ntoday can save a life \ntomorrow\n',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.sp),
                      ),
                      TextSpan(
                        text:
                            'Lorem ipsum dolor sit amet consectetur.\ndictum accumsan magna vitae non',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                            fontSize: 14.sp),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            verticalSpace(20.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Articles',
                      style: TextStyle(
                          fontSize: 20.sp, fontWeight: FontWeight.bold)),
                  GestureDetector(
                    onTap: () => Get.toNamed("/ArticleScreen"),
                    child: Text('View All',
                        style: TextStyle(color: Colors.green, fontSize: 14.sp)),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.h),
            SizedBox(
              height: 290.h,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                itemCount: homeArticles.length,
                itemBuilder: (_, index) {
                  return SizedBox(
                    width: 300.w,
                    child: ArticleItemHome(article: homeArticles[index]),
                  );
                },
              ),
            ),
            SizedBox(height: 30.h),
          ],
        ),
      ),
    );
  }

  Widget buildCommunityItem(String imagePath, String title, String subtitle) {
    return GestureDetector(
      onTap: _openWhatsApp,
      child: Container(
        width: 140.w,
        margin: EdgeInsets.only(right: 12.w),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(color: Colors.grey.shade300),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(12.r)),
              child: Image.asset(imagePath,
                  height: 100.h, width: double.infinity, fit: BoxFit.cover),
            ),
            Padding(
              padding: EdgeInsets.all(8.w),
              child: Text(title,
                  style:
                      TextStyle(fontSize: 12.sp, fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 8.w,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset("assets/images/wats3person.png"),
                  Container(
                    height: 20.h,
                    width: 70.w,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 221, 241, 252),
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    child: Center(
                      child: Text(subtitle,
                          style: TextStyle(
                              fontSize: 10.sp, color: Color(0xff0FA3F9))),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
