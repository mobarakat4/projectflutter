import 'package:flutter/material.dart';
import 'package:projectflutter/constant/const.dart';
class CartBottomNavBar extends StatelessWidget {
  const CartBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  BottomAppBar(
      height: 150,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "total",
                style: TextStyle(
                  color:Color(mainColor),
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  
                ),
              ),
              Text(
                "\$250",
                style: TextStyle(
                  color:Color(mainColor),
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  
                ),
              ),
            ],
            ),
             Container(
                alignment: Alignment.center,
                height: 50,
                width:double.infinity,
                decoration: BoxDecoration(
                  color: Color(mainColor),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Text(
                  "Check Out",
                  style: TextStyle(
                    color:Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,

                  ),
                ),
              )
          
        ]),
      ),
    );
  }
}