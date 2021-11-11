import 'package:whatsAppClone/CustomUI/CustomCard.dart';
import 'package:whatsAppClone/Models/ChatModel.dart';
import 'package:whatsAppClone/screens/SelectContact.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatModel> chats = [
    ChatModel(
      name: "sooraj",
      isGroup: false,
      currentMessage: "hi ",
      time: "9:00",
      icon: "person.svg",
    ),
    ChatModel(
      name: "Akhil",
      isGroup: false,
      currentMessage: "hello ",
      time: "10:00",
      icon: "person.svg",
    ),
    ChatModel(
      name: "sijin",
      isGroup: false,
      currentMessage: "Da ",
      time: "11:00",
      icon: "person.svg",
    ),
    ChatModel(
      name: "Amma",
      isGroup: false,
      currentMessage: "ehh ",
      time: "9:00",
      icon: "person.svg",
    ),
    ChatModel(
      name: "colossus",
      isGroup: true,
      currentMessage: "hi ",
      time: "1:00",
      icon: "groups.svg",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (builder) => SelectContact()));
        },
        child: Icon(Icons.chat),
      ),
      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (context, index) => CustomCard(chatModel: chats[index]),
      ),
    );
  }
}
