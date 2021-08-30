// import 'package:flutter/material.dart';
// import 'package:moneybook/task_page.dart';
//
// class signup extends StatefulWidget {
//   const signup({Key? key}) : super(key: key);
//
//   @override
//   _signupState createState() => _signupState();
// }
//
// class _signupState extends State<signup> {
//   get passwordController => null;
//
//   get nameController => null;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: IconButton(
//           onPressed: () {},
//           icon: Icon(Icons.menu),
//         ),
//         title: Text("watch & earn"),
//       ),
//       body: Column(
//         children: <Widget>[
//           Expanded(
//             child: ListView(
//               children: <Widget>[
//                 Container(
//                     width: MediaQuery.of(context).size.width,
//                     alignment: Alignment.center,
//                     padding: EdgeInsets.all(10),
//                     child: Text(
//                       'Sign up to watch & earn',
//                       style: TextStyle(
//                           color: Colors.blue,
//                           fontWeight: FontWeight.w500,
//                           fontSize: 10),
//                     )),
//                 Container(
//                     width: MediaQuery.of(context).size.width,
//                     alignment: Alignment.center,
//                     padding: EdgeInsets.all(10),
//                     child: Text(
//                       'Sign up',
//                       style: TextStyle(fontSize: 20),
//                     )),
//                 Container(
//                   width: MediaQuery.of(context).size.width,
//                   padding: EdgeInsets.all(10),
//                   child: TextField(
//                     keyboardType: TextInputType.name,
//                     controller: nameController,
//                     decoration: InputDecoration(
//                         border: OutlineInputBorder(),
//                         labelText: 'First Name',
//                         prefixIcon: Icon(Icons.person)),
//                   ),
//                 ),
//                 Container(
//                   width: MediaQuery.of(context).size.width,
//                   padding: EdgeInsets.all(10),
//                   child: TextField(
//                     keyboardType: TextInputType.name,
//                     controller: nameController,
//                     decoration: InputDecoration(
//                         border: OutlineInputBorder(),
//                         labelText: 'Last Name',
//                         prefixIcon: Icon(Icons.person)),
//                   ),
//                 ),
//                 Container(
//                   width: MediaQuery.of(context).size.width,
//                   padding: EdgeInsets.all(10),
//                   child: TextField(
//                     keyboardType: TextInputType.emailAddress,
//                     controller: nameController,
//                     decoration: InputDecoration(
//                         border: OutlineInputBorder(),
//                         labelText: 'Email',
//                         prefixIcon: Icon(Icons.mail)),
//                   ),
//                 ),
//                 Container(
//                   width: MediaQuery.of(context).size.width,
//                   padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
//                   child: TextField(
//                     keyboardType: TextInputType.visiblePassword,
//                     obscureText: true,
//                     controller: passwordController,
//                     decoration: InputDecoration(
//                         border: OutlineInputBorder(),
//                         labelText: 'Password',
//                         prefixIcon: Icon(Icons.password)),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 15,
//                 ),
//                 Container(
//                     width: MediaQuery.of(context).size.width,
//                     height: 50,
//                     padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
//                     child: ElevatedButton(
//                       child: Text('sign up'),
//                       onPressed: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(builder: (context) => taskpage()),
//                         );
//                       },
//                     )),
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
