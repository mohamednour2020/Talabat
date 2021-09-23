import 'package:flutter/material.dart';

Widget mycontainer(String x) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 150,
        width: 155,
        decoration: BoxDecoration(
            image: DecorationImage(fit: BoxFit.cover, image: AssetImage(x)),
            color: Colors.teal,
            borderRadius: BorderRadius.circular(7)),
      ),
    );
  }