import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vickey_flutter/bookProvider.dart';


class ShoppingCart extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    var books=context.watch<BookProvider>().books;
    var cartList=context.watch<BookProvider>().cartList;
    double totalAmount=context.watch<BookProvider>().total;

    return Scaffold(
      appBar: AppBar(title: const Text('Shopping Cart'),centerTitle: true,),
      body: cartList.isEmpty? const Center(child: Text("No cart item found"),): ListView.builder(
          itemCount: cartList.length,
          itemBuilder: (context,index){
        final book=books[cartList[index]];
        return Card(
          child: ListTile(
            title: Text("${book['name']} :  \$ ${book['price']}"),
            trailing: IconButton(
              onPressed: (){
                  context.read<BookProvider>().removeFromList(cartList[index]);
                },
              icon: const Icon(Icons.remove_shopping_cart,color: Colors.red,),),
          ),
        );
      }),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            Expanded(child: ListTile(leading:const Icon(Icons.shopping_cart,size: 50),title: Text(" Items ${cartList.length}"),)),
            Expanded(child: ListTile(title: Text("Total: $totalAmount \$"),))
          ],
        ),
      ),
    );

  }
}