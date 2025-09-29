import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:news_app/Controller/NewsController.dart';
import 'package:news_app/Pages/ArticlePage/Widgets/SearchWidget.dart';
import 'package:news_app/Pages/HomePage/Widgets/NewsTile.dart';
import 'package:news_app/Pages/NewsDetails/NewsDetails.dart';

class ArticlePage extends StatelessWidget {
  const ArticlePage({super.key});

  @override
  Widget build(BuildContext context) {
    NewsController newsController = Get.put(NewsController());
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(
            children: [
              SearchWidget(),
              SizedBox(height: 20),
              Obx(
                () => newsController.isForNewsLoading.value
                    ? CircularProgressIndicator()
                    : Column(
                        children: newsController.newsForYouList
                            .map(
                              (e) => NewsTile(
                                onTap: () {
                                  Get.to(NewsDetailsPage(news: e));
                                },
                                imageUrl:
                                    e.urlToImage ??
                                    'https://www.aljazeera.com/wp-content/uploads/2025/09/AP25257522906617-1758376325.jpg?resize=770%2C513&quality=80',
                                title:
                                    e.title ??
                                    'India and Pakistan are keen to avoid controversy ahead of their crucial Super Fours',
                                time: e.publishedAt ?? '3 Day ago',
                                author: e.author ?? 'Unknown Author',
                              ),
                            )
                            .toList(),
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
