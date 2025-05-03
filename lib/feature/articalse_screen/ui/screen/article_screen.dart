import 'package:carelens/core/models/article_model.dart';
import 'package:carelens/feature/articalse_screen/ui/widget/article_item.dart';
import 'package:carelens/feature/articalse_screen/ui/widget/filter_chip_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ArticleScreen extends StatefulWidget {
  const ArticleScreen({super.key});

  @override
  State<ArticleScreen> createState() => _ArticleScreenState();
}

class _ArticleScreenState extends State<ArticleScreen> {
  List<String> filters = [
    'All',
    'Nutrition',
    'Heart Disease',
    'Pressure',
    'Anemia'
  ];
  String selectedFilter = 'All';

  List<ArticleModel> allArticles = [
    ArticleModel(
      imageUrl: 'assets/images/artical1.jpg',
      title: 'Healthy lifestyle for diabetics',
      description: 'ipsum libero am sdf...',
      doctorName: 'Dr. Ahmed Zweil',
      date: '12-6-2022',
      doctorImage: 'assets/images/person.png',
    ),
    ArticleModel(
      imageUrl: 'assets/images/artical2.jpg',
      title: 'How to deal with Pressure',
      description: 'lorem ipsum...',
      doctorName: 'Dr. Hossam Ali',
      date: '1-1-2023',
      doctorImage: 'assets/images/person.png',
    ),
  ];

  List<ArticleModel> get filteredArticles {
    if (selectedFilter == 'All') return allArticles;
    return allArticles.where((a) => a.title.contains(selectedFilter)).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: Colors.green,
        title: Text(
          "Articles",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Row(
            children: [
              SizedBox(width: 20),
              SvgPicture.asset(
                color: Colors.white,
                'assets/icons/back_arrow.svg',
                height: 15,
                width: 15,
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          children: [
            // Search bar
            TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                hintText: "Search article",
                hintStyle: TextStyle(fontSize: 14.sp),
                filled: true,
                fillColor: Colors.grey[100],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.r),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            SizedBox(height: 12.h),
            // Filters
            SizedBox(
              height: 40.h,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: filters.length,
                itemBuilder: (_, i) {
                  final filter = filters[i];
                  return FilterChipWidget(
                    label: filter,
                    isSelected: selectedFilter == filter,
                    onTap: () {
                      setState(() {
                        selectedFilter = filter;
                      });
                    },
                  );
                },
              ),
            ),
            SizedBox(height: 12.h),
            // Articles list
            Expanded(
              child: ListView.builder(
                itemCount: filteredArticles.length,
                itemBuilder: (_, i) {
                  return Padding(
                    padding: EdgeInsets.only(bottom: 12.h),
                    child: ArticleItem(article: filteredArticles[i]),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
