import 'package:flutter/material.dart';
import 'package:food_app/foods_page.dart';
import 'package:food_app/models/Category.dart';

class CategoryItem extends StatelessWidget {
  final Category category;
  CategoryItem({this.category});

  @override
  Widget build(BuildContext context) {

    Color _color = this.category.color;

    return InkWell(
      onTap: (){
        print('tapped category item: ${this.category.content}');
        // Navigator.of(context).push(
        //   MaterialPageRoute(
        //     builder: (context) => FoodsPage(category: this.category),
        //   )
        // ); //way no.1
        Navigator.pushNamed(context, FoodsPage.routeName, arguments: {'category': this.category});
      },
      splashColor: Colors.deepPurple,
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(this.category.content, style: Theme.of(context).textTheme.headline6)
          ],
        ),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  _color.withOpacity(0.6),
                  _color
                ],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft
            ),
            color: _color,
            borderRadius: BorderRadius.circular(20)
        ),
      ),
    );
  }
}