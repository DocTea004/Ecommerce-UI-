import 'package:ecommerce_system/models/clothes.dart';
import 'package:ecommerce_system/screens/detail.dart';
import 'package:flutter/material.dart';

class ClothesItem extends StatelessWidget {
  
  final Clothes clothes;

  ClothesItem(this.clothes);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0)
        ),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children:[
                Container(
                  child:GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: 
                        (context)=> DetailPage(clothes)
                        )
                      );
                    },
                  ),
                  margin: EdgeInsets.all(8.0),
                  height: 170.0,
                  width: 200.0,
                  decoration: BoxDecoration(
                    borderRadius:BorderRadius.circular(15.0),
                    image:DecorationImage(
                      image:AssetImage(clothes.imageUrl),
                      fit: BoxFit.fitHeight
                    )
                  ),
                ),
                 Positioned(
              right: 20.0,
              top: 15.0,
              child:Container(
                decoration:BoxDecoration(
                  color:Colors.white.withOpacity(0.9),
                  shape: BoxShape.circle
                ),
                child:Icon(
                  Icons.favorite,
                  color: Colors.red,
                  size: 15.0,
                )
              )
            )
              ]
            ),
           Text(
            clothes.title,
            style: TextStyle(
              
            ),
           ),
           Text(
             clothes.subtitle,
             style: TextStyle(
               fontWeight: FontWeight.bold,
               height:1.5
             ),
           ),
           Text(
             clothes.price,
             style: TextStyle(
               height:1.5,
               fontWeight:FontWeight.bold
             )
           )
          ],
        )
      ),
    );
  }
}