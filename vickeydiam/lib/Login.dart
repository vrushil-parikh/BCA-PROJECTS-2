import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'drawermenu.dart';

class LoginPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Vickey Diam Login',style: TextStyle(color: Colors.white))),
      endDrawer: myDrawer(),
    );
  }
}