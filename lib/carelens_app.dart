import 'package:carelens/core/routing/router.dart';
import 'package:carelens/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CarelensApp extends StatelessWidget {
 const CarelensApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: GetMaterialApp(
        getPages: AppRouter.routes,
        initialRoute: AppRouter.initialRoute,
        title: "Carelens",
        theme: ThemeData(
          primaryColor: ColorsManager.mainGreen,

        ),
        debugShowCheckedModeBanner: false,
       
      ),
    );
  }
}
