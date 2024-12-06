import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'drawermenu.dart';

class FAQsPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text("Vickey Diam  >>  FAQ's",style: TextStyle(color: Colors.white))),
      endDrawer: myDrawer(),
    );
  }
}