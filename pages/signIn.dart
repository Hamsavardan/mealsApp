import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:meals_app/pages/homePage.dart';
// import 'package:meals_app/const.dart';
import 'package:meals_app/pages/register%20Page.dart';

class SignIn extends StatefulWidget {
  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  signin() {
    FirebaseAuth.instance
        .signInWithEmailAndPassword(
            email: emailController.text, password: passwordController.text)
        .then((value) {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => HomePage(),
      ));
    });
  }

  bool visible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          "Signin",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          child: TextFormField(
            controller: emailController,
            decoration: InputDecoration(
              hintText: "EMAIL ID",
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          child: TextFormField(
            controller: passwordController,
            obscureText: visible,
            decoration: InputDecoration(
              hintText: "Password",
              suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      visible = !visible;
                    });
                  },
                  icon:
                      Icon(visible ? Icons.visibility_off : Icons.visibility)),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
            ),
          ),
        ),
        Align(
            alignment: Alignment.centerRight,
            child: TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ForgetPassword(),
                  ));
                },
                child: Text("FORGET PASSWORD?"))),
        ElevatedButton(
            onPressed: () {
              signin();
            },
            child: Text("LOG IN")),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Already have an account?"),
            TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => RegisterPage(),
                  ));
                },
                child: Text("Sign up")),
          ],
        ),
      ]),
    ));
  }
}

class ForgetPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Forgot password"), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              decoration: InputDecoration(
                  hintText: " enter the E mail address",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
            SizedBox(
              height: 10,
            ),
            MaterialButton(
              onPressed: () {},
              child: Text('Reset Password'),
              shape:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              color: Colors.pink,
            ),
          ],
        ),
      ),
    );
  }
}
