import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:newsapptharwat/features/home/widgets/news_tile.dart';
import 'package:newsapptharwat/main.dart';
import 'package:newsapptharwat/models/article_model.dart';
import 'package:newsapptharwat/services/news_service.dart';

class NewListView extends StatelessWidget {
  const NewListView({super.key,  required this.articles});
  final List<ArticleModel> articles ;

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      shrinkWrap: true,
      physics: BouncingScrollPhysics(),
      itemCount: articles.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: NewsTile(
            articleModel:articles[index],),
        );
      },);
  }
}
