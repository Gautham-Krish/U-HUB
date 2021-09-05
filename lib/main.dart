import 'package:flutter/material.dart';
import 'package:uhubs/files/Loading.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'U HUB',

      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: Loading(),
    );
  }
}

