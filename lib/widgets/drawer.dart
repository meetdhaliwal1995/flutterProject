import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    String imgUrl = "https://picsum.photos/id/103/2592/1936";
    return Drawer(
      child: Container(
        color: Colors.red,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                margin: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  accountName: const Text("Manjit Singh"),
                  accountEmail: const Text("dhaliwal20825@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(imgUrl),
                  ),
                )),
            const ListTile(
              title: Text(
                "Home",
                textScaleFactor: 1.1,
                style: TextStyle(color: Colors.white),
              ),
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
            ),
            const ListTile(
              title: Text(
                "Name",
                textScaleFactor: 1.1,
                style: TextStyle(color: Colors.white),
              ),
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
            ),
            const ListTile(
              title: Text(
                "Email",
                textScaleFactor: 1.1,
                style: TextStyle(color: Colors.white),
              ),
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
