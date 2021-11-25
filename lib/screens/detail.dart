import 'package:ecommerce_system/models/clothes.dart';
import 'package:ecommerce_system/screens/add_cart.dart';
import 'package:ecommerce_system/screens/clothes_info.dart';
import 'package:ecommerce_system/screens/clothes_item.dart';
import 'package:ecommerce_system/screens/detail_app_bar.dart';
import 'package:ecommerce_system/screens/size_list.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  
  final Clothes clothes;
  DetailPage(this.clothes); 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DetailAppBar(clothes),
            ClothesInfo(clothes),
            SizeList(),
            AddCart(clothes)
          ],
        ),
      )
    );
  }
}