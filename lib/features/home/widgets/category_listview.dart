import 'package:flutter/cupertino.dart';
import 'package:newsapptharwat/core/util/app_images.dart';
import 'package:newsapptharwat/features/home/widgets/category_card.dart';
import 'package:newsapptharwat/models/category_model.dart';
class CategoryListView extends StatelessWidget {
   CategoryListView({super.key});
  final List<CategoryModel> categories =
      [
        CategoryModel(
            imagename: AppImages.Business,
            categoryname: "Business"),
        CategoryModel(
            imagename: AppImages.Entertainment,
            categoryname: "Entertainment"),
        CategoryModel(
            imagename: AppImages.general,
            categoryname: "general"),
        CategoryModel(
            imagename: AppImages.health,
            categoryname: "health"),
        CategoryModel(
            imagename: AppImages.science,
            categoryname: "science"),
        CategoryModel(
            imagename: AppImages.sport,
            categoryname: "sport"),
        CategoryModel(
            imagename: AppImages.technology,
            categoryname: "technology"),
      ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection:  Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CategoryCard(category: categories[index],);
        },
      ),
    );
  }
}