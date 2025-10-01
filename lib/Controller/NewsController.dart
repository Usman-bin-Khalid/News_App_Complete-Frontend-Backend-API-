import 'dart:convert';

import 'package:flutter_tts/flutter_tts.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:news_app/Model/NewsModel.dart';

class NewsController extends GetxController {
  RxList<NewsModel> trendingNewsList = <NewsModel>[].obs;
  RxList<NewsModel> newsForYouList = <NewsModel>[].obs;
  RxList<NewsModel> newsForYou5 = <NewsModel>[].obs;
  RxList<NewsModel> appleNewsList = <NewsModel>[].obs;
  RxList<NewsModel> apple5News = <NewsModel>[].obs;
  RxList<NewsModel> businessNewsList = <NewsModel>[].obs;
  RxList<NewsModel> business5News = <NewsModel>[].obs;
  RxList<NewsModel> wallStreetNewsList = <NewsModel>[].obs;
  RxList<NewsModel> wallStreet5News = <NewsModel>[].obs;
  RxBool isTrendingNewsLoading = false.obs;
  RxBool isForNewsLoading = false.obs;
  RxBool isAppleNewsLoading = false.obs;
  RxBool isBusinessNewsLoading = false.obs;
  RxBool isWallStreetNewsLoading = false.obs;
  RxBool isSpeaking = false.obs;
  FlutterTts flutterTts = FlutterTts();

  @override
  void onInit() {
    super.onInit();

    getTrendingNews();
    getNewsForYou();
    getAppleNews();
    getBusinessNews();
    getWallStreetNews();
    // Listen to TTS events
    flutterTts.setStartHandler(() {
      isSpeaking.value = true;
    });

    flutterTts.setCompletionHandler(() {
      isSpeaking.value = false;
    });

    flutterTts.setCancelHandler(() {
      isSpeaking.value = false;
    });

    flutterTts.setErrorHandler((msg) {
      isSpeaking.value = false;
    });
  }

  Future<void> getTrendingNews() async {
    isTrendingNewsLoading.value = true;
    var baseURL =
        'https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=f8412d378fc34aea8112fbcc01478d93';
    try {
      var response = await http.get(Uri.parse(baseURL));

      if (response.statusCode == 200) {
        print(response.body);
        var body = jsonDecode(response.body);
        var articles = body['articles'];
        for (var news in articles) {
          trendingNewsList.add(NewsModel.fromJson(news));
        }

        print(response);
      } else {
        print("Something went wrong in trending news");
      }
    } catch (e) {
      print(e);
    }
    isTrendingNewsLoading.value = false;
  }

  Future<void> getNewsForYou() async {
    isForNewsLoading.value = true;
    var baseURL =
        'https://newsapi.org/v2/everything?domains=wsj.com&apiKey=f8412d378fc34aea8112fbcc01478d93';
    try {
      var response = await http.get(Uri.parse(baseURL));

      if (response.statusCode == 200) {
        print(response.body);
        var body = jsonDecode(response.body);
        var articles = body['articles'];
        for (var news in articles) {
          newsForYouList.add(NewsModel.fromJson(news));
        }
        newsForYou5.value = newsForYouList.sublist(0, 6).obs;

        print(response);
      } else {
        print("Something went wrong in trending news");
      }
    } catch (e) {
      print(e);
    }
    isForNewsLoading.value = false;
  }

  Future<void> getAppleNews() async {
    isAppleNewsLoading.value = true;
    var baseURL =
        'https://newsapi.org/v2/everything?q=apple&from=2025-09-24&to=2025-09-24&sortBy=popularity&apiKey=f8412d378fc34aea8112fbcc01478d93';
    try {
      var response = await http.get(Uri.parse(baseURL));

      if (response.statusCode == 200) {
        print(response.body);
        var body = jsonDecode(response.body);
        var articles = body['articles'];
        for (var news in articles) {
          appleNewsList.add(NewsModel.fromJson(news));
        }
        apple5News.value = appleNewsList.sublist(0, 6).obs;

        print(response);
      } else {
        print("Something went wrong in trending news");
      }
    } catch (e) {
      print(e);
    }
    isAppleNewsLoading.value = false;
  }

  Future<void> getBusinessNews() async {
    isBusinessNewsLoading.value = true;
    var baseURL =
        'https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=f8412d378fc34aea8112fbcc01478d93';
    try {
      var response = await http.get(Uri.parse(baseURL));

      if (response.statusCode == 200) {
        print(response.body);
        var body = jsonDecode(response.body);
        var articles = body['articles'];
        for (var news in articles) {
          businessNewsList.add(NewsModel.fromJson(news));
        }
        business5News.value = businessNewsList.sublist(0, 6).obs;

        print(response);
      } else {
        print("Something went wrong in trending news");
      }
    } catch (e) {
      print(e);
    }
    isBusinessNewsLoading.value = false;
  }

  Future<void> getWallStreetNews() async {
    isWallStreetNewsLoading.value = true;
    var baseURL =
        'https://newsapi.org/v2/everything?domains=wsj.com&apiKey=f8412d378fc34aea8112fbcc01478d93';
    try {
      var response = await http.get(Uri.parse(baseURL));

      if (response.statusCode == 200) {
        print(response.body);
        var body = jsonDecode(response.body);
        var articles = body['articles'];
        for (var news in articles) {
          wallStreetNewsList.add(NewsModel.fromJson(news));
        }
        wallStreet5News.value = wallStreetNewsList.sublist(0, 6).obs;

        print(response);
      } else {
        print("Something went wrong in trending news");
      }
    } catch (e) {
      print(e);
    }
    isWallStreetNewsLoading.value = false;
  }

  Future<void> searchNews(String search) async {
    isForNewsLoading.value = true;
    var baseURL =
        'https://newsapi.org/v2/everything?q=$search&apiKey=f8412d378fc34aea8112fbcc01478d93';
    try {
      var response = await http.get(Uri.parse(baseURL));

      if (response.statusCode == 200) {
        print(response.body);
        var body = jsonDecode(response.body);
        var articles = body['articles'];
        newsForYouList.clear();
        int i = 0;
        for (var news in articles) {
          i++;
          newsForYouList.add(NewsModel.fromJson(news));
          if (i == 10) {
            break;
          }
        }

        print(response);
      } else {
        print("Something went wrong in trending news");
      }
    } catch (e) {
      print(e);
    }
    isForNewsLoading.value = false;
  }

  Future<void> toggleSpeech(String text) async {
    if (isSpeaking.value) {
      await stop();
    } else {
      await speak(text);
    }
  }

  Future<void> speak(String text) async {
    await flutterTts.setLanguage("en-US");
    await flutterTts.setPitch(1);
    await flutterTts.setSpeechRate(0.6);
    await flutterTts.speak(text);
  }

  Future<void> stop() async {
    await flutterTts.stop();
  }
}
