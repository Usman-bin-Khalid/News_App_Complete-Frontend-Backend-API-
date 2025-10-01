import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:news_app/Controller/NewsController.dart';
import 'package:news_app/Model/NewsModel.dart';
import 'package:lottie/lottie.dart';

class NewsDetailsPage extends StatelessWidget {
  final NewsModel news;
  const NewsDetailsPage({super.key, required this.news});

  @override
  Widget build(BuildContext context) {
    NewsController newsController = Get.put(NewsController());
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: Container(
                        child: Row(
                          children: [Icon(Icons.arrow_back_ios), Text("Back")],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Container(
                  height: 330,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network(
                            news.urlToImage! ??
                                'https://images.news18.com/ibnlive/uploads/2025/08/World-News-AI-Blog-2025-07-71d087050940689d8621058405992e8c.jpg',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  news.title! ??
                      "World News Live Updates: Turkey Warns Israel and Kurdish Fighters",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  '${news.author}  ${news.publishedAt} ' ?? "2 Days ago * Tech",
                  style: Theme.of(context).textTheme.labelSmall,
                ),
                SizedBox(height: 10),

                Row(
                  children: [
                    CircleAvatar(
                      child: Text(
                        news.author![0],
                        style: TextStyle(color: Colors.white),
                      ),
                      radius: 15,
                      backgroundColor: Colors.red,
                    ),
                    SizedBox(width: 10),
                    Flexible(
                      child: Text(
                        news.author ?? "Usman Khalid",
                        style: TextStyle(
                          fontSize: 18,
                          color: Theme.of(context).colorScheme.secondaryContainer,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primaryContainer,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Obx(
                        () => newsController.isSpeaking.value
                            ? IconButton(
                                onPressed: () {
                                  newsController.stop();
                                },
                                icon: Icon(Icons.stop, size: 50),
                              )
                            : IconButton(
                                onPressed: () {
                                  newsController.speak(
                                    news.description ?? "No Description",
                                  );
                                },
                                icon: Icon(Icons.play_arrow_rounded, size: 50),
                              ),
                      ),
                      Expanded(
                        child: Obx(
                          () => newsController.isSpeaking.value
                              ? Lottie.asset(
                                  'assets/animation/wave.json',
                                  height: 70,
                                  animate: true,
                                )
                              : Lottie.asset(
                                  'assets/animation/wave.json',
                                  height: 70,
                                  animate: false,
                                ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Flexible(
                      child: Text(
                        news.description ??
                            '''Which types of work are subject to copyright? Copyright ownership gives the owner the exclusive right to use the work, with some exceptions. When a person creates an original work, fixed in a tangible medium, he or she automatically owns copyright to the work. Many types of works are eligible for copyright protection.''',
                        style: TextStyle(
                          fontSize: 18,

                          color: Theme.of(
                            context,
                          ).colorScheme.secondaryContainer,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
