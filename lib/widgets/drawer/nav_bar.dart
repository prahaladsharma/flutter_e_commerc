import 'package:flutter/material.dart';

import '../../ui/account.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      //for open drawer right side, user endDrawer instead of Drawer.
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
                color: Colors.blue,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        'https://oflutter.com/wp-content/uploads/2021/02/profile-bg3.jpg'))),
            accountName: Text(
              'Prahalad Sharma',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            accountEmail: Text(
              'prahaladsharma4u@gmail.com',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                  'https://oflutter.com/wp-content/uploads/2021/02/girl-profile.png',
                  fit: BoxFit.cover,
                  width: 90,
                  height: 90,
                ),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: const Text('Account'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Account()));
            },
          ),
          AboutListTile(
            icon: Icon(Icons.info),
            child: Text('About Info'),
            applicationIcon: Icon(Icons.local_play),
            applicationName: 'My Shop',
            applicationVersion: '1.0.0',
            applicationLegalese: '@c 2020 Company',
            aboutBoxChildren: [
              //content goes here...
            ],
          )
        ],
      ),
    );
  }
}
