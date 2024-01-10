import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:meals_app/componenets/upload.dart';
import 'package:meals_app/const/const.dart';
import 'package:meals_app/pages/UploadPage.dart';
import 'package:meals_app/pages/requestPage.dart';
import 'package:meals_app/pages/signIn.dart';

class Drawers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(200),
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white30,
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                              "assets/images/chaitanya-pillala-zDDdoYqQ64U-unsplash.jpg"))),
                ),
                Text(
                  "hamsa",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                Text("jacktoisonhams@gmail.com",
                    style: TextStyle(color: Colors.white, fontSize: 15))
              ],
            ),
            decoration: BoxDecoration(
              borderRadius:
                  BorderRadius.only(bottomRight: Radius.circular(100)),
              gradient: themeGradient,
            ),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(
              Icons.account_box,
              color: Colors.black,
            ),
            title: Text(
              "My account",
              style: TextStyle(fontSize: 15),
            ),
          ),
          ExpansionTile(
            title: Text("admin"),
            leading: Icon(
              Icons.person,
              color: Colors.black,
            ),
            children: [
              ListTile(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => UpLoadPage(),
                  ));
                },
                leading: Icon(
                  Icons.category,
                  color: Colors.black,
                ),
                title: Text(
                  "Add category",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => RequestPage(),
                  ));
                },
                leading: Icon(
                  Icons.request_page_rounded,
                  color: Colors.black,
                ),
                title: Text(
                  "Request page",
                  style: TextStyle(fontSize: 15),
                ),
              )
            ],
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => RequestPage(),
              ));
            },
            leading: Icon(
              Icons.category,
              color: Colors.black,
            ),
            title: Text(
              "category",
              style: TextStyle(fontSize: 15),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => Upload(),
              ));
            },
            leading: Icon(
              Icons.shopping_bag_outlined,
              color: Colors.black,
            ),
            title: Text(
              "Upload",
              style: TextStyle(fontSize: 15),
            ),
          ),
          ListTile(
              onTap: () {},
              leading: Icon(
                Icons.headphones,
                color: Colors.black,
              ),
              title: Text(
                "Help&support",
                style: TextStyle(fontSize: 15),
              )),
          ListTile(
            onTap: () {
              FirebaseAuth.instance
                  .signOut()
                  .then((value) => Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SignIn(),
                      )));
            },
            leading: Icon(
              Icons.login_sharp,
              color: Colors.black,
            ),
            title: Text(
              "logOut",
              style: TextStyle(fontSize: 15),
            ),
          )
        ],
      ),
    );
  }
}
