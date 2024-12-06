import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class popUpMenu extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(itemBuilder: (context)=>[
      const PopupMenuItem(value: 'cart',child: ListTile(leading: Icon(Icons.add_shopping_cart),title: Text('Cart'))),
      const PopupMenuItem(value: 'settings',child: ListTile(leading: Icon(Icons.settings),title: Text('settings'))),
      const PopupMenuItem(value: 'Logout',child: ListTile(leading: Icon(Icons.logout_rounded),title: Text('Logout'))),

    ]);
  }
}