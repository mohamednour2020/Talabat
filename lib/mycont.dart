import 'package:flutter/material.dart';

import 'card.dart';
Widget mcont() {
    return Container(
      height: 300,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, index) {
            return Mycard();
          }),
    );
  }