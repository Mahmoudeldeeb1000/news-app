import 'package:flutter/material.dart';
import 'package:newsapptharwat/features/home/views/Category_view.dart';
import 'package:newsapptharwat/models/category_model.dart';

import '../../../core/util/app_images.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key,required this.category});
  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return
      GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return CategoryView(
              category: category.categoryname,
            );
          },));
        },
        child: Padding(
          padding: const EdgeInsets.only(right: 16),
          child: Container(
            height: 85,
            width: 160,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(category.imagename)
                )
            ),
            child: Center(
              child: Text(
                  category.categoryname,style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      );
  }
}
