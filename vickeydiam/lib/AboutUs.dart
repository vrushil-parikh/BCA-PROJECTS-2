import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'drawermenu.dart';

class AboutUsPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Vickey Diam  >>  About Us',style: TextStyle(color: Colors.white))),
      endDrawer: myDrawer(),
    );
  }

}