import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:new_project1/utils/routes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        child: SingleChildScrollView(
      child: Column(
        children: [
          Image.asset("assets/images/login_image.png", fit: BoxFit.cover),
          SizedBox(height: 20.0),
          Text("LOGIN HERE",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.deepPurpleAccent,
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
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, MyRoutes.homeRoute);
                  },
                  child: Text("LOGIN",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                  style: TextButton.styleFrom(minimumSize: Size(200, 50)),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
