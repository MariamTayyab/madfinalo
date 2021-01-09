import 'dart:async';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Splash2(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class Splash2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 30,
      navigateAfterSeconds: new SecondScreen(),
      title: new Text('Notes Taking',textScaleFactor: 2,),
      image: new Image.network('https://png.pngtree.com/png-clipart/20200225/original/pngtree-notes-icon-in-neon-style-png-image_5272620.jpg '),
      loadingText: Text("Loading"),
      photoSize: 100.0,
      loaderColor: Colors.black87,
    );
  }
}
class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("Note Keeping")),
      body: Center(
          child:Text("Home page",textScaleFactor: 2,)
      ),
    );
  }
}
