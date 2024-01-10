import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  signup() {
    FirebaseAuth.instance
        .createUserWithEmailAndPassword(
            email: emailController.text, password: passwordController.text)
        .then((value) {
      print("user uid ${value.user!.uid}");
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              "Register",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              child: Container(
                height: 150,
                width: 150,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.cloud_upload_outlined),
                    Text("upload image")
                  ],
                ),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.black,
                    )),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "User Name",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                  hintText: "Email id",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: TextFormField(
                controller: passwordController,
                decoration: InputDecoration(
                  hintText: " Password",
                  suffixIcon: Icon(Icons.remove_red_eye),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Conform password",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  signup();
                },
                child: Text("Register")),
            Padding(
              padding: const EdgeInsets.all(72),
              child: Row(
                children: [
                  Text("Already have an account"),
                  TextButton(onPressed: () {}, child: Text("Sign up")),
                ],
              ),
            ),
          ]),
        ),
      )),
    );
  }
}
