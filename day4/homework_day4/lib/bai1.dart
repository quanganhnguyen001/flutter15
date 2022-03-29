import 'package:flutter/material.dart';

class Bai1 extends StatefulWidget {
  const Bai1({ Key? key }) : super(key: key);

  @override
  State<Bai1> createState() => _Bai1State();
}

class _Bai1State extends State<Bai1> {
  int num1=0,num2=0,result=0;
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  cong(){
    setState(() {
      num1 = int.parse(controller1.text);
      num2 = int.parse(controller2.text);
      result = num1 + num2;
    });
  }
   tru(){
    setState(() {
      num1 = int.parse(controller1.text);
      num2 = int.parse(controller2.text);
      result = num1 - num2;
    });
  }
   nhan(){
    setState(() {
      num1 = int.parse(controller1.text);
      num2 = int.parse(controller2.text);
      result = num1 * num2;
    });
  }
   chia(){
    setState(() {
      num1 = int.parse(controller1.text);
      num2 = int.parse(controller2.text);
      result = num1 ~/ num2;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 25,horizontal: 25),
              child: Image.asset("assets/images/calculator-1470.png"),
            ),
            Container(
              padding: EdgeInsets.only(left: 50,right: 50),
              child: TextField(
                controller: controller1,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "Nhập số A",
                  
                  hintStyle: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.only(left: 50,right: 50,),
              child: TextField(
                controller: controller2,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "Nhập số B",
                  
                  hintStyle: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            SizedBox(height: 30,),
            Text("Kết quả: $result",style: TextStyle(fontSize: 25),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: (){
                    cong();
                    controller1.clear();
                    controller2.clear();
                  },
                child: Text("+"),
                ),
                ElevatedButton(onPressed: (){
                  tru();
                  controller1.clear();
                  controller2.clear();
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.red
                ),
                child: Text("-",),
                ),
                ElevatedButton(onPressed: (){
                  nhan();
                  controller1.clear();
                  controller2.clear();
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.green
                ),
                child: Text("*"),
                ),
                ElevatedButton(onPressed: (){
                  chia();
                  controller1.clear();
                  controller2.clear();
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange
                ),
                child: Text("/"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}