import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:homework_day5/detail.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple.shade500,
        leading: IconButton(icon: Icon(Icons.menu), onPressed: () {  },),
        title: Text("MyShop"),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert)),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Center(
              child: Badge(
                badgeContent: Text("0",style: TextStyle(color: Colors.white),),
                badgeColor: Colors.purple.shade500,
                child: Icon(Icons.shopping_cart),
              ),
            ),
          ),
        ],
      ),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: [
         Card(
           shape: RoundedRectangleBorder(
             borderRadius: BorderRadius.circular(20),
           ),
           child: Stack(
             
             children: [
               Ink.image(
                image: NetworkImage("https://i-vnexpress.vnecdn.net/2016/12/19/ao-tu-nhan-6224-1482113150_m_460x0.jpg"),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Details()));
                  },
                ),
                ),
                Positioned(
                  top: 120,
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(Icons.favorite,color: Colors.purple,),
                        Text("Demo",style: TextStyle(color: Colors.white),),
                        Icon(Icons.shopping_cart,color: Colors.purple,)
                      ],
                    ),
                    width: 172,
                    height: 55,
                    decoration: BoxDecoration( 
                      color: Colors.black.withOpacity(0.5),
                      borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20))
                    ),
                  ),
                ), 
             ],
           ),
         ),
          Card(
           shape: RoundedRectangleBorder(
             borderRadius: BorderRadius.circular(20),
           ),
           child: Stack(
             children: [
               Ink.image(
                image: NetworkImage("https://i-vnexpress.vnecdn.net/2016/12/19/ao-tu-nhan-6224-1482113150_m_460x0.jpg"),
                child: InkWell(
                  onTap: () {
                    
                  },
                ),
                ),
                Positioned(
                  top: 120,
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(Icons.favorite,color: Colors.purple,),
                        Text("Demo",style: TextStyle(color: Colors.white),),
                        Icon(Icons.shopping_cart,color: Colors.purple,)
                      ],
                    ),
                    width: 172,
                    height: 55,
                    decoration: BoxDecoration(  
                      color: Colors.black.withOpacity(0.5),
                      borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20))
                    ), 
                  ),
                ),   
             ],
           ),
         ),
         Card(
           shape: RoundedRectangleBorder(
             borderRadius: BorderRadius.circular(20),
           ),
           child: Stack(
             children: [
               Ink.image(
                image: NetworkImage("https://i-vnexpress.vnecdn.net/2016/12/19/ao-tu-nhan-6224-1482113150_m_460x0.jpg"),
                child: InkWell(
                  onTap: () {
                    
                  },
                ),
                ),
                Positioned(
                  top: 120,
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(Icons.favorite,color: Colors.purple,),
                        Text("Demo",style: TextStyle(color: Colors.white),),
                        Icon(Icons.shopping_cart,color: Colors.purple,)
                      ],
                    ),
                    width: 172,
                    height: 55,
                    decoration: BoxDecoration( 
                      color: Colors.black.withOpacity(0.5),
                      borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20))
                    ),
                  ),
                ),  
             ],
           ),
         ),
        ],
      ),
    );
  }
}