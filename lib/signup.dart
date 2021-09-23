import 'package:flutter/material.dart';
import 'package:project1/signin.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  GlobalKey<FormState> mynewkey = GlobalKey<FormState>();
  Widget box({String x, String x2, IconData x3, Function x4, bool x5}) {
    return Padding(
      padding: const EdgeInsets.only(right: 20, left: 20, top: 30),
      child: Material(
        elevation: 5,
        child: TextFormField(
          obscureText: x5,
          validator: x4,
          decoration: InputDecoration(
              fillColor: Colors.white,
              contentPadding: EdgeInsets.symmetric(horizontal: 5),
              hintText: x,
              labelText: x2,
              labelStyle: TextStyle(color: Colors.grey[600]),
              prefixIcon: Icon(
                x3,
                color: Colors.black,
              )),
        ),
      ),
    );
  }

  _newvalid() {
    if (!mynewkey.currentState.validate()) {
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.orange,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              'Create Account',
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Form(
              key: mynewkey,
              child: Column(
                children: <Widget>[
                  box(
                    x: 'plaese enter your name',
                    x2: 'name',
                    x3: Icons.person_outline,
                    x5: false,
                    x4: (value) {
                      if (value.isEmpty) {
                        return 'user name reqired';
                      } else
                        return null;
                    },
                  ),
                  box(
                    x: 'plaese enter your email',
                    x2: 'email',
                    x3: Icons.mail,
                    x5: false,
                    x4: (value) {
                      if (value.isEmpty) {
                        return 'Email reqired';
                      } else
                        return null;
                    },
                  ),
                  box(
                    x: 'plaese enter your password',
                    x2: 'password',
                    x3: Icons.lock_outline,
                    x5: true,
                    x4: (value) {
                      if (value.isEmpty) {
                        return 'password reqired';
                      } else
                        return null;
                    },
                  ),
                  box(
                    x: 'plaese confirm your password',
                    x2: 'confirm',
                    x3: Icons.lock_open,
                    x5: true,
                    x4: (value) {
                      if (value.isEmpty) {
                        return ' confirm passwored reqired';
                      } else
                        return null;
                    },
                  ),
                ],
              )),
          Padding(
            padding: const EdgeInsets.only(top: 40, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                InkWell(
                  onTap: () {
                    _newvalid();
                  },
                  child: Container(
                    height: 50,
                    width: 140,
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(40)),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Log in  ',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 130,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Don\'t have an account?',
                style: TextStyle(color: Colors.grey, fontSize: 15),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Login()));
                },
                child: Text(
                  ' sign up',
                  style: TextStyle(color: Colors.orange, fontSize: 15),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
