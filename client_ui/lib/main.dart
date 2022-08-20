import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:hexcolor/hexcolor.dart';
import 'package:client_ui/chat_screen.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mayday',
      home: const ChatScreen(title: 'SORA'),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key, required this.title}) : super(key: key);
//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//       title: Text(
//         widget.title,
//         style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
//       ),
//       backgroundColor: Color.fromARGB(255, 255, 255, 255),
//       leading: IconButton(
//         onPressed: () {},
//         icon: const Icon(
//           Icons.arrow_back_ios,
//           color: Color.fromARGB(255, 9, 67, 255),
//         ),
//       ),
//       actions: [
//         Row(
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: IconButton(
//                 onPressed: () {},
//                 icon: const Icon(
//                   Icons.autofps_select_rounded,
//                   color: Color.fromARGB(255, 9, 67, 255),
//                 ),
//               ),
//             ),
//             Image.asset(
//               'images/face1.png',
//               fit: BoxFit.fill,
//             ),
//           ],
//         ),
//       ],
//     ));
//   }
// }
