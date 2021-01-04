import 'package:flutter/material.dart';
import 'package:food_app/models/Category.dart';
import 'package:food_app/models/Food.dart';

const FAKE_CATEGORIES = const [
  Category(id: 1, content: 'Rice', color: Colors.deepOrange),
  Category(id: 2, content: 'Pizza', color: Colors.teal),
  Category(id: 3, content: 'Cheese', color: Colors.red),
];

var FAKE_FOODS = [
  //array of food's objects
  Food(
      name: "sushi - 寿司",
      urlImage: "https://b.zmtcdn.com/data/pictures/3/3700023/ba50a5176f9b3abf84a4b734543474a2.jpg",
      duration: Duration(minutes:25),
      complexity: Complexity.Medium,
      ingredients: ['Sushi-meshi', 'Nori', 'Condiments'],
      categoryId: 1),
  Food(
      name: "Pizza tonda",
      urlImage: "https://b.zmtcdn.com/data/pictures/3/3700023/ba50a5176f9b3abf84a4b734543474a2.jpg",
      duration: Duration(minutes:15),
      complexity: Complexity.Hard,
      ingredients: ['Tomato sauce','Fontina cheese','Pepperoni','Onions','Mushrooms','pepperoncini'],
      categoryId: 2),
  Food(
      name: "Makizushi",
      urlImage: "https://b.zmtcdn.com/data/pictures/3/3700023/ba50a5176f9b3abf84a4b734543474a2.jpg",
      complexity: Complexity.Simple,
      duration: Duration(minutes:20),
      categoryId: 1),
  Food(
      name: "Tempura",
      urlImage: "https://b.zmtcdn.com/data/pictures/3/3700023/ba50a5176f9b3abf84a4b734543474a2.jpg",
      duration: Duration(minutes: 15),
      complexity: Complexity.Simple,
      categoryId: 1),
  Food(
      name: "Neapolitan pizza",
      urlImage: "https://b.zmtcdn.com/data/pictures/3/3700023/ba50a5176f9b3abf84a4b734543474a2.jpg",
      duration: Duration(minutes:20),
      complexity: Complexity.Medium,
      ingredients: ['Fontina cheese','Tomato sauce','Onions','Mushrooms'],
      categoryId: 2),
  Food(
      name: "Sashimi",
      urlImage: "https://b.zmtcdn.com/data/pictures/3/3700023/ba50a5176f9b3abf84a4b734543474a2.jpg",
      duration: Duration(hours: 1, minutes: 5),
      complexity: Complexity.Medium,
      categoryId: 1),
  Food(
      name: "Homemade Humburger",
      urlImage: "https://b.zmtcdn.com/data/pictures/3/3700023/ba50a5176f9b3abf84a4b734543474a2.jpg",
      duration: Duration(minutes: 20),
      complexity: Complexity.Hard,
      categoryId: 3),
];