import 'package:flutter/material.dart';
import 'package:newsapptharwat/models/article_model.dart';
import 'package:webview_flutter/webview_flutter.dart';

class NewsTile extends StatefulWidget {
  const NewsTile({super.key, required this.articleModel});
  final ArticleModel articleModel;

  @override
  State<NewsTile> createState() => _NewsTileState();
}

class _NewsTileState extends State<NewsTile> {
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..loadRequest(
        Uri.parse(widget.articleModel!.url??""),
      );
  }

  @override
  Widget build(BuildContext context) {
    if(widget.articleModel.image==null ||
    widget.articleModel.des==null ||
    widget.articleModel==null
    ){
      return Container();
    }
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => WebViewWidget(controller: controller)),
        );
      },
      child: Container(
        child: Column(
           mainAxisSize: MainAxisSize.min,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child:widget.articleModel.image != null? Image.network(widget.articleModel.image!
              ,height: 200,width: double.infinity,
                fit: BoxFit.cover,
              ):Text("Image not founded"),
            ),
            SizedBox(height: 12,),
            Text(widget.articleModel.title,
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
            Text(widget.articleModel.des??"",
            maxLines: 2,
              style: TextStyle(fontSize: 14,color: Colors.grey),
            )
          ],
        ),
      ),
    );
  }
}
