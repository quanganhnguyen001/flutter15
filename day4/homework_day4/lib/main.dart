import 'package:flutter/material.dart';
import 'package:homework_day4/bai1.dart';
import 'package:homework_day4/bai2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

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