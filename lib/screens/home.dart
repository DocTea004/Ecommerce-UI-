import 'package:ecommerce_system/screens/best_sell.dart';
import 'package:ecommerce_system/screens/custom_app_bar.dart';
import 'package:ecommerce_system/screens/new_arrival.dart';
import 'package:ecommerce_system/screens/search_input.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{

  final bottomList = [
    'home',
    'menu',
    'heart',
    'user',
    'search',
  ];

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(),
            SearchInput(),
            NewArrival(),
            BestSell()
            ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items:bottomList.map(
            (e)=> BottomNavigationBarItem(
            label: e,
            icon:Image.asset(
              'assets/icons/$e.png',
              width: 25.0,
            )
          )).toList()
        
      ),
    );
  }
}