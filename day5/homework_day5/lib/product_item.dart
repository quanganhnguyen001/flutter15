import 'package:flutter/material.dart';
import 'package:homework_day5/detail.dart';

import 'data/product_data.dart';

class ProductItem extends StatefulWidget {
  const ProductItem({
    Key? key, required this.product,
  }) : super(key: key);
  final Product product;

  @override
  State<ProductItem> createState() => _ProductItemState(product);
}

class _ProductItemState extends State<ProductItem> {
  final Product product;
  _ProductItemState(this.product);
  
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
   return Container(
     alignment: Alignment.center,
     padding: EdgeInsets.all(8),
     child: Stack(
       alignment: Alignment.bottomLeft,
       children: [
         ClipRRect(
           borderRadius: BorderRadius.circular(16.0),
           child: Image.network(product.image,
           width: size.width / 2.0 - 16,
           fit: BoxFit.cover,
           ),
         ),
         Container(
           decoration: BoxDecoration(
             color: Colors.black.withOpacity(0.7),
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(16.0),
                    bottomRight: Radius.circular(16.0))),
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconButton(
                  icon: Icon(
                    product.favorite ? Icons.favorite : Icons.favorite_border,
                    color: Color(0xFF9F28B4),
                  ),
                  onPressed: () {
                    setState(() {
                      product.favorite = !product.favorite;
                    });
                  },
                  ),
                  Text(product.name,style: TextStyle(
                        color: Colors.white,
                        fontStyle: FontStyle.normal,
                        fontSize: 14),
                  ),
                  IconButton(
                  icon: const Icon(
                    Icons.shopping_cart,
                    color: Color(0xFF9F28B4),
                  ),
                  onPressed: () {},
                ),
                      ],
                    ),
           ),
         
         

       ],
     ),
   );
  }
}