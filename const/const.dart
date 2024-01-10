import 'package:flutter/material.dart';

const themeGradient = LinearGradient(
    colors: [themeColorDark, themeColorLight],
    begin: Alignment.topRight,
    end: Alignment.bottomLeft);
const themeColorDark = Colors.lightGreen;
const themeColorLight = Colors.black;
const greenColor = Color(535724);
const headingStyle =
    TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black45);
const subHadingStyle = TextStyle(fontSize: 10, color: Colors.black45);
const contentStyle = TextStyle(fontSize: 16, color: Colors.black);
const subContentStyle = TextStyle(fontSize: 14, color: Colors.black45);
var bar = AppBar(
  title: Text("Meals App"),
  centerTitle: true,
  actions: [
    IconButton(
        onPressed: null,
        icon: Icon(
          Icons.notifications,
          color: Colors.white30,
        ))
  ],
);
