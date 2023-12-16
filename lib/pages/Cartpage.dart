// import "dart:ffi";

import "package:flutter/material.dart";
import "package:projectflutter/Widgets/CartAppBar.dart";
import "package:projectflutter/Widgets/CartBottomNavBar.dart";
import "package:projectflutter/Widgets/CartItemsSamples.dart";
import "package:projectflutter/constant/const.dart";
class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CartAppBar(),
            Container(
              // height: 700,
              padding: EdgeInsets.only(top:15),
              decoration:BoxDecoration(
                color:Color(mainColor),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                )
              ),
              child: Column(children: [
                CartItemsSamples(),
                Container(
                  margin:EdgeInsets.symmetric(horizontal: 15,vertical: 20),
                  padding: EdgeInsets.all(10),
        
                  child:Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color:Color(mainColor),
                          borderRadius: BorderRadius.circular(20),
        
                        ),
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child:Text(
                          "add cobon",
                          style:TextStyle(
                            color:Color(mainColor),
                            fontWeight: FontWeight.bold,
        
                          )
                        )
                      ),
                    ],
                  )
                ),
               
                
              ]),
            )
            
          ],
        ),
      ),
      bottomNavigationBar: CartBottomNavBar(),
    );
  }
}