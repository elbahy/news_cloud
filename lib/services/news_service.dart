import 'package:dio/dio.dart';
import 'package:news_cloud/models/article_model.dart';

class NewsService {
  NewsService({
    required this.dio,
  });
  final Dio dio;

  final String apiKey = 'b3844bf6ff15435f8e60efd225e8bfb6';

  Future<List<ArticleModel>> getNews() async {
    Response response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=$apiKey&category=general');
    Map<String, dynamic> jsonData = response.data;
    List<dynamic> articles = jsonData['articles'];
    List<ArticleModel> articlesList = [];
    for (var element in articles) {
      ArticleModel articleModel = ArticleModel(
        imageUrl: element['urlToImage'],
        title: element['title'],
        subtitle: element['content'],
      );
      articlesList.add(articleModel);
    }
    return articlesList;
  }
}
