import 'package:flutter/material.dart';
import 'package:vickeydiam/DiaListWIdget.dart';
import 'package:vickeydiam/SearchPage.dart';

import 'drawermenu.dart';

class HomePage extends StatefulWidget{
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: myDrawer(),
      body:ListView(
        children:  [
          const SizedBox(height: 2,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                  height: 50,
                  width: 50,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      gradient: LinearGradient(colors: <Color>[Colors.blue,Colors.indigo])
                  ),
                  child:  IconButton(
                    icon: const Icon(
                        Icons.drag_handle,color: Colors.white),
                        onPressed: (){
                            scaffoldKey.currentState!.openDrawer();
                          }
                    )
                ),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width-110,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    gradient: LinearGradient(colors: [Colors.purple,Colors.indigo])
                ),
              ),
              Container(
                  height: 50,
                  width: 50,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      gradient: LinearGradient(colors: <Color>[Colors.blue,Colors.indigo])
                  ),
                  child:  IconButton(
                      icon: const Icon(
                          Icons.search,color: Colors.white),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>SearchPage()));
                      }
                  )
              ),
            ],
          ),
          DiaListWidget('diamond.png',12355,'Ex','D','SI1','Ex','VG','Ex',1.01,'GIA',50,50),

        ],
      )
    );
  }
}