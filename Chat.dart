import"package:flutter/material.dart";
import 'chatbox.dart';

void main()
{
  runApp(
    new MyApp()
  );
}

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
   return new MaterialApp(
     theme: new ThemeData(
       primarySwatch: Colors.deepOrange,

     ),
     home: new FrenzyChat(),
   );
  }

}

class FrenzyChat extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("ChatBox",style: new TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
      body: new Chat()
    );
  }

}