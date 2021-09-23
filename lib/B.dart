import 'package:flutter/material.dart';
import 'd.dart';
import 'mycont.dart';
import 'mycontainer.dart';

class Talabet extends StatefulWidget {
  @override
  _TalabetState createState() => _TalabetState();
}

class _TalabetState extends State<Talabet> {
  List me = [
    {'myph': 'assets/images/k2.jpg'},
    {'myph': 'assets/images/k.jpg'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.white,
        actions: <Widget>[
          Icon(
            Icons.search,
            size: 30,
            color: Colors.black,
          )
        ],
        title: Column(
          children: <Widget>[
            Text(
              'delivering to',
              style: TextStyle(color: Colors.grey, fontSize: 18),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'gomhoria street',
                  style: TextStyle(fontSize: 20, color: Colors.orange[700]),
                ),
                Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.orange[700],
                  size: 30,
                )
              ],
            )
          ],
        ),
      ),
      drawer: Drawer(),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
            child: Text(
              'What would you like to order, Nour',
              style: TextStyle(
                  fontSize: 27,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            height: 170,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: me.length,
                itemBuilder: (context, index) {
                  return mycontainer(
                    me[index]['myph'],
                  );
                }),
          ),
          mtext('Geroceries and more'),
          mcont(),
          mtext('Free delivery'),
          mcont(),
          mtext('nearest to you'),
          mcont(),
          mtext('newly joined'),
          mcont(),
          mtext('in 30 mins'),
          mcont(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Center(
                    child: Text(
                      'view all resturant',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                  height: 60,
                  width: MediaQuery.of(context).size.width - 50,
                  decoration: BoxDecoration(
                      color: Colors.orange[900],
                      borderRadius: BorderRadius.circular(10)),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
