import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'drawermenu.dart';

class ContactUsPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Vickey Diam  >>  Contact Us',style: TextStyle(color: Colors.white))),
      endDrawer: myDrawer(),
    );
  }

}