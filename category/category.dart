import 'package:flutter/material.dart';
import 'package:meals_app/category/categoryItem.dart';
import 'package:meals_app/const/const.dart';
import 'package:meals_app/widgets/bottombar.dart';

class Category extends StatelessWidget {
  const Category({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: bar,
      body: SingleChildScrollView(
        child: GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 95 / 120,
          ),
          itemBuilder: (context, index) => CategoryItem(),
          //physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 6,
        ),
      ),
      bottomNavigationBar: BottomBar(index: 2),
    );
  }
}
