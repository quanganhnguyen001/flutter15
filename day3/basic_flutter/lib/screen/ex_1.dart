import 'package:flutter/material.dart';

class Bai1 extends StatefulWidget {
  const Bai1({ Key? key }) : super(key: key);

  @override
  State<Bai1> createState() => _Bai1State();
}

class _Bai1State extends State<Bai1> {
  int counter = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: counter % 2 == 0 ? Colors.red : Colors.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
           icon: Icon(Icons.arrow_back_ios),
        ),
        title: Text("Bai 1"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  counter++;  
                });
              },
               child: Text("Click"),
            ),
            SizedBox(height: 20,),
            Text("So lan bam"),
            SizedBox(height: 20,),
            Text("$counter")
          ],
        ),
      ),
      
    );
  }
}


