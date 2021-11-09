import 'package:firstapp/Models/ChatModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class IndividualPage extends StatefulWidget {
  const IndividualPage({Key? key, required this.chatModel}) : super(key: key);
  final ChatModel chatModel;
  @override
  _IndividualPageState createState() => _IndividualPageState();
}

class _IndividualPageState extends State<IndividualPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        leadingWidth: 70,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.arrow_back,
                size: 24,
              ),
              CircleAvatar(
                child: SvgPicture.asset(
                  widget.chatModel.isGroup
                      ? "assets/groups.svg"
                      : "assets/person.svg",
                  color: Colors.white,
                  height: 36,
                  width: 36,
                ),
                radius: 20,
                backgroundColor: Colors.blueGrey,
              )
            ],
          ),
        ),
        title: InkWell(
          onTap: () {},
          child: Container(
            margin: EdgeInsets.all(6),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.chatModel.name,
                  style: TextStyle(
                    fontSize: 18.5,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "last seen today at 6:00 am",
                  style: TextStyle(fontSize: 13),
                ),
              ],
            ),
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.videocam)),
          IconButton(onPressed: () {}, icon: Icon(Icons.call)),
          PopupMenuButton<String>(
            onSelected: (value) {
              print(value);
            },
            itemBuilder: (BuildContext contesxt) {
              return [
                PopupMenuItem(
                  child: Text("View contact"),
                  value: "View contact",
                ),
                PopupMenuItem(
                  child: Text("Media,links, and docs"),
                  value: "Media,links, and docs",
                ),
                PopupMenuItem(
                  child: Text("Search"),
                  value: "Search",
                ),
                PopupMenuItem(
                  child: Text("Mute notifications"),
                  value: "Mute notifications",
                ),
                PopupMenuItem(
                  child: Text("Wallpaper"),
                  value: "Wallpaper",
                ),
                PopupMenuItem(
                  child: Text("More"),
                  value: "More",
                ),
              ];
            },
          )
        ],
      ),
    );
  }
}
