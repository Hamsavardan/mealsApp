import 'package:flutter/material.dart';
import 'package:meals_app/widgets/bottombar.dart';

import '../widgets/coustomappbar.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          PreferredSize(preferredSize: Size(100, 65), child: CoustomerAppBar()),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
            child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Search",
                    suffixIcon: Icon(Icons.search_sharp),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30))))),
      ),
      bottomNavigationBar: BottomBar(index: 3),
    );
  }
}
