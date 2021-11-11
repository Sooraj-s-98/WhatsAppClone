import 'package:flutter/material.dart';
import 'package:firstapp/CustomUI/ContactCard.dart';
import 'package:firstapp/CustomUI/ButtonCard.dart';
import 'package:firstapp/Models/ChatModel.dart';
import 'package:firstapp/screens/CreateGroup.dart';

class SelectContact extends StatefulWidget {
  const SelectContact({Key? key}) : super(key: key);

  @override
  _SelectContactState createState() => _SelectContactState();
}

class _SelectContactState extends State<SelectContact> {
  @override
  Widget build(BuildContext context) {
    List<ChatModel> contacts = [
      ChatModel(name: "Anu", status: "A full stack developer"),
      ChatModel(name: "Evan", status: "Flutter Developer..........."),
      ChatModel(name: "Adithya", status: "Web developer..."),
      ChatModel(name: "Rahul", status: "App developer...."),
      ChatModel(name: "Aswin", status: "Rect developer.."),
      ChatModel(name: "Sreeraj", status: "Full Stack Web"),
      ChatModel(name: "Akhil", status: "Example work"),
      ChatModel(name: "Unni", status: "Sharing is caring"),
      ChatModel(name: "Ajay", status: "....."),
      ChatModel(name: "Bipin", status: "Love you Mom Dad"),
      ChatModel(name: "Aromal", status: "I find the bugs"),
    ];
    return Scaffold(
        appBar: AppBar(
          title: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "New Group",
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Add participants",
                style: TextStyle(
                  fontSize: 13,
                ),
              )
            ],
          ),
          actions: [
            IconButton(
                icon: Icon(
                  Icons.search,
                  size: 26,
                ),
                onPressed: () {}),
          ],
        ),
        body: ListView.builder(
            itemCount: contacts.length + 2,
            itemBuilder: (context, index) {
              if (index == 0) {
                return InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (builder) => CreateGroup()));
                  },
                  child: ButtonCard(
                    icon: Icons.group,
                    name: "New group",
                  ),
                );
              } else if (index == 1) {
                return ButtonCard(
                  icon: Icons.person_add,
                  name: "New contact",
                );
              }
              return ContactCard(
                contact: contacts[index - 2],
              );
            }));
  }
}
