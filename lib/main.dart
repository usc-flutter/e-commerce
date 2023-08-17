import 'package:e_commerce/app/modules/splashScreen/views/splash_screen_view.dart';
import 'package:e_commerce/app/routes/app_pages.dart';
import 'package:e_commerce/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: "E-Commerce",
          home: child,
          theme: themeData,
          initialRoute: AppPages.INITIAL,
          getPages: AppPages.routes,
        );
      },
      child: const SplashScreenView(),
    );
  }
}
