// import 'package:flutter/material.dart';
// import 'package:project1/signup.dart';

// class Login extends StatefulWidget {
//   @override
//   _LoginState createState() => _LoginState();
// }

// class _LoginState extends State<Login> {
//   GlobalKey<FormState> mystate = GlobalKey<FormState>();
//   Widget loginbox(
//       {String x, IconData x2, String x3, String x4, bool v, Function myv}) {
//     return Padding(
//       padding: const EdgeInsets.only(top: 30, right: 15, left: 15),
//       child: Directionality(
//         textDirection: TextDirection.ltr,
//         child: Material(
//           elevation: 5,
//           child: TextFormField(
//             cursorColor: Colors.orange,
            
//             obscureText: v,
//             decoration: InputDecoration(
//                 labelText: x4,
//                 labelStyle: TextStyle(
//                   color: Colors.black,
//                 ),
//                 hintText: x,
//                 contentPadding: EdgeInsets.symmetric(horizontal: 5),
//                 prefixIcon: Icon(
//                   x2,
//                   color: Colors.black,
//                 ),
//                 suffix: Text(
//                   x3,
//                   style: TextStyle(
//                     color: Colors.orange,
//                     fontSize: 15,
//                   ),
//                 )),
//           ),
//         ),
//       ),
//     );
//   }

//   _validation() {
//     if (!mystate.currentState.validate()) {
//       return;
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ListView(
//         children: <Widget>[
//           SizedBox(
//             height: 200,
//           ),
//           Padding(
//             padding: const EdgeInsets.only(left: 20),
//             child: Text(
//               'Login',
//               style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(top: 20, left: 20),
//             child: Text(
//               'Please sign in to continue.',
//               style: TextStyle(
//                   color: Colors.grey,
//                   fontSize: 25,
//                   fontWeight: FontWeight.bold),
//             ),
//           ),
//           SizedBox(
//             height: 20,
//           ),
//           Form(
//               key: mystate,
//               child: Column(
//                 children: <Widget>[
//                   loginbox(
//                     x: 'Please enter your email',
//                     x2: Icons.email,
//                     x3: '',
//                     x4: 'Email',
//                     v: false,
//                     myv: (Value) {
//                       if (Value.isEmpty) {
//                         return 'user name reqierd';
//                       } else
//                         return null;
//                     },
//                   ),
//                   loginbox(
//                     x: 'Please enter your password',
//                     x2: Icons.lock,
//                     x3: 'Forgot',
//                     x4: 'password',
//                     v: true,
//                     myv: (Value) {
//                       if (Value.isEmpty || Value.toString().length < 8) {
//                         return 'password is reqiered & must be more 8';
//                       } else
//                         return null;
//                     },
//                   ),
//                   SizedBox(
//                     height: 30,
//                   ),
//                 ],
//               )),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.end,
//               children: <Widget>[
//                 InkWell(
//                   onTap: () {
//                     _validation();
//                   },
//                   child: Container(
//                     height: 50,
//                     width: 140,
//                     decoration: BoxDecoration(
//                         color: Colors.orange,
//                         borderRadius: BorderRadius.circular(40)),
//                     child: Center(
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: <Widget>[
//                           Text(
//                             'Log in  ',
//                             style: TextStyle(color: Colors.white, fontSize: 18),
//                           ),
//                           Icon(
//                             Icons.arrow_forward,
//                             color: Colors.white,
//                           )
//                         ],
//                       ),
//                     ),
//                   ),
//                 )
//               ],
//             ),
//           ),
//           SizedBox(
//             height: 130,
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               Text(
//                 'Don\'t have an account?',
//                 style: TextStyle(color: Colors.grey, fontSize: 15),
//               ),
//               InkWell(
//                 onTap: () {
//                   Navigator.push(context,
//                       MaterialPageRoute(builder: (context) => Signup()));
//                 },
//                 child: Text(
//                   ' sign up',
//                   style: TextStyle(color: Colors.orange, fontSize: 15),
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
