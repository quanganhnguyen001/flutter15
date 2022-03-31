import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  const Details({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
          children: [
            Image.network("https://cf.shopee.vn/file/a5fe18735fc8b43e03453fc963574527",
            width: 640,
            height: 400,
            ),
            Positioned(
              top: 70,
              left: 20,
              child: IconButton(icon: Icon(Icons.arrow_back), onPressed: () {
                Navigator.of(context).pop();
              },),
            ),
            Positioned(
              bottom: 50,
              left: 70,
              child: Text("Demo",style: TextStyle(color: Colors.red,fontSize: 30),)
              ),
          ],
        ),
        SizedBox(height: 10,),
        Text("\$92.56",style: TextStyle(fontSize: 20,color: Colors.grey),),
        SizedBox(height: 10,),
        Text("This is demo product")
        ], 
        
      ),
    );
  }
}