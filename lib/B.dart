import 'package:flutter/material.dart';
import 'package:project1/appbar.dart';

class Talabet extends StatefulWidget {
  @override
  _TalabetState createState() => _TalabetState();
}

class _TalabetState extends State<Talabet> {
  Widget mcont() {
    return Container(
      height: 300,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, index) {
            return listee();
          }),
    );
  }

  Widget mtext(String c) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 20),
      child: Text(
        c,
        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
      ),
    );
  }

  List me = [
    {'myph': 'assets/images/k2.jpg'},
    {'myph': 'assets/images/k.jpg'},
  ];
  Widget listee() {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Container(
        height: 280,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          children: <Widget>[
            Container(
              height: 150,
              width: MediaQuery.of(context).size.width - 30,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/v.jpg')),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Text(
                      'salla',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.motorcycle,
                      ),
                      Text(
                        ' within 30 mins',
                      )
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 288),
              child: Text(
                'Grocery',
                style: TextStyle(color: Colors.grey),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  Icon(Icons.sentiment_neutral),
                  Text(
                    'Good  ',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    'Delivery: free  ',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: Appb(),
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
