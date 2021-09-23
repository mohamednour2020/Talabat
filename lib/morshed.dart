import 'package:flutter/material.dart';

class MM extends StatefulWidget {
  @override
  _MMState createState() => _MMState();
}

class _MMState extends State<MM> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(color: Colors.white),
              height: 200,
              width: MediaQuery.of(context).size.width - 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width / 4,
                    decoration: BoxDecoration(color: Colors.teal),
                  ),
                  Column(
                    children: <Widget>[
                      Padding(
                        padding:
                            const EdgeInsets.only(bottom: 0, left: 20, top: 1),
                        child: Text(
                          'four season hotel in cairo at',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 150, top: 10),
                        child: Container(
                          height: 20,
                          width: 80,
                          decoration: BoxDecoration(color: Colors.teal),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 150, top: 10),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.location_on,
                              color: Colors.grey,
                            ),
                            Text(
                              'gareden city',
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 120, top: 10),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.chat,
                              size: 35,
                            ),
                            Column(
                              children: <Widget>[
                                Text(
                                  'Excellent     ',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  '  1556 Reviews',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 185, top: 30),
                        child: Text(
                          'US \$ 60',
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.green,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
