import 'package:basic_flutter/screen/ex_1.dart';
import 'package:basic_flutter/screen/ex_2.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomeWork"),
      ),
      body: ListView(
        children: [
           MaterialButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Bai1()));
            },
            color: Colors.blue,
            child: const Text("Bai 1"),
          ),
          MaterialButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Bai2()));
            },
            color: Colors.blue,
            child: const Text("Bai 2"),
          ),
        ],
      ),
      
    );
  }
}