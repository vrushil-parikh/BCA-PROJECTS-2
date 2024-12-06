import 'package:flutter/material.dart';
import 'package:practice/drawerWidget.dart';

import 'drawerWidget.dart';

class aboutPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Examples'),centerTitle: true),
      drawer: appDrawer(),
      body: Center(
        child: ListView(
          padding: EdgeInsets.all(10),
          children: const [
            SizedBox(height: 100,),
            SizedBox(
              width: 200,
              height: 200,
              child: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text('V',style: TextStyle(color: Colors.white,fontSize: 100),),
              ),
            ),
            SizedBox(height: 50,),
            Card(
              child: ListTile(
                leading: Icon(Icons.phone,color: Colors.blue,),
                title: Text('+91 9428661387',style: TextStyle(color: Colors.blue,fontSize: 34),),
                subtitle: Text('personal',style: TextStyle(color: Colors.blue),),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.mail,color: Colors.blue,),
                title: Text('vrushilparikh123@gmail.com',style: TextStyle(color: Colors.blue,fontSize: 21),),
                ),
            ),
          ],
        ),
      ),
    );
  }
}