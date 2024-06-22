import 'package:dio/dio.dart';
import 'package:newsapptharwat/models/article_model.dart';

class NewsService {
  final Dio dio;
  NewsService(this.dio);

   Future <List <ArticleModel>> getNews({ required String category}) async{

  try{
    var response = await dio.get('https://newsapi.org/v2/top-headlines?country=us&apiKey=e17218de00f444c7ac8af3a3ac519198&category=$category');
    var jesondata = response.data;
    List <dynamic> articles = jesondata['articles'];
    List <ArticleModel> articlelist =[];
    for ( var article in articles   ){

      ArticleModel articleModel = ArticleModel(
          image:article["urlToImage"] ,
          title: article["title"],
          des: article["description"]
      );
      articlelist.add(articleModel);
    }
    print(articlelist);
    return articlelist ;
  }
  catch(e){
    return[];
  }
  }
}