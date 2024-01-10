import 'package:flutter/material.dart';
import 'package:meals_app/Favourite.dart';
import 'package:meals_app/category/category.dart';
import 'package:meals_app/componenets/profile.dart';
import 'package:meals_app/componenets/search.dart';
import 'package:meals_app/pages/homePage.dart';

class BottomBar extends StatefulWidget {
  int index = 0;

  BottomBar({Key? key, required this.index}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10),
        color: Colors.white,
        height: MediaQuery.of(context).size.height * 0.08,
        width: double.infinity,
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          InkWell(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => HomePage()));
            },
            child: Column(
              children: [
                widget.index == 1
                    ? Icon(
                        Icons.home_outlined,
                        color: Colors.pink,
                      )
                    : Icon(Icons.home_outlined),
                widget.index == 1
                    ? Text("Home", style: TextStyle(color: Colors.pink))
                    : Text("Home")
              ],
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => Category(),
              ));
            },
            child: Column(
              children: [
                widget.index == 2
                    ? Icon(
                        Icons.account_balance_wallet_outlined,
                        color: Colors.pink,
                      )
                    : Icon(Icons.account_balance_wallet_outlined),
                widget.index == 2
                    ? Text(
                        "Category",
                        style: TextStyle(color: Colors.pink),
                      )
                    : Text("Category")
              ],
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Search()));
            },
            child: Column(
              children: [
                widget.index == 3
                    ? Icon(
                        Icons.search_off,
                        color: Colors.pink,
                      )
                    : Icon(Icons.search_off),
                widget.index == 3
                    ? Text(
                        "Search",
                        style: TextStyle(color: Colors.pink),
                      )
                    : Text("Search")
              ],
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => Favourite(),
              ));
            },
            child: Column(children: [
              widget.index == 4
                  ? Icon(
                      Icons.favorite_border_outlined,
                      color: Colors.pink,
                    )
                  : Icon(Icons.favorite_border_outlined),
              widget.index == 4
                  ? Text(
                      "Favorite",
                      style: TextStyle(color: Colors.pink),
                    )
                  : Text("Favorite")
            ]),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => Profile(),
              ));
            },
            child: Column(
              children: [
                widget.index == 5
                    ? Icon(
                        Icons.account_box_outlined,
                        color: Colors.pink,
                      )
                    : Icon(Icons.account_box_outlined),
                widget.index == 5
                    ? Text(
                        "Profile",
                        style: TextStyle(color: Colors.pink),
                      )
                    : Text("Profile")
              ],
            ),
          )
        ]));
  }
}
