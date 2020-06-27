import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const String routeName = "/home-page";
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold
          ),
        ),
        centerTitle: true,
      ),
      drawer: Drawer(),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Container(
          child: Center(child: Text('Hello World!!')),
        ),
      ),
    );
  }
}