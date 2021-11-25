import 'package:ecommerce_system/screens/detail.dart';
import 'package:ecommerce_system/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main()=>runApp(Myapp());

class Myapp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent
    ));
    // TODO: implement build
    return MaterialApp(
      title: 'Ecommerce Dev',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor:Color(0xFFFFAFAFA),
        primaryColor: Color(0xFFFFBD00),
        accentColor: Color(0xFFFFBC7)
      ),
      home: HomePage()
    );
  }
}