import 'package:flutter/material.dart';
import 'package:meals_app/widgets/bottombar.dart';
import 'package:meals_app/widgets/coustomappbar.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          PreferredSize(preferredSize: Size(100, 65), child: CoustomerAppBar()),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.3,
            decoration: BoxDecoration(
                color: Colors.black45,
                borderRadius:
                    BorderRadius.only(bottomRight: Radius.circular(150)),
                image: DecorationImage(
                    image: AssetImage(
                        "assets/images/WhatsApp Image 2023-04-08 at 10.57.09 AM.jpeg"),
                    fit: BoxFit.cover)),
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: ListTile(
                    leading: Icon(
                      Icons.person,
                      color: Colors.black,
                    ),
                    title: Text(
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                        "hamsa"),
                  ),
                ),
                Center(
                  child: ListTile(
                    leading: Icon(
                      Icons.password_sharp,
                      color: Colors.black,
                    ),
                    title: Text(
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                        "hamsavardan__7227"),
                  ),
                ),
                Center(
                  child: ListTile(
                    leading: Icon(
                      Icons.mail,
                      color: Colors.black,
                    ),
                    title: Text(
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                        "hamsavardan@gmail.com"),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            height: 10,
            color: Colors.black,
          ),
          SizedBox(
            height: 40,
          ),
          MaterialButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => EditPage(),
              ));
            },
            child: Text(style: TextStyle(color: Colors.white), "edit"),
            color: Colors.deepOrange,
          ),
        ],
      ),
      bottomNavigationBar: BottomBar(index: 5),
    );
  }
}

class EditPage extends StatefulWidget {
  const EditPage({Key? key}) : super(key: key);

  @override
  State<EditPage> createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  bool visible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(("Edit page"))),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Center(
                child: Text(
              "Edit page",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.pink),
            )),
          ),
          SizedBox(
            height: 10,
          ),
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
                        "assets/images/WhatsApp Image 2023-04-08 at 10.57.09 AM.jpeg"),
                  ))),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            decoration: InputDecoration(
                hintText: "Enter the user name ",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10))),
          ),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            decoration: InputDecoration(
                hintText: "Mail id",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10))),
          ),
          SizedBox(
            height: 10,
          ),
          TextFormField(
              obscureText: visible,
              decoration: InputDecoration(
                hintText: "PassWord",
                suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        visible = !visible;
                      });
                    },
                    icon: Icon(
                        visible ? Icons.visibility_off : Icons.visibility)),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              )),
          SizedBox(
            height: 20,
          ),
          MaterialButton(
            onPressed: () {},
            child: Text(
              "UPDATE",
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            color: Colors.pink,
          )
        ],
      ),
    );
  }
}
