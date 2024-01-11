import 'package:flutter/material.dart';

class DrawerDemo extends StatefulWidget {
  const DrawerDemo({super.key});

  @override
  State<DrawerDemo> createState() => _DrawerDemoState();
}

class _DrawerDemoState extends State<DrawerDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      drawer: Drawer(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomRight: Radius.circular(90))),
        backgroundColor: Colors.lightBlueAccent,
        width: 250,
        child: ListView(
          children: [
            const DrawerHeader(
              padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
              accountName: Text("Suhaib Ahmed"),
              accountEmail: Text("abc123@gmail.com"),
              currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "SRC")),
            )),
            ListTile(
              leading: const Icon(Icons.home, color: Colors.white),
              title: const Text("Home"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.share, color: Colors.white),
              title: const Text("Share"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.settings, color: Colors.white),
              title: const Text("Settings"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.contact_emergency, color: Colors.white),
              title: const Text("Contact"),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
