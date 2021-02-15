import 'package:flutter/material.dart';
import 'package:portal_berita/view/HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MakNews",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xff121212),
      ),
      home: HomePage(),
    );
  }
}
