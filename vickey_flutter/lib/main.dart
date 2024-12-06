import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vickey_flutter/bookProvider.dart';
import 'package:vickey_flutter/bookseller.dart';
import 'package:vickey_flutter/home.dart';

void main(){
  runApp(ChangeNotifierProvider(create: (_)=>BookProvider(),child: MyApp(),));
}


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}


class MyHomePage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return HomePage();
  }
}