import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './screens/HomeScreen.dart';

main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      theme: ThemeData(
        fontFamily: "OpenSans",
        primaryColor: Colors.green[900],
      ),
    );
  }
}
