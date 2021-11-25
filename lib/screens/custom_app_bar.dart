import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.only(
        top:MediaQuery.of(context).padding.top,
        left: 25,right: 25
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
         Row(
           children: [
              RichText(text: TextSpan(
            children:[
              TextSpan(
                text:"Daniel, What are you\n looking for",
                style: TextStyle(
                  color: Colors.black,
                  fontSize:22,
                  fontWeight: FontWeight.bold
                )
              ),
              TextSpan(
                text:"👀",
                style: TextStyle(
                  fontSize:22
                )
              )
            ]
          ))
           ],
         ),
         Stack(
        children: [
          Container(
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color:Colors.white,
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3)
                )
              ]
            ),
            child:Icon(
              Icons.shopping_cart_outlined,
              color:Colors.grey
              )
          ),
          Positioned(
            right: 10.0,
            top:10.0,
            child: Container(
            width: 10.0,
            height: 10.0,
            decoration:BoxDecoration(
              color:Theme.of(context).primaryColor,
              shape: BoxShape.circle
            )
          ))
        ],
      )
        ],
      ),
      
    );
  }
}