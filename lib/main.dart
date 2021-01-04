import 'package:flutter/material.dart';
import 'package:food_app/category_page.dart';
import 'package:food_app/foods_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/',
      routes: {
        '/FoodsPage': (context) => FoodsPage(),
        '/CategoriesPage': (context) => CategoryPage()
      },
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        fontFamily: 'Pacifico',
        textTheme: ThemeData.light().textTheme.copyWith(
          bodyText1: TextStyle(
            color: Color.fromRGBO(25, 52, 52, 1)
          ),
            bodyText2: TextStyle(
                color: Color.fromRGBO(20, 52, 52, 1)
            ),
           headline6: TextStyle(
             fontSize: 22,
             fontFamily: 'Pacifico',
             color: Colors.white
           )
        )
      ),

      home: HomeWidget(),
    );
  }
}

class HomeWidget extends StatelessWidget {
  const HomeWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Food\'s categories'),
      ),
      body: CategoryPage()
    );
  }
}