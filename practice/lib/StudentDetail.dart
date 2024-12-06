import 'package:flutter/material.dart';

class StudDetail extends StatelessWidget{
  Color ?color=Colors.indigo;
  String name='';
  String stream='';
  String imgName='';
  int rollno;
  StudDetail(this.rollno,this.imgName,this.name,this.stream);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
      children: [
        Positioned.fill(
          top: 420,
          child: ListView(
            children: [
              SizedBox(
                height: 120,
                child: Card(
                  elevation: 5,
                  child: Container(
                    padding: EdgeInsets.only(left: 10,top: 10,right: 10),
                    child: Column(
                      children: [
                        const Text('Student name',
                          textAlign: TextAlign.center,
                          style:TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w500
                        ),),
                        Text(name,
                            textAlign: TextAlign.center,
                            style:const  TextStyle(
                                color: Colors.black,
                                fontSize: 54,
                                fontWeight: FontWeight.w500
                            ),),

                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 120,
                child: Card(
                  elevation: 5,
                  child: Container(
                    padding: EdgeInsets.only(left: 10,top: 10,right: 10),
                    child: Column(
                      children: [
                        const Text('Class',
                          textAlign: TextAlign.center,
                          style:TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w500
                          ),),
                       Text(stream,
                            textAlign: TextAlign.center,
                            style:const  TextStyle(
                                color: Colors.black,
                                fontSize: 54,
                                fontWeight: FontWeight.w500
                            ),),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 120,
                child: Card(
                  elevation: 5,
                  child: Container(
                    padding: EdgeInsets.only(left: 10,top: 10,right: 10),
                    child: Column(
                      children: [
                        const Text('Roll No',
                          textAlign: TextAlign.center,
                          style:TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w500
                          ),),

                          Text('$rollno',
                            textAlign: TextAlign.center,
                            style:const  TextStyle(
                                color: Colors.black,
                                fontSize: 54,
                                fontWeight: FontWeight.w500
                            ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
       const Positioned(
          top: 80,
            child: Align(
              alignment: Alignment.center,
              child:  Text('SDJ\n INTERNATIONAL COLLEGE',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 30,
                        color: Colors.black
                    )
              ),
            )
        ),
        Positioned(
          top: 180,
            child:  SizedBox(
                height: 280,
                width: 280,
                  child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/$imgName'),
                  ),
              ),

          ),

       ],
      )
    );
  }
}