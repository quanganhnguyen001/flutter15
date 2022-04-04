import 'package:flutter/material.dart';
import 'package:homework_day6/data/data_product.dart';



class ProductInfo extends StatelessWidget {
  final Product product;
  ProductInfo(this.product);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: (){
            Navigator.of(context).pop();
          },
          ),
        title: Text("Product Info"),
        actions: [
          Icon(Icons.save),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Text("Expanded"),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 20,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(24),
                    ),
                    ),
                ),
               Expanded(
                  flex: 2,
                  child: Container(
                    height: 20,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(24),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 20,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(24),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text("Title",style: TextStyle(color: Colors.grey),),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(product.name,style: TextStyle(fontSize: 20),),
          ),
          Divider(
            color: Colors.grey,
            indent: 15,
            endIndent: 15,
            thickness: 1,
          ),
           Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text("Price",style: TextStyle(color: Colors.grey),),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(product.price,style: TextStyle(fontSize: 20),),
          ),
         Divider(
            color: Colors.grey,
            indent: 15,
            endIndent: 15,
            thickness: 1,
          ),
           Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text("Description",style: TextStyle(color: Colors.grey),),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(product.descrip,style: TextStyle(fontSize: 20),),
          ),
          Divider(
            color: Colors.grey,
            indent: 15,
            endIndent: 15,
            thickness: 1,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                flex: 1,
                child: Image.network(product.image,height: 100,),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Image URL",style: TextStyle(color: Colors.grey),),
                    Text(product.image,maxLines: 1,style: TextStyle(fontSize: 15),),
                    Divider(
                      color: Colors.grey,
                      indent: 4,
                      endIndent: 10,
                      thickness: 1,
                    )
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