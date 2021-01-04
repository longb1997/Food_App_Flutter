import 'package:flutter/material.dart';
import 'package:food_app/category_item.dart';
import 'package:food_app/models/fake_data.dart';

class CategoryPage extends StatelessWidget {
  static const String routeName = '/CategoriesPage';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView(
      padding: EdgeInsets.all(12),
      children: FAKE_CATEGORIES.map((item){
        return CategoryItem(category: item,);
      }).toList(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3/2 ,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10
      ),
    );
  }
}