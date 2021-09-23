import 'package:flutter/material.dart';

Widget Appb() {
  return AppBar(
    iconTheme: IconThemeData(color: Colors.black),
    elevation: 0,
    backgroundColor: Colors.white,
    actions: <Widget>[Icon(Icons.search,size: 30,color: Colors.black,)],
    title: Column(children: <Widget>[
      Text('delivering to',style: TextStyle(color: Colors.grey,fontSize: 18),),
      Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
        Text('gomhoria street',style: TextStyle(fontSize: 20,color: Colors.orange[700]),),
        Icon(Icons.keyboard_arrow_down,color: Colors.orange[700],size: 30,)
      ],)
    ],),
  );
}
