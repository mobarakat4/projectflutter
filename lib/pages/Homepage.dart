import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '/../Widgets/HomeAppBar.dart';
import '/../Widgets/CategoriesWidget.dart';
import '/../Widgets/ItemsWidget.dart';
import '/../constant/const.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView(
        children:[
          HomeAppBar(),
          Container(
            // height:500,
            padding: EdgeInsets.only(top:15),  
            decoration: BoxDecoration(
              color:Color(0xFFEDECF2),
              borderRadius: BorderRadius.only(
                topLeft:Radius.circular(35),
                topRight:Radius.circular(35),
              )
            ),
            child: Column(children: [
              Container(
                margin:EdgeInsets.symmetric(horizontal: 15),
                padding:EdgeInsets.symmetric(horizontal: 15),
                height:50,
                decoration: BoxDecoration(
                  color:Colors.white,
                  borderRadius: BorderRadius.circular(30),

                ),
                child: Row(children: [
                  Container(
                    margin:EdgeInsets.only(left: 5),
                    height: 50,
                    width: 300,
                    child: TextFormField(
                      decoration: InputDecoration(
                        border:InputBorder.none,
                        hintText:"Search here...",
                      )
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.camera_alt,
                    size:27,
                    color:Color(mainColor),
                    

                    ), 
                ]),

              ),
              Container(
                alignment:Alignment.centerLeft ,
                margin:EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 10,
                ),
                child:Text(
                  'Categories',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color:Color(mainColor),

                  ),
                ),

              ),
              CategoriesWidgit(),
              Container(
                alignment: Alignment.centerLeft,
                margin:EdgeInsets.symmetric(vertical: 20,horizontal: 10),
                child: Text("Best Selling",
                  style:TextStyle(
                    fontSize: 25,
                    fontWeight:FontWeight.bold,
                    color:Color(mainColor),
                  )  
                ),
              ),
              ItemsWidget(),
            ]),
          ),
          
        ]
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        height: 70,
        onTap: (index){},
        color: Color(mainColor),
         items: [
          Icon(Icons.home,size: 30,color: Colors.white,),
          Icon(CupertinoIcons.cart_fill,size: 30,color: Colors.white,),
          Icon(Icons.list,size: 30,color: Colors.white,),
         ],
      ),

    );
  }
}