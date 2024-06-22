import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:newsapptharwat/core/util/app_images.dart';
import 'package:newsapptharwat/features/home/widgets/category_card.dart';
import 'package:newsapptharwat/features/home/widgets/category_listview.dart';
import 'package:newsapptharwat/features/home/widgets/new_listView.dart';
import 'package:newsapptharwat/features/home/widgets/news_tile.dart';

import '../widgets/new_list_view_bulder.dart';


class Homescreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     resizeToAvoidBottomInset: false,
     appBar: AppBar(
       centerTitle: true,
       title: Row(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Text("news"),Text("cloud",style: TextStyle( color: Colors.orange)),
         ],
       ),
     ),
     body:Padding(
       padding: const EdgeInsets.symmetric(horizontal: 16),
       child: CustomScrollView(
         physics: BouncingScrollPhysics(),
         slivers: [
           SliverToBoxAdapter(
             child: CategoryListView(),
           ),
           SliverToBoxAdapter(child: SizedBox(height: 30,)),
           SliverList(delegate: SliverChildBuilderDelegate(
             childCount: 10,
                (context,index){
                 return NewsListViewBulder(category: "general",);
               }
           )
           ),

         ],
       ),
       // child: Column(
       //   children: [
       //     CategoryListView(),
       //    SizedBox(height: 30,),
       //    Expanded(
       //        child: NewListView())
       //   ],
       // ),
     )
   );
  }
}

