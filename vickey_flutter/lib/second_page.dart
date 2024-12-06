import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget{

  var title="";
  SecondPage(this.title);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: const Center(
        child: Text('The\nsecond page\nis loaded',
          textAlign: TextAlign.center,
          style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w700,
          color: Colors.black
        ),),
      ),
    );
  }
}