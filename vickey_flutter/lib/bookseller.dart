import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vickey_flutter/bookProvider.dart';
import 'package:vickey_flutter/shopping_cart.dart';

class BookSeller extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var books=context.watch<BookProvider>().books;
    var cartList=context.watch<BookProvider>().cartList;
    return Scaffold(
      appBar: AppBar(
        title:const Text("Book Store"),
        centerTitle: true,
        actions: [
          Stack(
            children: [
              IconButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ShoppingCart()));
              }, icon: const Icon(Icons.shopping_cart,color: Colors.white,)),
              Positioned(
                  top: 5,
                  right: 5,
                  child: Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: Colors.red,),

                    constraints: const BoxConstraints(
                        minHeight: 16,
                        minWidth: 16
                    ),
                    child: Text("${cartList.length}",textAlign: TextAlign.center,),
              ))
            ],
          )
        ],),
      body: ListView.builder(
          itemCount: books.length,
          itemBuilder: (context,int index){
        return Card(
          child: ListTile(
            title: Text("${books[index]["name"]}"),
            subtitle: Text("${books[index]["price"]}"),
            trailing: IconButton(
              onPressed: (){
                if(!cartList.contains(index)){
                  context.read<BookProvider>().addToList(index);
                }
                else{
                  context.read<BookProvider>().removeFromList(index);
                }
              },
              icon: Icon(!cartList.contains(index)? Icons.add_shopping_cart: Icons.remove_shopping_cart,color: !cartList.contains(index)? Colors.grey:Colors.red,),
            ),
          ),
        );
      }),
    );
  }
}

