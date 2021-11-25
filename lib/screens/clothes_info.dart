import 'package:ecommerce_system/models/clothes.dart';
import 'package:flutter/material.dart';

class ClothesInfo extends StatelessWidget {
  final Clothes clothes;
  ClothesInfo(this.clothes);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 10
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [
              Text(
                '${clothes.title}  ${clothes.subtitle}',
                style:TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize:25.0
                )
              ),
              Container(
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.9),
                  shape: BoxShape.circle
                ),
                child:Icon(
                  Icons.favorite,
                  color:Colors.red,
                  size:15.0
                )
              )
            ],
          ),
          Padding(
            padding:EdgeInsets.only(
              top: 5,
              bottom: 10
            ),
            child: Row(
              children:[
                Icon(
                  Icons.star_border,
                  color:Theme.of(context).primaryColor
                ),
                Text(
                  '5.5 (2.9k)',
                  style:TextStyle(
                    fontWeight:FontWeight.bold,
                    color:Colors.grey
                  )
                )
              ]
            ),
          ),
          RichText(
            text:TextSpan(
              children: [
                TextSpan(
                  text:"TensorFlow is a free and open-source software library for machine learning and artificial intelligence. It can be used across a range of tasks but has a particular focus on training and inference of deep neural networks.",
                  style:TextStyle(
                    color: Colors.grey.withOpacity(0.7),
                    height: 1.5
                  )
                ),
                TextSpan(
                  text:"Read More"
                )
              ]
            )
          ),
          Row(),
        ],
      ),
    );
  }
}