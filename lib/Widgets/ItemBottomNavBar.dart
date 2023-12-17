import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projectflutter/constant/const.dart';
class ItemBottomNavBar extends StatelessWidget {
  const ItemBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  BottomAppBar(
      child: Container(
        height: 70,
        padding: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [BoxShadow(
            color: Colors.green.withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 10,
            offset: Offset(0,3),


          )]
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "\$120",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Color(mainColor)
              ),
            ),
            ElevatedButton.icon(
              onPressed: (){},
              icon: Icon(CupertinoIcons.cart_badge_plus),
              label: Text(
                "Add to cart",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}