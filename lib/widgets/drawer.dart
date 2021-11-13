import 'package:flutter/cupertino.dart';
import  'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
 final imageURL="https://images.indianexpress.com/2021/02/prajakta-koli.jpg";
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("Rejina Luitel"),
                 accountEmail: Text("rejinaluitel@gmail.com"),
                 currentAccountPicture: CircleAvatar(
                   backgroundImage: NetworkImage(imageURL),
                 ),
                 ),
              ),
           ListTile(
             leading: Icon(CupertinoIcons.home, color:Colors.white),
             title: Text("Home", 
             textScaleFactor: 1.2,
             style: TextStyle(color: Colors.white)
             ),
           ),
           ListTile(
             leading: Icon(CupertinoIcons.profile_circled, color:Colors.white),
             title: Text("Profile", 
             textScaleFactor: 1.2,
             style: TextStyle(color: Colors.white)
             ),
           ),
           ListTile(
             leading: Icon(CupertinoIcons.phone, color:Colors.white),
             title: Text("Contact", 
             textScaleFactor: 1.2,
             style: TextStyle(color: Colors.white)
             ),
           )
        ],
        ),
      ),
    );
  }
}