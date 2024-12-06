import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DiaListWidget extends StatelessWidget{


  String img;
      int stockId;
  String pol;
      String col;
  String clarity;
      String fluo;
  String sym;
      String cut;
  double size;
      String lab;
  double rap;
  double discount;
  DiaListWidget
      (
        this.img,
        this.stockId,
        this.pol,
        this.col,
        this.clarity,
        this.fluo,
        this.sym,
        this.cut,
        this.size,
        this.lab,
        this.rap,
        this.discount
      );




  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.only(left: 5,right: 5,top: 10,bottom: 5),
      height: 190,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          gradient: const LinearGradient(
              colors: <Color>[Colors.purple,Colors.indigo])
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset('assets/images/$img',height: 50,width: 50,),
              SizedBox(
                height: 50,
                width: 50,
                child:  Column(
                  children:  [
                    Text(clarity,style: const TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.w500)),
                    const Text('Clarity',style: TextStyle(color: Colors.white,fontSize: 16),)
                  ],
                ),
              ),
              SizedBox(
                height: 50,
                width: 50,
                child:  Column(
                  children:  [
                    Text('$size',style: const TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.w500)),
                    const Text('Cts',style: TextStyle(color: Colors.white,fontSize: 18),)
                  ],
                ),
              ),

            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(height: 50,width: 1,color: Colors.white,),
              Container(height: 50,width: 1,color: Colors.white,),
              Container(height: 50,width: 1,color: Colors.white,)
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: 50,
                width: 70,
                child:  Column(
                  children:  [
                    Text('$stockId',style: const  TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.w500)),
                    const Text('Stock Id',style: TextStyle(color: Colors.white,fontSize: 18),)
                  ],
                ),
              ),
              SizedBox(
                height: 50,
                width: 70,
                child:  Column(
                  children:  [
                    Text(fluo,style: const TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.w500)),
                    const Text('Fluo',style: TextStyle(color: Colors.white,fontSize: 18),)
                  ],
                ),
              ),
              SizedBox(
                height: 50,
                width: 70,
                child:  Column(
                  children:  [
                    Text(lab,style: const  TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.w500)),
                    const Text('Lab',style: TextStyle(color: Colors.white,fontSize: 18),)
                  ],
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(height: 50,width: 1,color: Colors.white,),
              Container(height: 50,width: 1,color: Colors.white,),
              Container(height: 50,width: 1,color: Colors.white,)
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: 50,
                width: 50,
                child:  Column(
                  children:  [
                    Text(pol,style: const TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.w500)),
                    const Text('Pol',style: TextStyle(color: Colors.white,fontSize: 16),)
                  ],
                ),
              ),
              SizedBox(
                height: 50,
                width: 50,
                child:  Column(
                  children: [
                    Text(sym,style: const TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.w500)),
                    const Text('Sym',style: TextStyle(color: Colors.white,fontSize: 18),)
                  ],
                ),
              ),
              SizedBox(
                height: 50,
                width: 50,
                child:  Column(
                  children:  [
                    Text(rap==0?' - ':'$rap',style: const TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.w500)),
                    const Text('Rap',style: TextStyle(color: Colors.white,fontSize: 18),)
                  ],
                ),
              ),

            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(height: 50,width: 1,color: Colors.white,),
              Container(height: 50,width: 1,color: Colors.white,),
              Container(height: 50,width: 1,color: Colors.white,)
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: 50,
                width: 50,
                child:  Column(
                  children:  [
                    Text(col,style: const TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.w500)),
                    const Text('Col',style: TextStyle(color: Colors.white,fontSize: 18),)
                  ],
                ),
              ),
              SizedBox(
                height: 50,
                width: 50,
                child:  Column(
                  children:  [
                    Text(cut,style: const TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.w500)),
                    const Text('Cut',style: TextStyle(color: Colors.white,fontSize: 18),)
                  ],
                ),
              ),
              SizedBox(
                height: 50,
                width: 50,
                child:  Column(
                  children: [
                    Text(discount==0?' - ':'$discount',style: const TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.w500)),
                    const Text('Disc',style: TextStyle(color: Colors.white,fontSize: 18),)
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

}