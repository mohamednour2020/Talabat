import 'package:flutter/material.dart';
import 'package:project1/B.dart';
import 'package:project1/morshed.dart';
import 'package:project1/signin.dart';

main(List<String> args) {
  runApp(Myapp());
}
class Myapp extends StatefulWidget {
  @override
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MM(),
      
    );
  }
}
