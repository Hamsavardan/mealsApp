import 'package:flutter/material.dart';
import 'package:meals_app/const/const.dart';
import 'package:meals_app/widgets/meal_item.dart';

class RequestPage extends StatelessWidget {
  const RequestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> meals = [
      {
        "image": "assets/images/biriyani.jpg",
        "time": "2hrs",
        "category": "junk food",
        "title": "biriyani",
        "task": "hard"
      },
      {
        "image": "assets/images/biriyani.jpg",
        "time": "2hrs",
        "category": "junk food",
        "title": "biriyani",
        "task": "hard"
      },
      {
        "image": "assets/images/biriyani.jpg",
        "time": "2hrs",
        "category": "junk food",
        "title": "biriyani",
        "task": "hard"
      },
      {
        "image": "assets/images/biriyani.jpg",
        "time": "2hrs",
        "category": "junk food",
        "title": "biriyani",
        "task": "hard"
      }
    ];
    return Scaffold(
      appBar: bar,
      body: DefaultTabController(
        initialIndex: 0,
        length: 2,
        child: Column(
          children: [
            TabBar(
              tabs: [
                Tab(
                  child: Text(
                    "Request",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                Tab(
                  child: Text("Apporoved Items",
                      style: TextStyle(color: Colors.black)),
                )
              ],
            ),
            Container(
                height: MediaQuery.of(context).size.height * 0.78,
                width: MediaQuery.of(context).size.width,
                child: TabBarView(
                  children: [
                    Center(child: Text("NO DATA FOUND")),
                    ListView.builder(
                      itemCount: meals.length,
                      itemBuilder: (context, index) =>
                          MealItem(meals: meals[index]),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
