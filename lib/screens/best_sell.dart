import 'package:ecommerce_system/screens/categories_list.dart';
import 'package:flutter/material.dart';

class BestSell extends StatelessWidget{

  @override

  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [CategoriesList("Best of Sell"),
          Card(
            margin: EdgeInsets.symmetric(horizontal: 25.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0)
            ),
            child: Stack(
              children: [
                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Row(
                  children:[
                    ClipRRect(
                      borderRadius:BorderRadius.circular(15.0),
                      child:Image.asset(
                        "assets/images/arrival.jpg",
                        width:80.0 ,
                      )                     
                    ),
                    Column(
                      crossAxisAlignment:CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Dex Men Oversize",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            height: 1.5
                          ),
                        ),
                        Text("T-Shirt",
                         style: TextStyle(
                            fontWeight: FontWeight.bold,
                            height: 1.5
                          ),),
                        Text("GH₵.79.99", style: TextStyle(
                            fontWeight: FontWeight.bold,
                            height: 1.5,
                            color: Theme.of(context).primaryColor
                          ),)
                      ]
                    )
                  ]
                ),
                ),
                Positioned(
                  child:Container(
                    padding: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color:Colors.white.withOpacity(0.9),
                      shape: BoxShape.circle
                    ),
                    child:Icon(
                    Icons.favorite,
                    color: Colors.red,
                    size: 15,
                  )
                  ),
                  top: 0,
                  right:0,
                  
                )
              ],
            ),
          )
        ],
      ),
    ) ;
  }
}