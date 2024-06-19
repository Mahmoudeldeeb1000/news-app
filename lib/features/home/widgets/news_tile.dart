import 'package:flutter/material.dart';
import 'package:newsapptharwat/models/article_model.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articleModel});
  final ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    return Column(
       mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child:articleModel.image != null? Image.network(articleModel.image!
          ,height: 200,width: double.infinity,
            fit: BoxFit.cover,
          ):Text("Image not founded"),
        ),
        SizedBox(height: 12,),
        Text(articleModel.title,
        maxLines: 3,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.black87,
            fontSize:20,
          ),
        ),
        SizedBox(
          height:8,
        ),
        Text(articleModel.des??"",
        maxLines: 2,
          style: TextStyle(fontSize: 14,color: Colors.grey),
        )
      ],
    );
  }
}
