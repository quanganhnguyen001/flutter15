import 'package:flutter/material.dart';

class Bai2 extends StatefulWidget {
  const Bai2({ Key? key }) : super(key: key);

  @override
  State<Bai2> createState() => _Bai2State();
}

class _Bai2State extends State<Bai2> {
  TextEditingController check = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        title: Text("Bai 2"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.symmetric(horizontal: 25,vertical: 5),
              decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              border: Border.all(color: Colors.blue)
              ),
              child: TextField(
                controller: check,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: ("Nhap so"),
        ),
        ),
            ),
            ElevatedButton(onPressed: (){
              
              
              
            },
             child: Text("Kiem tra"),
             ),
          ],
        ),
      ),
      
    );
  }
}