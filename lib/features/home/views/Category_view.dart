import 'package:flutter/material.dart';
import 'package:newsapptharwat/features/home/widgets/new_list_view_bulder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverList(delegate: SliverChildBuilderDelegate(
              childCount: 10,
                  (context,index){
                return NewsListViewBulder(category: category,);
              }
          )
          ),
        ],
      ),
    );
  }
}
