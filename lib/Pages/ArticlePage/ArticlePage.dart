import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:news_app/Controller/NewsController.dart';
import 'package:news_app/Pages/ArticlePage/Widgets/SearchWidget.dart';
import 'package:news_app/Pages/HomePage/HomePage.dart';
import 'package:news_app/Pages/HomePage/Widgets/NewsTile.dart';
import 'package:news_app/Pages/NewsDetails/NewsDetails.dart';

class ArticlePage extends StatelessWidget {
  const ArticlePage({super.key});

  @override
  Widget build(BuildContext context) {
    final NewsController newsController = Get.find<NewsController>();
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
                    ? Center(
                        child: SizedBox(
                          width: 30,
                          height: 30,
                          child: CircularProgressIndicator(),
                        ),
                      )
                    : Column(
                        children: newsController.newsForYouList
                            .map(
                              (e) => NewsTile(
                                onTap: () {
                                  Get.to(NewsDetailsPage(news: e));
                                },
                                name: getInitial(e.author),
                                imageUrl:
                                    e.urlToImage ??
                                    'https://media.istockphoto.com/id/1369150014/vector/breaking-news-with-world-map-background-vector.jpg?s=612x612&w=0&k=20&c=9pR2-nDBhb7cOvvZU_VdgkMmPJXrBQ4rB1AkTXxRIKM=',
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
              SizedBox(height: 66),
            ],
          ),
        ),
      ),
    );
  }
}
