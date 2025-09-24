import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:news_app/Components/NavigationBar.dart';
import 'package:news_app/Pages/HomePage/Widgets/NewsTile.dart';
import 'package:news_app/Pages/HomePage/Widgets/TrendingCard.dart';
import 'package:news_app/Pages/NewsDetails/NewsDetails.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
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
                  Container(
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
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Trendingcard(
                      onTap: () {
                        Get.to(NewsDetailsPage());
                      },
                      imageUrl:
                          'https://www.simplilearn.com/ice9/free_resources_article_thumb/Technology_Trends.jpg',
                      title: 'Save Water Save life is a best News',
                      tag: 'Trending no 1',
                      time: '2 Day ago',
                      author: 'Usman Khalid',
                    ),
                    Trendingcard(
                      onTap: () {
                        Get.to(NewsDetailsPage());
                      },
                      imageUrl:
                          'https://www.aljazeera.com/wp-content/uploads/2025/09/AP25257522906617-1758376325.jpg?resize=770%2C513&quality=80',
                      title:
                          'India and Pakistan are keen to avoid controversy ahead of their crucial Super Fours',
                      time: '3 Day ago',
                      author: 'Hafsa Adil',
                      tag: 'Trending no 1',
                    ),
                    Trendingcard(
                      onTap: () {
                        Get.to(NewsDetailsPage());
                      },
                      imageUrl:
                          'https://www.simplilearn.com/ice9/free_resources_article_thumb/Technology_Trends.jpg',
                      title: 'Save Water Save life is a best News',
                      tag: 'Trending no 1',
                      time: '2 Day ago',
                      author: 'Usman Khalid',
                    ),
                    Trendingcard(
                      onTap: () {
                        Get.to(NewsDetailsPage());
                      },
                      imageUrl:
                          'https://www.simplilearn.com/ice9/free_resources_article_thumb/Technology_Trends.jpg',
                      title: 'Save Water Save life is a best News',
                      tag: 'Trending no 1',
                      time: '2 Day ago',
                      author: 'Usman Khalid',
                    ),
                    Trendingcard(
                      onTap: () {
                        Get.to(NewsDetailsPage());
                      },
                      imageUrl:
                          'https://www.simplilearn.com/ice9/free_resources_article_thumb/Technology_Trends.jpg',
                      title: 'Save Water Save life is a best News',
                      tag: 'Trending no 1',
                      time: '2 Day ago',
                      author: 'Usman Khalid',
                    ),
                    Trendingcard(
                      onTap: () {
                        NewsDetailsPage();
                      },
                      imageUrl:
                          'https://www.simplilearn.com/ice9/free_resources_article_thumb/Technology_Trends.jpg',
                      title: 'Save Water Save life is a best News',
                      tag: 'Trending no 1',
                      time: '2 Day ago',
                      author: 'Usman Khalid',
                    ),
                    Trendingcard(
                      onTap: () {
                        Get.to(NewsDetailsPage());
                      },
                      imageUrl:
                          'https://www.simplilearn.com/ice9/free_resources_article_thumb/Technology_Trends.jpg',
                      title: 'Save Water Save life is a best News',
                      tag: 'Trending no 1',
                      time: '2 Day ago',
                      author: 'Usman Khalid',
                    ),
                    Trendingcard(
                      onTap: () {
                        Get.to(NewsDetailsPage());
                      },
                      imageUrl:
                          'https://www.simplilearn.com/ice9/free_resources_article_thumb/Technology_Trends.jpg',
                      title: 'Save Water Save life is a best News',
                      tag: 'Trending no 1',
                      time: '2 Day ago',
                      author: 'Usman Khalid',
                    ),
                    Trendingcard(
                      onTap: () {
                        Get.to(NewsDetailsPage());
                      },
                      imageUrl:
                          'https://www.simplilearn.com/ice9/free_resources_article_thumb/Technology_Trends.jpg',
                      title: 'Save Water Save life is a best News',
                      tag: 'Trending no 1',
                      time: '2 Day ago',
                      author: 'Usman Khalid',
                    ),
                    Trendingcard(
                      onTap: () {
                        Get.to(NewsDetailsPage());
                      },
                      imageUrl:
                          'https://www.simplilearn.com/ice9/free_resources_article_thumb/Technology_Trends.jpg',
                      title: 'Save Water Save life is a best News',
                      tag: 'Trending no 1',
                      time: '2 Day ago',
                      author: 'Usman Khalid',
                    ),
                    Trendingcard(
                      onTap: () {
                        Get.to(NewsDetailsPage());
                      },
                      imageUrl:
                          'https://www.simplilearn.com/ice9/free_resources_article_thumb/Technology_Trends.jpg',
                      title: 'Save Water Save life is a best News',
                      tag: 'Trending no 1',
                      time: '2 Day ago',
                      author: 'Usman Khalid',
                    ),
                    Trendingcard(
                      onTap: () {
                        Get.to(NewsDetailsPage());
                      },
                      imageUrl:
                          'https://www.simplilearn.com/ice9/free_resources_article_thumb/Technology_Trends.jpg',
                      title: 'Save Water Save life is a best News',
                      tag: 'Trending no 1',
                      time: '2 Day ago',
                      author: 'Usman Khalid',
                    ),
                    Trendingcard(
                      onTap: () {
                        Get.to(NewsDetailsPage());
                      },
                      imageUrl:
                          'https://www.simplilearn.com/ice9/free_resources_article_thumb/Technology_Trends.jpg',
                      title: 'Save Water Save life is a best News',
                      tag: 'Trending no 1',
                      time: '2 Day ago',
                      author: 'Usman Khalid',
                    ),
                    Trendingcard(
                      onTap: () {
                        Get.to(NewsDetailsPage());
                      },
                      imageUrl:
                          'https://www.simplilearn.com/ice9/free_resources_article_thumb/Technology_Trends.jpg',
                      title: 'Save Water Save life is a best News',
                      tag: 'Trending no 1',
                      time: '2 Day ago',
                      author: 'Usman Khalid',
                    ),
                  ],
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
              Column(
                children: [
                  NewsTile(
                    onTap: () {
                      Get.to(NewsDetailsPage());
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
                      Get.to(NewsDetailsPage());
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
                      Get.to(NewsDetailsPage());
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
                      Get.to(NewsDetailsPage());
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
                      Get.to(NewsDetailsPage());
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
                      Get.to(NewsDetailsPage());
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
                      Get.to(NewsDetailsPage());
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
                      Get.to(NewsDetailsPage());
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
