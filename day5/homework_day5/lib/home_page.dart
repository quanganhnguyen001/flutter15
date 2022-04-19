import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:homework_day5/cart.dart';
import 'package:homework_day5/detail.dart';
import 'package:homework_day5/product_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple.shade500,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        title: Text("MyShop"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Center(
              child: InkWell(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Cart()));
                },
                child: Badge(
                  badgeContent: Text(
                    "0",
                    style: TextStyle(color: Colors.white),
                  ),
                  badgeColor: Colors.purple.shade500,
                  child: Icon(Icons.shopping_cart),
                ),
              ),
            ),
          ),
        ],
      ),
      body: ProductList(),
    );
  }
}
