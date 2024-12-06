import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'drawermenu.dart';

class ExcepDiamPage extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text('Vickey Diam  >>  Exceptional Diamond',style: TextStyle(color: Colors.white))),
      endDrawer: myDrawer(),
    );
  }
}