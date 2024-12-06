import 'package:flutter/material.dart';
import 'package:practice/StudentDetail.dart';
import 'package:flutter/scheduler.dart' show timeDilation;

void main()=>  runApp(StudList());

class StudList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      title: 'SDJ INTERNATIONAL COLLEGE',
      home: MyStudList(),
    );
  }

}

class MyStudList extends StatelessWidget{

  var names=[
    'Smit',    'Meet',    'Harsh',    'Parth',    'priyank',    'Chaitya',    'Niraj',    'Divyang',
    'Preet',    'Bhagya'];
  var imgs=['i10.jpg','i2.jpg','i3.jpg','i1.jpg','i5.jpg','i6.jpg','i7.jpg','i8.jpg','i9.jpg','i4.jpg',];
  var streams=['BCA','BBA','BBA','BCOM','BCA','BBA','BBA','BCOM','BCA','BCA'];

  @override
  Widget build(BuildContext context) {

    //timeDilation=2;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 20,),
          Container(
            alignment: Alignment.center,
            width: 400,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/SDJlogo.jpg'),
                  radius: 40,),
                  SizedBox(width: 20,),
                   Text('SDJ\nINTERNATIONAL\nCOLLEGE',style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 31
                  ),)
                ],
              )),
          Expanded(
            child: ListView.builder(
              itemCount: imgs.length,
                itemBuilder: (context,index){
              return Card(
                child: ListTile(
                  leading: CircleAvatar(backgroundImage: AssetImage('assets/images/${imgs[index]}'),),
                  title: Text(names[index]),
                  subtitle: Text(streams[index]),
                  trailing: const Icon(Icons.arrow_forward_ios_sharp),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>StudDetail(index+1, imgs[index], names[index], streams[index])));
                  },
                ),
              );
            }),
          )
        ],
      )
    );
  }
}


