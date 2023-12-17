
import "package:clippy_flutter/clippy_flutter.dart";
import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:flutter_rating_bar/flutter_rating_bar.dart";

import "package:projectflutter/Widgets/ItemAppBar.dart";
import "package:projectflutter/constant/const.dart";

import "../Widgets/ItemBottomNavBar.dart";

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(mainColor),
      body:ListView(
        children: [
          ItemAppBar(),
          Padding(padding: EdgeInsets.all(16),
            child: Image.asset("images/1.png",height: 300,),
          ),
          Arc(
            edge: Edge.TOP,
            arcType: ArcType.CONVEY,
            height: 30,
            child:Container(
              width: double.infinity,
              // height: double.infinity,
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(children: [
                  Padding(padding: EdgeInsets.only(top: 50,bottom: 20),
                    child:Row(
                      children: [
                        Text(
                          "product title",
                          style: TextStyle(fontSize: 28,
                          color: Color(mainColor),
                          fontWeight: FontWeight.bold),
                        )
                      ],
                    )
                  ),
                //  Padding(padding: EdgeInsets.only(top:5,bottom: 10),
                    
                //   ) 
                Padding(padding: EdgeInsets.only(top: 5,bottom: 10),
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                      children: [
                        RatingBar.builder(
                          // ratingWidget: ratingWidget,
                          onRatingUpdate: (index){},
                          initialRating: 4,
                          minRating: 1,
                          direction: Axis.horizontal,
                          itemCount: 5,
                          itemSize: 20,
                          itemPadding: EdgeInsets.symmetric(horizontal: 4),
                          itemBuilder: (context,_)=>Icon(
                            Icons.favorite,
                            color:Color(mainColor)
                          ),
                          ),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(5),
                                margin: EdgeInsets.symmetric(horizontal: 6),
                                decoration: BoxDecoration(
                                  color:Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 3,
                                    blurRadius: 10,
                                    offset: Offset(0, 3),
                                  )]
                                ),
                                child: Icon(
                                  CupertinoIcons.minus,
                                )
                              ),
                              Container(
                                margin:EdgeInsets.symmetric(horizontal: 5,vertical: 10),
                                child: Text(
                                  "01",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color:Color(mainColor),
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(5),
                                margin: EdgeInsets.symmetric(horizontal: 6),
                                decoration: BoxDecoration(
                                  color:Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 3,
                                    blurRadius: 10,
                                    offset: Offset(0, 3),
                                  )]
                                ),
                                child: Icon(
                                  CupertinoIcons.plus,
                                )
                              ),
                            ],
                          ),
                    
                      ],
                    )
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 12,),
                    child: Text(
                      "this is detail of the product pla pla .... pla .dsfdfslkfhkldjkldsjfdskfjdljfldskfdfjdslkfdsjf fjdks jdlkf dlkfj dfd jlkdfd kjdlfk djd...",
                      style: TextStyle(
                        color:Color(mainColor),
                        fontSize: 17,
                      ),
                    ),
                  )
                ]),


              ),

            )
            
          )
        ],

      ),
      bottomNavigationBar: ItemBottomNavBar(),
    );
  }
}

