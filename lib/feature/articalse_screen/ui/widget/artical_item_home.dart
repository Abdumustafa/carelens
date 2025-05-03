import 'package:carelens/core/models/article_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ArticleItemHome extends StatefulWidget {
  final ArticleModel article;

  const ArticleItemHome({required this.article, super.key});

  @override
  State<ArticleItemHome> createState() => _ArticleItemHomeState();
}

class _ArticleItemHomeState extends State<ArticleItemHome> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: GestureDetector(
        onTap: () {
          Get.toNamed("/OneArticalsView");
        },
        child: Card(
          color: Colors.white,
          margin: EdgeInsets.symmetric(vertical: 8.h),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12.r),
                    child: Image.asset(
                      widget.article.imageUrl,
                      height: 160.h,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 8.h,
                    right: 8.w,
                    child: CircleAvatar(
                      backgroundColor: Colors.white.withOpacity(0.9),
                      child: IconButton(
                        icon: Icon(
                          isFavorite ? Icons.favorite : Icons.favorite_border,
                          color: isFavorite ? Colors.red : Colors.grey,
                        ),
                        onPressed: () {
                          setState(() {
                            isFavorite = !isFavorite;
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(12.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(widget.article.title,
                        style: TextStyle(
                            fontSize: 16.sp, fontWeight: FontWeight.bold)),
                    SizedBox(height: 4.h),
                    Text(widget.article.description,
                        maxLines: 2, overflow: TextOverflow.ellipsis),
                    SizedBox(height: 8.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 12.r,
                              backgroundImage:
                                  AssetImage(widget.article.doctorImage),
                            ),
                            SizedBox(width: 8.w),
                            Text(widget.article.doctorName,
                                style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                        Text(widget.article.date,
                            style: TextStyle(color: Colors.grey)),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
