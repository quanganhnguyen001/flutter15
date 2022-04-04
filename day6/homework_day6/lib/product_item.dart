import 'package:flutter/material.dart';
import 'package:homework_day6/data/data_product.dart';
import 'package:homework_day6/edit_product.dart';
import 'package:homework_day6/product_info.dart';

class ProductItem extends StatefulWidget {
  const ProductItem({ Key? key, required this.product }) : super(key: key);
  final Product product;
  

  @override
  State<ProductItem> createState() => _ProductItemState(product);
}

class _ProductItemState extends State<ProductItem> {
   final Product product;
  _ProductItemState(this.product);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(product.image),
          ),
          Text(product.name),
          Container(
            child: Row(
              children: [
                  IconButton(
            icon: Icon(Icons.edit,color: Colors.purple,),
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: ((context) => ProductEdit())));
            },
          ),
          IconButton(
            icon: Icon(Icons.info,color: Colors.green,),
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProductInfo(product)));
            },
          ),
          IconButton(
            icon: Icon(Icons.delete,color: Colors.red,),
            onPressed: (){},
          ),
              ],
            ),
          ),
          
        ],
      ),
      
    );
  }
}