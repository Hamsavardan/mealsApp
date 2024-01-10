import 'package:flutter/material.dart';

class UpLoadPage extends StatelessWidget {
  const UpLoadPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container( width: double.infinity,
              height: 110,
              child: ExpansionTile(title: Text("Choose Category")))
        ],
      ),
    );
  }
}
