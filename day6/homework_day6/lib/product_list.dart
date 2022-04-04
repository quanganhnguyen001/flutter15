import 'package:flutter/material.dart';
import 'package:homework_day6/data/data_product.dart';
import 'package:homework_day6/product_item.dart';

class ProductList extends StatelessWidget {
  const ProductList({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Your Products"),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: (){
      
            },
          ),
        ],
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(8),
        itemCount: listProduct.length,
        itemBuilder: (BuildContext context, int index){
          return ProductItem(product: listProduct[index],);
        }, separatorBuilder: (BuildContext context, int index) => Divider(thickness: 2,),
      ),
    );
  }
}