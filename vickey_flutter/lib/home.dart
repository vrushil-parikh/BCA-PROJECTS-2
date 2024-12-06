import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vickey_flutter/myDrawer.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      drawer: myDrawer(),
      appBar: AppBar(title: const Text("Welcome to Virtuous Diam "),centerTitle: true,),
    );
  }

}