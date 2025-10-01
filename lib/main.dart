import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:news_app/Components/TrendingLoadingCard.dart';
import 'package:news_app/Config/Theme.dart';
import 'package:news_app/Controller/BottomNavigationController.dart';
import 'package:news_app/Controller/NewsController.dart';
import 'package:news_app/Demopage.dart';
import 'package:news_app/HomePageController.dart';
import 'package:news_app/Pages/HomePage/HomePage.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
   Get.put(NewsController(), permanent: true);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: darkTheme,
      themeMode: ThemeMode.system,
      darkTheme: darkTheme,
    
      home: HomePageController(),
    );
  }
}
