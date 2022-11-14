import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:new_project1/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
        child: SingleChildScrollView(
      child: Column(
        children: [
          Image.asset("assets/images/login_image.png", fit: BoxFit.cover),
          SizedBox(height: 20.0),
          Text("Welcome $name",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.lightGreen,
                fontSize: 24,
              )),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 40.0, horizontal: 100.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter your name",
                    labelText: "Username",
                  ),
                  onChanged: (value) {
                    name = value;
                    setState(() {});
                  },
                ),
                SizedBox(height: 20.0),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Enter password",
                    labelText: "Password",
                  ),
                ),
                SizedBox(height: 50.0),
                InkWell(
                  onTap: () async {
                    setState(() {
                      changeButton = true;
                    });
                    await Future.delayed(Duration(seconds: 1));
                    Navigator.pushNamed(context, MyRoutes.homeRoute);
                  },
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    width: changeButton ? 50 : 200,
                    height: 50,
                    alignment: Alignment.center,
                    child: changeButton
                        ? Icon(Icons.done)
                        : Text(
                            "LOGIN",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                    decoration: BoxDecoration(
                        color: Colors.lightGreen,
                        borderRadius:
                            BorderRadius.circular(changeButton ? 50 : 8)),
                  ),
                ),
                // ElevatedButton(
                //   onPressed: () {
                //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                //   },
                //   child: Text("LOGIN",
                //       style: TextStyle(
                //           color: Colors.white, fontWeight: FontWeight.bold)),
                //   style: TextButton.styleFrom(minimumSize: Size(200, 50)),
                // ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
