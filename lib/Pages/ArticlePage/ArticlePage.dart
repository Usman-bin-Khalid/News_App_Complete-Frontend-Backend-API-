import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:news_app/Pages/ArticlePage/Widgets/SearchWidget.dart';
import 'package:news_app/Pages/HomePage/Widgets/NewsTile.dart';
import 'package:news_app/Pages/NewsDetails/NewsDetails.dart';

class ArticlePage extends StatelessWidget {
  const ArticlePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(
            children: [
              SearchWidget(),
              SizedBox(height: 20),
              Column(
                children: [
                  NewsTile(
                    onTap: () {
                      // Get.to(NewsDetailsPage(news: e,));
                    },
                    imageUrl:
                        'https://www.aljazeera.com/wp-content/uploads/2025/09/AP25257522906617-1758376325.jpg?resize=770%2C513&quality=80',
                    title:
                        'India and Pakistan are keen to avoid controversy ahead of their crucial Super Fours',
                    time: '3 Day ago',
                    author: 'Hafsa Adil',
                  ),
                  NewsTile(
                    onTap: () {
                      // Get.to(NewsDetailsPage());
                    },
                    imageUrl:
                        'https://www.aljazeera.com/wp-content/uploads/2025/09/AP25257522906617-1758376325.jpg?resize=770%2C513&quality=80',
                    title:
                        'India and Pakistan are keen to avoid controversy ahead of their crucial Super Fours',
                    time: '3 Day ago',
                    author: 'Hafsa Adil',
                  ),
                  NewsTile(
                    onTap: () {
                      // Get.to(NewsDetailsPage());
                    },
                    imageUrl:
                        'https://www.aljazeera.com/wp-content/uploads/2025/09/AP25257522906617-1758376325.jpg?resize=770%2C513&quality=80',
                    title:
                        'India and Pakistan are keen to avoid controversy ahead of their crucial Super Fours',
                    time: '3 Day ago',
                    author: 'Hafsa Adil',
                  ),
                  NewsTile(
                    onTap: () {
               
                    },
                    imageUrl:
                        'https://www.aljazeera.com/wp-content/uploads/2025/09/AP25257522906617-1758376325.jpg?resize=770%2C513&quality=80',
                    title:
                        'India and Pakistan are keen to avoid controversy ahead of their crucial Super Fours',
                    time: '3 Day ago',
                    author: 'Hafsa Adil',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
