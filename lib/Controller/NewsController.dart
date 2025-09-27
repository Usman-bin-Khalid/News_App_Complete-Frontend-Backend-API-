import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:news_app/Model/NewsModel.dart';

class NewsController extends GetxController {
  RxList<NewsModel> trendingNewsList = <NewsModel>[].obs;
  RxList<NewsModel> newsForYouList = <NewsModel>[].obs;

  @override
  void onInit() {
    super.onInit();
 
    getTrendingNews();
    getNewsForYou();
  }

  Future<void> getTrendingNews() async {
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
  }

  Future<void> getNewsForYou() async {
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

        print(response);
      } else {
        print("Something went wrong in trending news");
      }
    } catch (e) {
      print(e);
    }
  }
}
