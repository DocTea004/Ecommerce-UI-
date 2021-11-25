import 'package:ecommerce_system/models/clothes.dart';
import 'package:ecommerce_system/screens/categories_list.dart';
import 'package:ecommerce_system/screens/clothes_item.dart';
import 'package:flutter/material.dart';

class NewArrival extends StatelessWidget {

  final clotheList = Clothes.generateClothes();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CategoriesList('New Arrival'),
          Container(
            height: 260,
            child:ListView.separated(
              padding: EdgeInsets.symmetric(horizontal:25.0),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => 
              ClothesItem(clotheList[index]),
              separatorBuilder: (_,index) => 
              SizedBox(width:10.0),
              itemCount: clotheList.length,
            )
          ),
     
        ],
      ),
    );
  }
}