import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newsapptharwat/features/home/widgets/new_listView.dart';

import '../../../models/article_model.dart';
import '../../../services/news_service.dart';

class NewsListViewBulder extends StatefulWidget {
  const NewsListViewBulder({super.key, required this.category,});
  final String category;


  @override
  State<NewsListViewBulder> createState() => _NewsListViewBulderState();
}

class _NewsListViewBulderState extends State<NewsListViewBulder> {
  var future;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    future= NewsService(Dio(),).getNews( category: widget.category);
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder <List<ArticleModel>>(
      future:future ,

        builder: (context, snapshot) {
          if(snapshot.hasData){
            return NewListView(
                articles: snapshot.data ?? []
            );
          } else if (snapshot.hasError){
            return Text("opps there was an error, please try again");
          }else
          {
           return Center(child: CircularProgressIndicator());
          }
        },
    );
  }
}