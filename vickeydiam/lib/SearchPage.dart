import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinbox/flutter_spinbox.dart';
import 'package:vickeydiam/drawermenu.dart';

class SearchPage extends StatefulWidget{
  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  int index=0;

  var scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: myDrawer(),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20,),
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
                          scaffoldKey.currentState?.openDrawer();
                        }
                    )
                ),
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width-110,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: <Color>[Colors.purple,Colors.blue]),
                    borderRadius: BorderRadius.all(Radius.circular(25))
                        
                ),),
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
                          scaffoldKey.currentState?.openDrawer();
                        }
                    )
                ),
              ],
            ),
           SizedBox(height: 5,),
           const Text('   Shape',style: TextStyle(fontSize: 24),),
           SizedBox(
             height: 100,
             child: ListView(
               scrollDirection: Axis.horizontal,
                children: [
                        InkWell(
                          onTap: (){
                            setState(() {
                              index=0;
                            });
                          },
                          child: Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(border: Border.all(width: 1,color: index==0?Colors.red:Colors.grey.shade200)),
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            setState(() {
                              index=1;
                            });
                          },
                          child: Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(border: Border.all(width: 1,color: index==1?Colors.red:Colors.grey.shade200)),
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            setState(() {
                              index=2;
                            });
                          },
                          child: Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(border: Border.all(width: 1,color: index==2?Colors.red:Colors.grey.shade200)),
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            setState(() {
                              index=3;
                            });
                          },
                          child: Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(border: Border.all(width: 1,color: index==3?Colors.red:Colors.grey.shade200)),
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            setState(() {
                              index=4;
                            });
                          },
                          child: Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(border: Border.all(width: 1,color: index==4?Colors.red:Colors.grey.shade200)),
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            setState(() {
                              index=5;
                            });
                          },
                          child: Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(border: Border.all(width: 1,color: index==5?Colors.red:Colors.grey.shade200)),
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            setState(() {
                              index=6;
                            });
                          },
                          child: Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(border: Border.all(width: 1,color: index==6?Colors.red:Colors.grey.shade200)),
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            setState(() {
                              index=7;
                            });
                          },
                          child: Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(border: Border.all(width: 1,color: index==7?Colors.red:Colors.grey.shade200)),
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            setState(() {
                              index=8;
                            });
                          },
                          child: Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(border: Border.all(width: 1,color: index==8?Colors.red:Colors.grey.shade200)),
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            setState(() {
                              index=9;
                            });
                          },
                          child: Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(border: Border.all(width: 1,color: index==9?Colors.red:Colors.grey.shade200)),
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            setState(() {
                              index=10;
                            });
                          },
                          child: Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(border: Border.all(width: 1,color: index==10?Colors.red:Colors.grey.shade200)),
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            setState(() {
                              index=11;
                            });
                          },
                          child: Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(border: Border.all(width: 1,color: index==11?Colors.red:Colors.grey.shade200)),
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            setState(() {
                              index=12;
                            });
                          },
                          child: Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(border: Border.all(width: 1,color: index==12?Colors.red:Colors.grey.shade200)),
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            setState(() {
                              index=13;
                            });
                          },
                          child: Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(border: Border.all(width: 1,color: index==13?Colors.red:Colors.grey.shade200)),
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            setState(() {
                              index=14;
                            });
                          },
                          child: Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(border: Border.all(width: 1,color: index==14?Colors.red:Colors.grey.shade200)),
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            setState(() {
                              index=15;
                            });
                          },
                          child: Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(border: Border.all(width: 1,color: index==15?Colors.red:Colors.grey.shade200)),
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            setState(() {
                              index=16;
                            });
                          },
                          child: Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(border: Border.all(width: 1,color: index==16?Colors.red:Colors.grey.shade200)),
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            setState(() {
                              index=17;
                            });
                          },
                          child: Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(border: Border.all(width: 1,color: index==17?Colors.red:Colors.grey.shade200)),
                          ),
                        ),
                      ],
                    ),
           ),






          ],
        ),

      );
  }
}