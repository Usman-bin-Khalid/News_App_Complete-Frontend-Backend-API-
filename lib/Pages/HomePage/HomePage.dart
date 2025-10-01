import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:news_app/Components/NavigationBar.dart';
import 'package:news_app/Components/NewsTileLoading.dart';
import 'package:news_app/Components/TrendingLoadingCard.dart';
import 'package:news_app/Controller/NewsController.dart';
import 'package:news_app/Pages/ArticlePage/ArticlePage.dart';
import 'package:news_app/Pages/HomePage/Widgets/NewsTile.dart';
import 'package:news_app/Pages/HomePage/Widgets/TrendingCard.dart';
import 'package:news_app/Pages/NewsDetails/NewsDetails.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final NewsController newsController = Get.find<NewsController>();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "NEWSEEKERS",
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Trending News",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(ArticlePage());
                    },
                    child: Text(
                      "See All",
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Obx(
                () => SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: newsController.isTrendingNewsLoading.value
                      ? Row(
                          children: [
                            Trendingloadingcard(),
                            Trendingloadingcard(),
                            Trendingloadingcard(),
                          ],
                        )
                      : Row(
                          children: newsController.trendingNewsList
                              .map(
                                (e) => Trendingcard(
                                  onTap: () {
                                    Get.to(NewsDetailsPage(news: e));
                                  },
                                  name: getInitial(e.author),

                                  imageUrl:
                                      e.urlToImage ??
                                      'https://media.istockphoto.com/id/1369150014/vector/breaking-news-with-world-map-background-vector.jpg?s=612x612&w=0&k=20&c=9pR2-nDBhb7cOvvZU_VdgkMmPJXrBQ4rB1AkTXxRIKM=',
                                  title: e.title ?? 'No Title',
                                  tag: e.source?.name ?? 'Trending',
                                  time: e.publishedAt!,
                                  author: e.author ?? 'Unknown Author',
                                ),
                              )
                              .toList(),
                        ),
                ),
              ),

              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "News For you",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(ArticlePage());
                    },
                    child: Text(
                      "See All",
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Obx(
                () => newsController.isForNewsLoading.value
                    ? Column(
                        children: [
                          NewsTileLoading(),
                          NewsTileLoading(),
                          NewsTileLoading(),
                        ],
                      )
                    : Column(
                        children: newsController.newsForYou5
                            .map(
                              (e) => NewsTile(
                                onTap: () {
                                  Get.to(NewsDetailsPage(news: e));
                                },
                                name: getInitial(e.author),

                                imageUrl:
                                    e.urlToImage ??
                                    'https://media.istockphoto.com/id/1369150014/vector/breaking-news-with-world-map-background-vector.jpg?s=612x612&w=0&k=20&c=9pR2-nDBhb7cOvvZU_VdgkMmPJXrBQ4rB1AkTXxRIKM=',

                                title: e.title ?? 'No Title',

                                time: e.publishedAt!,
                                author: e.author ?? 'Unknown Author',
                              ),
                            )
                            .toList(),
                      ),
              ),

              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Apple News",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(ArticlePage());
                    },
                    child: Text(
                      "See All",
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Obx(
                () => newsController.isAppleNewsLoading.value
                    ? Column(
                        children: [
                          NewsTileLoading(),
                          NewsTileLoading(),
                          NewsTileLoading(),
                        ],
                      )
                    : Column(
                        children: newsController.apple5News
                            .map(
                              (e) => NewsTile(
                                onTap: () {
                                  Get.to(NewsDetailsPage(news: e));
                                },
                                name: getInitial(e.author),

                                imageUrl:
                                    e.urlToImage ??
                                    'https://media.istockphoto.com/id/1369150014/vector/breaking-news-with-world-map-background-vector.jpg?s=612x612&w=0&k=20&c=9pR2-nDBhb7cOvvZU_VdgkMmPJXrBQ4rB1AkTXxRIKM=',

                                title: e.title ?? 'No Title',

                                time: e.publishedAt!,
                                author: e.author ?? 'Unknown Author',
                              ),
                            )
                            .toList(),
                      ),
              ),

              SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Business News",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(ArticlePage());
                    },
                    child: Text(
                      "See All",
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Obx(
                () => SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: newsController.isBusinessNewsLoading.value
                      ? Row(
                          children: [
                            Trendingloadingcard(),
                            Trendingloadingcard(),
                            Trendingloadingcard(),
                          ],
                        )
                      : Row(
                          children: newsController.business5News
                              .map(
                                (e) => Trendingcard(
                                  onTap: () {
                                    Get.to(NewsDetailsPage(news: e));
                                  },
                                  name: getInitial(e.author),

                                  imageUrl:
                                      e.urlToImage ??
                                      'https://media.istockphoto.com/id/1369150014/vector/breaking-news-with-world-map-background-vector.jpg?s=612x612&w=0&k=20&c=9pR2-nDBhb7cOvvZU_VdgkMmPJXrBQ4rB1AkTXxRIKM=',
                                  title: e.title ?? 'No Title',
                                  tag: e.source?.name ?? 'Trending',
                                  time: e.publishedAt!,
                                  author: e.author ?? 'Unknown Author',
                                ),
                              )
                              .toList(),
                        ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Wall Street News",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(ArticlePage());
                    },
                    child: Text(
                      "See All",
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Obx(
                () => newsController.isWallStreetNewsLoading.value
                    ? Column(
                        children: [
                          NewsTileLoading(),
                          NewsTileLoading(),
                          NewsTileLoading(),
                        ],
                      )
                    : Column(
                        children: newsController.wallStreet5News
                            .map(
                              (e) => NewsTile(
                                onTap: () {
                                  Get.to(NewsDetailsPage(news: e));
                                },
                                name: getInitial(e.author),

                                imageUrl:
                                    e.urlToImage ??
                                    'https://media.istockphoto.com/id/1369150014/vector/breaking-news-with-world-map-background-vector.jpg?s=612x612&w=0&k=20&c=9pR2-nDBhb7cOvvZU_VdgkMmPJXrBQ4rB1AkTXxRIKM=',

                                title: e.title ?? 'No Title',

                                time: e.publishedAt!,
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

String getInitial(String? author) {
  if (author == null || author.isEmpty) {
    return "?"; // fallback character
  }
  return author[0];
}
