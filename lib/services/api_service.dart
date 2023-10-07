import 'package:dio/dio.dart';
import 'package:news_app_3/models/article_model.dart';

class NewsService {
  final dio = Dio();
  String apiKey = '28b4581c32f945638a421ab3af2eef57';
  
  Future<List<ArticalModel>> getNews({required String category}) async {
    Response response = await dio.get(
      'https://newsapi.org/v2/top-headlines?category=$category&country=us&apiKey=$apiKey',
    );

    Map<String,dynamic> jsonData=response.data;
    List<dynamic>articles=jsonData['articles'];
    List<ArticalModel>articalsList=[];

    for (var article in articles) {
      ArticalModel articalModel=ArticalModel.fromJson(article);
      articalsList.add(articalModel);
    }
    return articalsList;
  }
}

