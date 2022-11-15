import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);
  final imageUrl =
      "https://image.shutterstock.com/image-vector/man-icon-vector-260nw-1040084344.jpg";

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      children: [
        DrawerHeader(
          padding: EdgeInsets.zero,
          child: UserAccountsDrawerHeader(
            margin: EdgeInsets.zero,
            accountName: Text("Apekshya"),
            accountEmail: Text("abc@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(imageUrl),
            ),
          ),
        ),
        ListTile(
            leading: Icon(CupertinoIcons.home),
            title: Text(
              "Home",
              textScaleFactor: 1.3,
            )),
        ListTile(
            leading: Icon(CupertinoIcons.profile_circled),
            title: Text(
              "My Profile",
              textScaleFactor: 1.3,
            )),
        ListTile(
            leading: Icon(CupertinoIcons.mail_solid),
            title: Text(
              "Contacts",
              textScaleFactor: 1.3,
            )),
      ],
    ));
  }
}
