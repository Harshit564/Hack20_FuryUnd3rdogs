import 'dart:ui' as ui;
import 'package:flutter/material.dart';

import 'home_page.dart';

class AnimatedSplashScreen extends StatefulWidget {
  static const String routeName = "/splash-screen";
  @override
  _AnimatedSplashScreenState createState() => _AnimatedSplashScreenState();
}

class _AnimatedSplashScreenState extends State<AnimatedSplashScreen> with SingleTickerProviderStateMixin {

    @override
  void initState() {
    super.initState();
    new Future.delayed(Duration(milliseconds: 10000)).then((val) {
      Navigator.pushReplacementNamed(
        context,
        HomePage.routeName,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new Image.asset('assets/images/background.gif',
          fit: BoxFit.fitHeight,
          ),
          new BackdropFilter(
              filter: new ui.ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
              child: new Container(
                color: Colors.black.withOpacity(0.2),
              ),
            ),
          new Center(
            child: new Text('ARCADE GAMES',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Retro Gaming',
              fontSize: 45
            ),),
          )  
        ],     
      ),
    );
  }
}