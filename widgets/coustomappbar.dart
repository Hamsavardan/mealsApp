import 'package:flutter/material.dart';

class CoustomerAppBar extends StatelessWidget {
  const CoustomerAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      flexibleSpace: Container(
        height: 140,
        child: Stack(
          children: [
            Container(
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: <Color>[Colors.lightGreen, Colors.black])),
                child: Positioned.fill(
                  child: Align(
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {
                            Scaffold.of(context).openDrawer();
                          },
                          icon: Icon(
                            Icons.menu,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "Meals App",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        IconButton(
                            onPressed: null,
                            icon: Icon(
                              Icons.notifications,
                              color: Colors.white,
                            )),
                      ],
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
