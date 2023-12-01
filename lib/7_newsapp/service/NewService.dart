import 'package:dio/dio.dart';
import 'package:news_app/7_newsapp/article_model.dart';

class NewService {
  final Dio dio;

  NewService(this.dio);

  Future<List<ArticleModel>> getNews({required String category}) async {
    try {
      var response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=f6a4093684454ce5b6f4ddfa678e585e&category=$category');
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];
      List<ArticleModel> articlesList = [];
      for (var article in articles) {
        ArticleModel articleModel = ArticleModel.fromjson(article);
        articlesList.add(articleModel);
      }
      return articlesList;
    } catch (e) {
      return [];
    }
    //اي حاجه العميله بتاخد وقت بنحطها جوه
    // try and catch
  }
}
