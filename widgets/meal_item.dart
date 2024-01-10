import 'package:flutter/material.dart';
import 'package:meals_app/const/const.dart';

class MealItem extends StatelessWidget {
  final meals;

  const MealItem({super.key, required this.meals});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => Design(),
          ));
        },
        child: Card(
          elevation: 10,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.3,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(meals["image"]),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15))),
                  ),
                  Positioned.fill(
                      bottom: 10,
                      right: 10,
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          padding: EdgeInsets.all(5),
                          color: Colors.black54,
                          width: MediaQuery.of(context).size.width * 0.5,
                          child: Text(
                            meals["title"],
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      )),
                  Positioned(
                      right: 10,
                      top: 10,
                      child: Align(
                          alignment: Alignment.topRight,
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 23,
                            child: Icon(Icons.favorite_border_outlined,
                                color: Colors.pink),
                          )))
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.access_time_sharp),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          meals["time"],
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.category_outlined),
                        SizedBox(
                          width: 5,
                        ),
                        Text(meals["category"],
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold)),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.announcement_outlined,
                          color: Colors.black,
                        ),
                        SizedBox(width: 5),
                        Text(
                          meals["task"],
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

class Design extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: bar,
      body: SingleChildScrollView(
        child: Column(children: [
          Stack(
            children: [
              Container(
                  height: MediaQuery.of(context).size.height * 0.4,
                  width: MediaQuery.of(context).size.width * 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("assets/images/biriyani.jpg"),
                    ),
                  )),
              Positioned.fill(
                right: 10,
                bottom: 10,
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.favorite_outline_rounded,
                        color: Colors.pink,
                      )),
                ),
              )
            ],
          ),
          SizedBox(height: 10),
          Text(
            "INGREADIENTS",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(50),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.15,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(10)),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Card(
                      child: Container(
                        child: Text("fdsufjgl"),
                        width: double.infinity,
                      ),
                      color: Colors.yellow,
                    ),
                    Card(
                      child: Container(
                        child: Text("fdsufjgl"),
                        width: double.infinity,
                      ),
                      color: Colors.yellow,
                    ),
                    Card(
                      child: Container(
                        child: Text("fdsufjgl"),
                        width: double.infinity,
                      ),
                      color: Colors.yellow,
                    ),
                    Card(
                      child: Container(
                        child: Text("fdsufjgl"),
                        width: double.infinity,
                      ),
                      color: Colors.yellow,
                    ),
                    Card(
                      child: Container(
                        child: Text("fdsufjgl"),
                        width: double.infinity,
                      ),
                      color: Colors.yellow,
                    ),
                    Card(
                      child: Container(
                        child: Text("fdsufjgl"),
                        width: double.infinity,
                      ),
                      color: Colors.yellow,
                    )
                  ],
                ),
              ),
            ),
          ),
          Text(
            "STEPS",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Container(
            padding: EdgeInsets.all(10),
            height: MediaQuery.of(context).size.height * 0.15,
            width: MediaQuery.of(context).size.width * 0.65,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(10)),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Card(
                    elevation: 5,
                    child: Container(
                      child: ListTile(
                        leading: CircleAvatar(
                            child: Text(
                          "#1",
                          style: TextStyle(color: Colors.white),
                        )),
                        title: Text(
                          "asjhbgfjadbf",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      width: double.infinity,
                    ),
                  ),
                  Card(
                    elevation: 5,
                    child: Container(
                      child: ListTile(
                        leading: CircleAvatar(
                            child: Text(
                          "#2",
                          style: TextStyle(color: Colors.white),
                        )),
                        title: Text(
                          "asjhbgfjadbf",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      width: double.infinity,
                    ),
                  ),
                  Card(
                    elevation: 5,
                    child: Container(
                      child: ListTile(
                        leading: CircleAvatar(
                            child: Text(
                          "#3",
                          style: TextStyle(color: Colors.white),
                        )),
                        title: Text(
                          "asjhbgfjadbf",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      width: double.infinity,
                    ),
                  ),
                  Card(
                    elevation: 5,
                    child: Container(
                      child: ListTile(
                        leading: CircleAvatar(
                            child: Text(
                          "#4",
                          style: TextStyle(color: Colors.white),
                        )),
                        title: Text(
                          "asjhbgfjadbf",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      width: double.infinity,
                    ),
                  ),
                  Card(
                    elevation: 5,
                    child: Container(
                      child: ListTile(
                        leading: CircleAvatar(
                            child: Text(
                          "#5",
                          style: TextStyle(color: Colors.white),
                        )),
                        title: Text(
                          "asjhbgfjadbf",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      width: double.infinity,
                    ),
                  ),
                  Card(
                    elevation: 5,
                    child: Container(
                      child: ListTile(
                        leading: CircleAvatar(
                            child: Text(
                          "#6",
                          style: TextStyle(color: Colors.white),
                        )),
                        title: Text(
                          "asjhbgfjadbf",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      width: double.infinity,
                    ),
                  ),
                  Card(
                    elevation: 5,
                    child: Container(
                      child: ListTile(
                        leading: CircleAvatar(
                            child: Text(
                          "#7",
                          style: TextStyle(color: Colors.white),
                        )),
                        title: Text(
                          "asjhbgfjadbf",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      width: double.infinity,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Text(
            "Benifits",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Container(
            padding: EdgeInsets.all(10),
            height: MediaQuery.of(context).size.height * 0.15,
            width: MediaQuery.of(context).size.width * 0.65,
            child: Text(
                'kjkiilrjiljrlijeriljilrejilerjileriljlfrljlfjlfjljklejfklejklejljel'),
          )
        ]),
      ),
    );
  }
}
