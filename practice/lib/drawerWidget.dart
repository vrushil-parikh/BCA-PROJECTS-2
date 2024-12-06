import 'package:flutter/material.dart';
import 'package:practice/aboutPage.dart';
import 'package:practice/extrafile.dart';

class appDrawer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(backgroundColor: Colors.white,child: Text('V'),),
              accountName: Text('vrushil parikh'), accountEmail: Text('vrushilparikh123@gmail.com')),
           ListTile(
            onTap: (){
              Navigator.of(context).pop();
                Navigator.pushReplacement(
                    context, MaterialPageRoute(
                    builder: (context)=>mainHomePage()));
            },
            leading:const  Icon(Icons.home),
            title: const Text('Home'),
          ),
          ListTile(
            onTap: (){
              Navigator.of(context).pop();
              Navigator.pushReplacement(
                  context, MaterialPageRoute(
                  builder: (context)=>aboutPage()));
            },
            leading: const Icon(Icons.account_circle),
            title: const Text('About'),
          ),
          const ListTile(
            leading: Icon(Icons.logout_rounded),
            title: Text('LogOut'),
          )
        ],
      ),
    );
  }
}