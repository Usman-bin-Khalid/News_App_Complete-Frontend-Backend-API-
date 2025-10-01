import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:news_app/Controller/NewsController.dart';
import 'package:news_app/Model/NewsModel.dart';
import 'package:lottie/lottie.dart';
import 'package:news_app/Pages/HomePage/HomePage.dart';

class NewsDetailsPage extends StatelessWidget {
  final NewsModel news;
  const NewsDetailsPage({super.key, required this.news});

  @override
  Widget build(BuildContext context) {
    final NewsController newsController = Get.find<NewsController>();

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                // Back button
                Row(
                  children: [
                    InkWell(
                      onTap: () => Get.back(),
                      child: Row(
                        children: [Icon(Icons.arrow_back_ios), Text("Back")],
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 30),

                // Image
                Container(
                  height: 330,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                      width: double.infinity,
                      height: 300,
                      news.urlToImage ??
                          'https://media.istockphoto.com/id/1369150014/vector/breaking-news-with-world-map-background-vector.jpg?s=612x612&w=0&k=20&c=9pR2-nDBhb7cOvvZU_VdgkMmPJXrBQ4rB1AkTXxRIKM=',
                      fit: BoxFit.fill,
                      errorBuilder: (context, error, stackTrace) {
                        return Image.network(
                          'https://media.istockphoto.com/id/1369150014/vector/breaking-news-with-world-map-background-vector.jpg?s=612x612&w=0&k=20&c=9pR2-nDBhb7cOvvZU_VdgkMmPJXrBQ4rB1AkTXxRIKM=',
                          width: double.infinity,
                          height: 300,
                          fit: BoxFit.fill,
                        );
                      },
                    ),
                  ),
                ),

                SizedBox(height: 20),

                // Title
                Text(
                  news.title ??
                      "World News Live Updates: Turkey Warns Israel and Kurdish Fighters",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),

                SizedBox(height: 10),

                Text(
                  '${news.author ?? "Unknown"}  ${news.publishedAt ?? ""}',
                  style: Theme.of(context).textTheme.labelSmall,
                ),
                SizedBox(height: 20),

                Row(
                  children: [
                    CircleAvatar(
                      child: Text(
                        getInitial(news.author),

                        style: TextStyle(color: Colors.white),
                      ),
                      radius: 15,
                      backgroundColor: Colors.red,
                    ),
                    SizedBox(width: 10),
                    Flexible(
                      child: Text(
                        news.author ?? "Ubknown Author",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                // Play / Stop + Animation
                Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primaryContainer,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Obx(
                        () => IconButton(
                          onPressed: () {
                            newsController.toggleSpeech(
                              news.description ?? "No Description",
                            );
                          },
                          icon: Icon(
                            newsController.isSpeaking.value
                                ? Icons.stop
                                : Icons.play_arrow_rounded,
                            size: 50,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Obx(
                          () => Lottie.asset(
                            'assets/animation/wave.json',
                            height: 70,
                            animate: newsController.isSpeaking.value,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 20),

                // Description
                Row(
                  children: [
                    Flexible(
                      child: Text(
                        news.description ??
                            '''Which types of work are subject to copyright? Copyright ownership gives the owner the exclusive right to use the work...''',
                        style: TextStyle(fontSize: 18, color: Colors.white),
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
