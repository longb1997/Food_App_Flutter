import 'package:flutter/material.dart';
import 'package:food_app/models/Food.dart';

class DetailFoodPage extends StatelessWidget {
  Food food;
  DetailFoodPage({this.food});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('${food.name}'),
      ),
      body: Column(
        children: <Widget>[
          Center(
            child: Image.network(food.urlImage),
          ),
          Text('Ingredients:'),
          Expanded(
          child: ListView.builder(
              itemCount: this.food.ingredients.length,
              itemBuilder: (context, index){
                String ingredient = this.food.ingredients[index];
                return ListTile(
                  leading: CircleAvatar(
                    child: Text('${index+1}'),
                  ),
                  title: Text(ingredient, style: TextStyle(fontSize: 20)),
                );
              }),
          )

        ],
      )
    );
  }
}