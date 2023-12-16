import 'package:flutter/material.dart';
import 'package:projectflutter/constant/const.dart';

class  HomeAppBar extends StatelessWidget {
  const HomeAppBar ({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical:25,horizontal: 20),
      color:Colors.white,
      child :Row(
        children: [
          Icon(
            Icons.sort,
            color:Color(mainColor),
            size:30,
            
          ),
          Padding(
            padding: EdgeInsets.only(left: 40),
            child:Text(
              "Dp Shop",
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color:Color(mainColor),

              ),
            
            )
          ),
          Spacer(),
          Badge(
            child: InkWell(
              onTap:(){
                Navigator.pushNamed(context,"cartPage");
              },
              child: Icon(
                Icons.shopping_bag_outlined,
                size:32,
                color:Color(mainColor),

              ),
            ),
          )
         
         
        
        ],
      )
      
    );
  }
}