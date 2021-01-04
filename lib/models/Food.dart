import 'dart:math';

import 'package:flutter/material.dart';

class Food {
  int id;
  String name;
  String urlImage;
  Duration duration;
  Complexity complexity;

  List<String> ingredients = List<String>();
  int categoryId;

  Food({
      @required this.id,
      @required this.name,
      @required this.urlImage,
      this.duration,
      this.complexity,
      this.ingredients,
      this.categoryId
  }){
    this.id = new Random().nextInt(200);
  }
}

enum Complexity { Simple, Medium, Hard }
