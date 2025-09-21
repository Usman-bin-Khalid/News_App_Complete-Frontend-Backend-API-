import 'package:flutter/material.dart';
import 'package:news_app/Components/NavigationBar.dart';
import 'package:news_app/Pages/HomePage/Widgets/NewsTile.dart';
import 'package:news_app/Pages/HomePage/Widgets/TrendingCard.dart';

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
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Trendingcard(
                      imageUrl:
                          'https://www.simplilearn.com/ice9/free_resources_article_thumb/Technology_Trends.jpg',
                      title: 'Save Water Save life is a best News',
                      tag: 'Trending no 1',
                      time: '2 Day ago',
                      author: 'Usman Khalid',
                    ),
                    Trendingcard(
                      imageUrl:
                          'https://www.aljazeera.com/wp-content/uploads/2025/09/AP25257522906617-1758376325.jpg?resize=770%2C513&quality=80',
                      title:
                          'India and Pakistan are keen to avoid controversy ahead of their crucial Super Fours',
                      time: '3 Day ago',
                      author: 'Hafsa Adil',
                      tag: 'Trending no 1',
                    ),
                    Trendingcard(
                      imageUrl:
                          'https://www.simplilearn.com/ice9/free_resources_article_thumb/Technology_Trends.jpg',
                      title: 'Save Water Save life is a best News',
                      tag: 'Trending no 1',
                      time: '2 Day ago',
                      author: 'Usman Khalid',
                    ),
                    Trendingcard(
                      imageUrl:
                          'https://www.simplilearn.com/ice9/free_resources_article_thumb/Technology_Trends.jpg',
                      title: 'Save Water Save life is a best News',
                      tag: 'Trending no 1',
                      time: '2 Day ago',
                      author: 'Usman Khalid',
                    ),
                    Trendingcard(
                      imageUrl:
                          'https://www.simplilearn.com/ice9/free_resources_article_thumb/Technology_Trends.jpg',
                      title: 'Save Water Save life is a best News',
                      tag: 'Trending no 1',
                      time: '2 Day ago',
                      author: 'Usman Khalid',
                    ),
                    Trendingcard(
                      imageUrl:
                          'https://www.simplilearn.com/ice9/free_resources_article_thumb/Technology_Trends.jpg',
                      title: 'Save Water Save life is a best News',
                      tag: 'Trending no 1',
                      time: '2 Day ago',
                      author: 'Usman Khalid',
                    ),
                    Trendingcard(
                      imageUrl:
                          'https://www.simplilearn.com/ice9/free_resources_article_thumb/Technology_Trends.jpg',
                      title: 'Save Water Save life is a best News',
                      tag: 'Trending no 1',
                      time: '2 Day ago',
                      author: 'Usman Khalid',
                    ),
                    Trendingcard(
                      imageUrl:
                          'https://www.simplilearn.com/ice9/free_resources_article_thumb/Technology_Trends.jpg',
                      title: 'Save Water Save life is a best News',
                      tag: 'Trending no 1',
                      time: '2 Day ago',
                      author: 'Usman Khalid',
                    ),
                    Trendingcard(
                      imageUrl:
                          'https://www.simplilearn.com/ice9/free_resources_article_thumb/Technology_Trends.jpg',
                      title: 'Save Water Save life is a best News',
                      tag: 'Trending no 1',
                      time: '2 Day ago',
                      author: 'Usman Khalid',
                    ),
                    Trendingcard(
                      imageUrl:
                          'https://www.simplilearn.com/ice9/free_resources_article_thumb/Technology_Trends.jpg',
                      title: 'Save Water Save life is a best News',
                      tag: 'Trending no 1',
                      time: '2 Day ago',
                      author: 'Usman Khalid',
                    ),
                    Trendingcard(
                      imageUrl:
                          'https://www.simplilearn.com/ice9/free_resources_article_thumb/Technology_Trends.jpg',
                      title: 'Save Water Save life is a best News',
                      tag: 'Trending no 1',
                      time: '2 Day ago',
                      author: 'Usman Khalid',
                    ),
                    Trendingcard(
                      imageUrl:
                          'https://www.simplilearn.com/ice9/free_resources_article_thumb/Technology_Trends.jpg',
                      title: 'Save Water Save life is a best News',
                      tag: 'Trending no 1',
                      time: '2 Day ago',
                      author: 'Usman Khalid',
                    ),
                    Trendingcard(
                      imageUrl:
                          'https://www.simplilearn.com/ice9/free_resources_article_thumb/Technology_Trends.jpg',
                      title: 'Save Water Save life is a best News',
                      tag: 'Trending no 1',
                      time: '2 Day ago',
                      author: 'Usman Khalid',
                    ),
                    Trendingcard(
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
                    imageUrl:
                        'https://www.aljazeera.com/wp-content/uploads/2025/09/AP25257522906617-1758376325.jpg?resize=770%2C513&quality=80',
                    title:
                        'India and Pakistan are keen to avoid controversy ahead of their crucial Super Fours',
                    time: '3 Day ago',
                    author: 'Hafsa Adil',
                  ),
                  NewsTile(
                    imageUrl:
                        'https://www.aljazeera.com/wp-content/uploads/2025/09/AP25257522906617-1758376325.jpg?resize=770%2C513&quality=80',
                    title:
                        'India and Pakistan are keen to avoid controversy ahead of their crucial Super Fours',
                    time: '3 Day ago',
                    author: 'Hafsa Adil',
                  ),
                  NewsTile(
                    imageUrl:
                        'https://www.aljazeera.com/wp-content/uploads/2025/09/AP25257522906617-1758376325.jpg?resize=770%2C513&quality=80',
                    title:
                        'India and Pakistan are keen to avoid controversy ahead of their crucial Super Fours',
                    time: '3 Day ago',
                    author: 'Hafsa Adil',
                  ),
                  NewsTile(
                    imageUrl:
                        'https://www.aljazeera.com/wp-content/uploads/2025/09/AP25257522906617-1758376325.jpg?resize=770%2C513&quality=80',
                    title:
                        'India and Pakistan are keen to avoid controversy ahead of their crucial Super Fours',
                    time: '3 Day ago',
                    author: 'Hafsa Adil',
                  ),

                  NewsTile(
                    imageUrl:
                        'https://www.aljazeera.com/wp-content/uploads/2025/09/AP25257522906617-1758376325.jpg?resize=770%2C513&quality=80',
                    title:
                        'India and Pakistan are keen to avoid controversy ahead of their crucial Super Fours',
                    time: '3 Day ago',
                    author: 'Hafsa Adil',
                  ),
                  NewsTile(
                    imageUrl:
                        'https://www.aljazeera.com/wp-content/uploads/2025/09/AP25257522906617-1758376325.jpg?resize=770%2C513&quality=80',
                    title:
                        'India and Pakistan are keen to avoid controversy ahead of their crucial Super Fours',
                    time: '3 Day ago',
                    author: 'Hafsa Adil',
                  ),

                  NewsTile(
                    imageUrl:
                        'https://www.aljazeera.com/wp-content/uploads/2025/09/AP25257522906617-1758376325.jpg?resize=770%2C513&quality=80',
                    title:
                        'India and Pakistan are keen to avoid controversy ahead of their crucial Super Fours',
                    time: '3 Day ago',
                    author: 'Hafsa Adil',
                  ),
                  NewsTile(
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
