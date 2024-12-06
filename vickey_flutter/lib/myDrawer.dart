import 'package:flutter/material.dart';

class myDrawer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: const [
          UserAccountsDrawerHeader(
              accountName: Text("Vrushil"),
              accountEmail: Text("vrushilparikh123@gmail.com"),
              currentAccountPicture: CircleAvatar(backgroundColor: Colors.white,child: Text("V",style: TextStyle(fontSize: 40),),),
          ),

        ],
      ),
    );
  }
}