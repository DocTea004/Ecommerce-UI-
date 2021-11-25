import 'package:flutter/material.dart';

class SearchInput extends StatelessWidget{

  final tagList = ['Woman' , 'T-Shirt','Dress'];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 25.0,
        left:25.0,
        right: 25.0
      ),
      child: Column(
        children: [
          Row(
            children:[
              Flexible(
                flex: 1,
                child:TextField(
                cursorColor: Colors.grey,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide.none
                  ),
                  hintText: 'Search Aesthetic Shirt',
                  hintStyle: TextStyle(
                    fontSize: 18.0,
                    color: Colors.grey
                  ),
                  prefixIcon: Container(
                    child:Image.asset(
                      'assets/icons/search.png',
                      width: 20.0,
                      ),
                  )
                ),
              )
              ),
              Container(
                margin:EdgeInsets.only(left: 10),
                padding: EdgeInsets.all(15),
                decoration:BoxDecoration(
                  color:Theme.of(context).primaryColor,
                  borderRadius:BorderRadius.circular(15.0)
                ),
                child: Image.asset(
                  'assets/icons/filter.png',
                  width: 25.0,
                ),
              )
            ]
          ),
          Row(
            children:tagList
            .map((e) => Container(
              margin:EdgeInsets.only(top: 10, right: 10),
              padding: EdgeInsets.all(10),
              decoration:BoxDecoration(
                borderRadius:BorderRadius.circular(10.0),
                color: Theme.of(context).accentColor
              ),
              child:Text(
                e,
                style:TextStyle(
                  color:Colors.grey
                )
              )
            ))
            .toList()
          )
        ],
      ),
    );
  }
}