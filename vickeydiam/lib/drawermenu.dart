import 'package:flutter/material.dart';
import 'package:vickeydiam/AboutUs.dart';
import 'package:vickeydiam/ContactUS.dart';
import 'package:vickeydiam/ExceptionalDiamond.dart';
import 'package:vickeydiam/FAQs.dart';
import 'package:vickeydiam/Home.dart';
import 'package:vickeydiam/Login.dart';

class myDrawer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children:  [
          const UserAccountsDrawerHeader(accountName: Text("Vickey"), accountEmail: Text("vickeydiam@gamail.com"),currentAccountPicture: CircleAvatar(backgroundColor: Colors.white,)),
          ListTile(
            title:const Text('Home'),
            trailing: const Icon(Icons.home),
            onTap: (){
              Navigator.pop(context);
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> HomePage()));

          },),
          ListTile(
              title: const Text('About Us'),
              trailing: const Icon(Icons.info_outline),
              onTap: (){
                Navigator.pop(context);
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> AboutUsPage()));

              }
          ),
          ListTile(
              title: const Text('Exceptional Diamonds'),
              trailing: const Icon(Icons.diamond),
              onTap: (){
                Navigator.pop(context);
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> ExcepDiamPage()));

              }
          ),
          ListTile(
              title: const Text("FAQ's"),
              trailing: const Icon(Icons.question_answer_outlined),
              onTap: (){
                Navigator.pop(context);
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> FAQsPage()));

              }
          ),
          ListTile(
              title: const Text('Login'),
              trailing: const Icon(Icons.login_outlined),
              onTap: (){
                Navigator.pop(context);
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> LoginPage()));

              }
              ),
          ListTile(
              title: const Text('Contact Us'),
              trailing: const Icon(Icons.mail_lock_outlined),
              onTap: (){
                Navigator.pop(context);
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> ContactUsPage()));

              }
          ),
          ListTile(
              title: const Text('Close'),
              trailing: const Icon(Icons.close),
              onTap: (){
                Navigator.pop(context);
                }
          ),
        ],
      ),
    );
  }
}