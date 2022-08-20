import 'package:flutter/material.dart';
import 'package:client_ui/messages/message.dart';
import 'package:client_ui/messages/chat_bubbles.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;

fetch() async {
  final response = await http.get(Uri.parse('http://localhost:8080/send'));
  print(response.body);
}

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Sora',
          style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
        ),
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Color.fromARGB(255, 9, 67, 255),
          ),
        ),
        actions: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.autofps_select_rounded,
                    color: Color.fromARGB(255, 9, 67, 255),
                  ),
                ),
              ),
              Image.asset(
                'images/face1.png',
                fit: BoxFit.fill,
              ),
            ],
          ),
        ],
      ),
      body: FutureBuilder(
        future: fetch(),
        builder: (context, AsyncSnapshot snapshot) {
          return TextButton.icon(
            onPressed: () {
              fetch();
            },
            style: TextButton.styleFrom(
              primary: Color.fromARGB(255, 253, 0, 0),
              minimumSize: Size(155, 40),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
            ),
            icon: const Icon(Icons.add),
            label: const Text('눌러라'),
          );
        },
      ),
    );
  }
}
