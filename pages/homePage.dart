import 'package:flutter/material.dart';
import 'package:meals_app/widgets/bottombar.dart';
import 'package:meals_app/widgets/coustomappbar.dart';
import 'package:meals_app/widgets/drawer.dart';
import 'package:meals_app/widgets/meal_item.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map<String, String>> meals = [
    {
      "image": "assets/images/biriyani.jpg",
      "time": "2hrs",
      "category": "junk food",
      "title": "biriyani",
      "task": "hard"
    },
    {
      "image":
          "assets/images/exploding-burger-with-vegetables-melted-cheese-black-background-generative-ai.jpg",
      "time": "2hrs",
      "category": "junk food",
      "title": "burger",
      "task": "hard"
    },
    {
      "image": "assets/images/creamy_mushroom_farfalle-3.jpg",
      "time": "2hrs",
      "category": "junk food",
      "title": "pasta",
      "task": "hard"
    },
    {
      "image":
          "assets/images/delicious-turkey-or-chicken-sandwich-with-brie-or-royalty-free-image-1659637246.jpg",
      "time": "2hrs",
      "category": "junk food",
      "title": "sandwich",
      "task": "hard"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: PreferredSize(
              preferredSize: Size(100, 65), child: CoustomerAppBar()),
          drawer: Drawers(),
          body: ListView.builder(
            itemCount: meals.length,
            itemBuilder: (context, index) => MealItem(meals: meals[index]),
          ),
          bottomNavigationBar: BottomBar(index: 1)),
    );
  }
}
