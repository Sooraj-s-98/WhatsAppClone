import 'package:whatsappclone/CustomUI/ButtonCard.dart';
import 'package:whatsappclone/Models/ChatModel.dart';
import 'package:whatsappclone/screens/HomeScreen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late ChatModel sourceChat;
  List<ChatModel> chatmodels = [
    ChatModel(
      name: "sooraj",
      isGroup: false,
      currentMessage: "hi ",
      time: "9:00",
      icon: "person.svg",
      id: 1,
    ),
    ChatModel(
      name: "Akhil",
      isGroup: false,
      currentMessage: "hello ",
      time: "10:00",
      icon: "person.svg",
      id: 2,
    ),
    ChatModel(
      name: "sijin",
      isGroup: false,
      currentMessage: "Da ",
      time: "11:00",
      icon: "person.svg",
      id: 3,
    ),
    ChatModel(
      name: "Amma",
      isGroup: false,
      currentMessage: "ehh ",
      time: "9:00",
      icon: "person.svg",
      id: 4,
    ),
    ChatModel(
      name: "colossus",
      isGroup: true,
      currentMessage: "hi ",
      time: "1:00",
      icon: "groups.svg",
      id: 5,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: chatmodels.length,
          itemBuilder: (contex, index) => InkWell(
                onTap: () {
                  sourceChat = chatmodels.removeAt(index);
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => HomeScreen(
                                chatmodels: chatmodels,
                                sourchat: sourceChat,
                              )));
                },
                child: ButtonCard(
                  name: chatmodels[index].name,
                  icon: Icons.person,
                ),
              )),
    );
  }
}
