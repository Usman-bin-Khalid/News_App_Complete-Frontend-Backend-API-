import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:news_app/Components/NavigationBar.dart';
import 'package:news_app/Controller/NewsController.dart';
import 'package:news_app/Pages/HomePage/Widgets/NewsTile.dart';
import 'package:news_app/Pages/HomePage/Widgets/TrendingCard.dart';
import 'package:news_app/Pages/NewsDetails/NewsDetails.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    NewsController newsController = Get.put(NewsController());

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
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Icon(
                      Icons.dashboard,
                      color: Theme.of(context).colorScheme.primaryContainer,
                    ),
                  ),
                  Text(
                    "NEWS APP",
                    style: TextStyle(
                      fontSize: 25,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.5,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      newsController.getTrendingNews();
                    },
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Icon(
                        Icons.person,
                        color: Theme.of(context).colorScheme.primaryContainer,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Hottest News",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  Text(
                    "See All",
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                ],
              ),
              SizedBox(height: 20),
              Obx(
                () => SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: newsController.trendingNewsList
                        .map(
                          (e) => Trendingcard(
                            onTap: () {
                              Get.to(NewsDetailsPage(news: e));
                            },

                            imageUrl:
                                e.urlToImage ??
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUPP5v7GhhLjxApeK9WZyXXd8Jc7KlvK_PyQ&s',
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
                  Text(
                    "See All",
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                ],
              ),
              SizedBox(height: 20),
              Obx(
                () => Column(
                  children: newsController.newsForYouList
                      .map(
                        (e) => NewsTile(
                          onTap: () {
                            Get.to(NewsDetailsPage(news: e));
                          },
                          imageUrl:
                              e.urlToImage ??
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUPP5v7GhhLjxApeK9WZyXXd8Jc7KlvK_PyQ&s',

                          title: e.title ?? 'No Title',

                          time: e.publishedAt!,
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
