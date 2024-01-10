import 'package:flutter/material.dart';
import 'package:meals_app/widgets/bottombar.dart';
import 'package:meals_app/widgets/coustomappbar.dart';

class Favourite extends StatelessWidget {
  const Favourite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(),
      appBar:
          PreferredSize(preferredSize: Size(100, 65), child: CoustomerAppBar()),
      bottomNavigationBar: BottomBar(index: 4),
    );
  }
}
