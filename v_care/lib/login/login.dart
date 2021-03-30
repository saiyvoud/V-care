// import 'package:flutter/material.dart';

// import 'Register.dart';
// import 'home.dart';

// class Login extends StatefulWidget {
//   @override
//   _LoginState createState() => _LoginState();
// }

// class _LoginState extends State<Login> {
//   bool redEye = true;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Log In'),
//         backgroundColor: Colors.orange[600],
//       ),
//       body: Center(
//         child: SingleChildScrollView(
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: <Widget>[
//               showlogo(),
//               text(),
//               size(),
//               txtuser(),
//               size(),
//               txtpassword(),
//               size(),
//               btnlogin(),
//               size(),
//               Container(
//                 width: 250.0,
//                 child: RaisedButton(
//                   color: Colors.indigo[800],
//                   onPressed: () {
//                     Navigator.of(context).push(
//                         MaterialPageRoute(builder: (context) => Registers()));
//                   },
//                   child: Text(
//                     'Register',
//                     style: TextStyle(color: Colors.white),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Text text() {
//     return Text(
//       'User',
//       style: TextStyle(
//           fontSize: 20, color: Colors.orange[700], fontWeight: FontWeight.bold),
//     );
//   }

//   SizedBox size() {
//     return SizedBox(
//       width: 8.0,
//       height: 16.0,
//     );
//   }

//   Container btnlogin() {
//     return Container(
//       width: 250.0,
//       child: RaisedButton(
//         color: Colors.orange[800],
//         onPressed: () {
//
//         },
//         child: Text(
//           'Login',
//           style: TextStyle(color: Colors.white),
//         ),
//       ),
//     );
//   }

//   Container txtpassword() {
//     return Container(
//       width: 250.0,
//       child: TextField(
//         obscureText: redEye,
//         decoration: InputDecoration(
// suffixIcon: IconButton(
//     icon: Icon(
//       redEye
//           ? Icons.remove_red_eye_outlined
//           : Icons.remove_red_eye_sharp,
//       color: Color.alphaBlend(Colors.black, Colors.white),
//     ),
//     onPressed: () {
//       setState(() {
//         redEye = !redEye;
//       });
//     }),
//           prefixIcon: Icon(Icons.lock),
//           labelStyle:
//               TextStyle(color: Color.alphaBlend(Colors.black, Colors.white)),
//           labelText: 'Password:',
//           enabledBorder: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(30),
//               borderSide: BorderSide(
//                   color: Color.alphaBlend(Colors.black, Colors.white))),
//           focusedBorder: OutlineInputBorder(
//               borderSide: BorderSide(
//                   color: Color.alphaBlend(Colors.black, Colors.white))),
//         ),
//       ),
//     );
//   }

//   Container txtuser() {
//     return Container(
//       width: 250.0,
//       child: TextField(
//         decoration: InputDecoration(
//           prefixIcon: Icon(Icons.account_box),
//           labelStyle:
//               TextStyle(color: Color.alphaBlend(Colors.black, Colors.white)),
//           labelText: 'User:',
//           enabledBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(30),
//             borderSide:
//                 BorderSide(color: Color.alphaBlend(Colors.black, Colors.white)),
//           ),
//           focusedBorder: OutlineInputBorder(
//               borderSide: BorderSide(
//                   color: Color.alphaBlend(Colors.black, Colors.white))),
//         ),
//       ),
// //txtpass
//     );
//   }

//   Container showlogo() {
//     return Container(
//       width: 120.0,
//       child: Image.asset('images/User.png'),
//     );
//   }
// }

// // class register extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       title: 'V_care',
// //       home: Registers(),
// //     );
// //   }
// // }

// class Home extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'V_care',
//       home: screenhome(),
//     );
//   }
// }

import 'package:flutter/material.dart';

import 'component/body_login.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: BodyLogin(),
    );
  }
}
