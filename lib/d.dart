import 'package:flutter/material.dart';
Widget mtext(String c) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 20),
      child: Text(
        c,
        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
      ),
    );
  }