import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './screens/HomeScreen.dart';
import 'package:camera/camera.dart';
import 'package:whatsappclone/Screens/CameraScreen.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
  IO.Socket socket = IO.io('http://172.26.224.1:3000');
  socket.onConnect((_) {
    print('connect');
    socket.emit('msg', 'test');
  });
  socket.on('event', (data) => print(data));
  socket.onDisconnect((_) => print('disconnect'));
  socket.on('fromServer', (_) => print(_));
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
