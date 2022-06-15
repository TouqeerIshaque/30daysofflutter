// ignore_for_file: prefer_const_constructors


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final userAccountimg =
        "https://i.postimg.cc/wBvX9081/16143603-1350464671699269-810073582360532425-o.jpg";
    return Drawer(
      child: Container(
        color: Colors.blue,
        child: ListView(
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                  accountEmail: Text("touqeerishaque@outlook.com" , style: TextStyle(color:Colors.white),),
                  accountName: Text("Muhammad Touqeer Ishaque" ,  style: TextStyle(color:Colors.white)),
                  currentAccountPicture:
                      CircleAvatar(backgroundImage: NetworkImage(userAccountimg)),
                ),
                ),
                ListTile(
                  leading: Icon(CupertinoIcons.home ,
                   color: Colors.white,),
                 title: Text("Home",
                 textScaleFactor: 1.2 , 
                    style: TextStyle(
                  color: Colors.white,
                 ),)
              
                ),

                   ListTile(
                  leading: Icon(CupertinoIcons.profile_circled ,
                   color: Colors.white,),
                 title: Text("Profile",
                 textScaleFactor: 1.2 , 
                    style: TextStyle(
                  color: Colors.white,
                 ),)
              
                ),

                   ListTile(
                  leading: Icon(CupertinoIcons.mail ,
                   color: Colors.white,),
                 title: Text("Contact Us",
                 textScaleFactor: 1.2 , 
                    style: TextStyle(
                  color: Colors.white,
                 ),)
              
                )

          ],
        ),
      ),
    );
  }
}
