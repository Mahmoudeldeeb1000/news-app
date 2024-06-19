import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newsapptharwat/features/home/widgets/new_listView.dart';

import '../../../models/article_model.dart';
import '../../../services/news_service.dart';

class NewsListViewBulder extends StatefulWidget {
  const NewsListViewBulder({super.key,});

  @override
  State<NewsListViewBulder> createState() => _NewsListViewBulderState();
}

class _NewsListViewBulderState extends State<NewsListViewBulder> {
  bool isloading = true;
  List<ArticleModel> articles =[];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getGeneralNews();
  }
  Future<void> getGeneralNews() async{
    articles = await NewsService(Dio()).getNews();
    isloading = false;
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return isloading? Center(child: CircularProgressIndicator()) : articles.isNotEmpty ? NewListView(
      articles: articles,
    ): Text("opps there was an error, please try again");
  }
}