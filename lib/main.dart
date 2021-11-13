import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './screens/HomeScreen.dart';
import 'package:camera/camera.dart';
import 'package:whatsappclone/Screens/CameraScreen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  cameras = await availableCameras();
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
