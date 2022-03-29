import 'package:flutter/material.dart';

class Bai2 extends StatelessWidget {
  const Bai2({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.of(context).pop();
          },
          ),
          title: Text("Flex Demo - CodeFresher",
          style: TextStyle(
            
          ),
          ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
               Expanded(
                 flex: 1,
                 child: Container(
                   padding: EdgeInsets.only(top: 50),
                   child: Image.asset("assets/images/banner_2022_flutter.jpg",
                   height: 150,
                   ),
                 ),
               ),
               Expanded(
                 flex: 1,
                 child: Padding(
                   padding: const EdgeInsets.only(top: 50,),
                   child: Column(
                     children: [
                       Text("Lập trình Flutter",
                       style: TextStyle(
                         fontSize: 28,
                         fontWeight: FontWeight.w500 
                       ),
                       ),
                       SizedBox(height: 10,),
                       Text("Thực chiến dự án app",
                       style: TextStyle(
                         fontSize: 19,
                       ),
                       ),
                       Text("mobile 2022",
                       style: TextStyle(
                         fontSize: 17,
                       ),
                       )
                     ],
                   ),
                 ),
               ),
              ],
            ),
            Container(
              child: Divider(color: Colors.green,
              thickness: 3,
              height: 80,
              indent: 30,
              endIndent: 15,
              ),
            ),
             Padding(
               padding: const EdgeInsets.only(bottom: 20),
               child: Row(
                 children: [
                   Expanded(
                     flex: 1,
                     child: Column(
                       children: [
                        Text("Lập trình",
                        style: TextStyle(fontSize: 28,
                        fontWeight: FontWeight.w500 
                        ),
                        ),
                        Text("Android",
                        style: TextStyle(fontSize: 28,
                        fontWeight: FontWeight.w500 
                        ),
                        ),
                         SizedBox(height: 10,),
                        Text("Java + Kotlin",
                        style: TextStyle(fontSize: 20),
                        ),
                       ],
                     ),
                   ),
                   Expanded(
                     child: Container(
                       padding: EdgeInsets.only(right: 15),
                       child: Image.asset("assets/images/banner_2022_android.jpg"),
                     ),
                   ),
                 ],
            ),
             ),
            Container(
              child: Divider(color: Colors.green,
              thickness: 3,
              height: 40,
              indent: 30,
              endIndent: 15,
              ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25,bottom: 20),
                child: Row(
                children: [
                 Expanded(
                   flex: 1,
                   child: Image.asset("assets/images/banner-Java-core-03.png",
                   ),
                 ),
                 Expanded(
                   flex: 1,
                     child: Column(
                       children: [
                         Text("Lập trình",
                         style: TextStyle(
                           fontSize: 28,
                           fontWeight: FontWeight.w500  
                         ),
                         ),
                         Text("Java cơ bản",
                         style: TextStyle(
                           fontSize: 28,
                           fontWeight: FontWeight.w500 
                         ),
                         ),
                         SizedBox(height: 10,),
                         Text("Cho người mới",
                         style: TextStyle(
                           fontSize: 20,
                         ),
                         ),
                          Text("bắt đầu",
                         style: TextStyle(
                           fontSize: 20,
                         ),
                         ),
                       ],
                     ),
                   ),
                ],
            ),
              ),
          ],
        ),
      ),
      
    );
  }
}