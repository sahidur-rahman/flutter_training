import 'package:flutter/material.dart';

class DrawerWork extends StatelessWidget {
  const DrawerWork({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(child: Text('S'),),
              accountName: Text('Shaidur Rahman'),
              accountEmail: Text('sahidur8500@gmail.com'),
          ),

          ListTile(
            leading: Icon(Icons.home),
            title: Text('Homepage'),
            trailing: Icon(Icons.edit),
            onTap: (){
              print('Tapped from List tile "Homepage"');
            },
            onLongPress: (){
              print('Long pressed in List tile of "Homepage"');
            },
          ),
          ListTile(
            leading: Icon(Icons.work),
            title: Text('Work station'),
            trailing: Icon(Icons.edit),
            onTap: (){
              print('Tapped from List tile "Work station"');
            },
            onLongPress: (){
              print('Long pressed in List tile of "Work station"');
            },
          ),
          ListTile(
            leading: Icon(Icons.build),
            title: Text('Build'),
            trailing: Icon(Icons.edit),
            onTap: (){
              print('Tapped from List tile "Build"');
            },
            onLongPress: (){
              print('Long pressed in List tile of "Build"');
            },
          ),
          ListTile(
            leading: Icon(Icons.account_box),
            title: Text('Account'),
            trailing: Icon(Icons.edit),
            onTap: (){
              print('Tapped from List tile "Account"');
            },
            onLongPress: (){
              print('Long pressed in List tile of "Account"');
            },
          ),
        ],
      ),
    );
  }
}
