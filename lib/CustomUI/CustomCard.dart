import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: CircleAvatar(
          radius: 30,
          child: SvgPicture.asset(
            "assets/groups.svg",
            color: Colors.white,
            height: 37,
            width: 37,
          ),
          backgroundColor: Colors.blueGrey,
        ),
        trailing: Text("18:04"),
        title: Text(
          "sooraj",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        subtitle: Row(
          children: [
            Icon(Icons.done_all),
            SizedBox(
              width: 3,
            ),
            Text(
              "subtitle",
              style: TextStyle(fontSize: 13),
            ),
          ],
        ));
  }
}
