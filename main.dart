import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:meals_app/pages/splashScreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: ("MealsApp"),
        theme: ThemeData(
            colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.pink)
                .copyWith(secondary: Colors.amber)),
        home: Splash());
  }
}
