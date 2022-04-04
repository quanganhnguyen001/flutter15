import 'package:flutter/material.dart';
import 'package:homework_day5/data/product_data.dart';
import 'package:homework_day5/detail.dart';
import 'package:homework_day5/product_item.dart';

class ProductList extends StatelessWidget {
  const ProductList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: 3/2,
      crossAxisCount: 2,
      children: [
        for (int i = 0; i < listProduct.length; i++)
        InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProductDetail(listProduct[i])));
          },
          child: ProductItem(product: listProduct[i],),
        ),
      ],
     
    );
  }
}

