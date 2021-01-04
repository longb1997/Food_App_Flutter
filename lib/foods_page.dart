import 'package:flutter/material.dart';
import 'package:food_app/models/Category.dart';
import 'package:food_app/models/Food.dart';
import 'package:food_app/detail_food_page.dart';
import 'package:food_app/models/fake_data.dart';

// ignore: must_be_immutable
class FoodsPage extends StatelessWidget {
  static const String routeName = '/FoodsPage';
  Category category;

  FoodsPage({this.category});

  @override
  Widget build(BuildContext context) {
    Map<String, Category> arguments = ModalRoute.of(context).settings.arguments;
    this.category = arguments['category'];

    List<Food> foods = FAKE_FOODS
        .where((element) => element.categoryId == this.category.id)
        .toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Food\'s page',
          style: TextStyle(fontWeight: FontWeight.normal),
        ),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: foods.length,
          itemBuilder: (context, index) {
            Food food = foods[index];
            return InkWell(
              onTap: (){
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) => DetailFoodPage(food: food)
                  )
                );
              },
              child: Stack(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(20),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      clipBehavior: Clip.hardEdge,
                      child: Center(
                        child: Image.network('${food.urlImage}'),
                      ),
                    ),
                  ),
                  Positioned(top: 30, left: 30,
                    child: Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Colors.black45,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.white, width: 2)
                      ),
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.timer, color: Colors.white, size: 25),
                          Text('${food.duration.inMinutes} minutes', style: TextStyle(fontSize: 18, color: Colors.white),)
                        ],
                      ),
                    ),),
                  Positioned(top: 30, right: 30,
                    child: Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Colors.teal,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.white, width: 2)
                      ),
                      child: Row(
                        children: <Widget>[
                          Text('${food.complexity.toString().split('.').last}', style: TextStyle(fontSize: 16, color: Colors.black),)
                        ],
                      ),
                    )),
                  Positioned(bottom: 30, right: 30,
                    child: Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Colors.black26,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.white, width: 2)
                      ),
                      child: Row(
                        children: <Widget>[
                          Text('${food.name}', style: TextStyle(fontSize: 16, color: Colors.white),)
                        ],
                      ),
                    ))
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
