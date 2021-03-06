import 'dart:ui' as ui;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

class AnimatedSplashScreen extends StatefulWidget {
  static const String routeName = "/splash-screen";

  @override
  _AnimatedSplashScreenState createState() => _AnimatedSplashScreenState();
}

class _AnimatedSplashScreenState extends State<AnimatedSplashScreen>
    with SingleTickerProviderStateMixin {
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
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        new Image.asset(
          'assets/images/background.gif',
          fit: BoxFit.fitHeight,
        ),
        new BackdropFilter(
          filter: new ui.ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
          child: new Container(
            color: Colors.black.withOpacity(0.2),
          ),
        ),
        new Column(
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 20.0, left: 30.0, right: 30.0),
              child: new Image.asset('assets/images/pacman1.png'),
            ),
            new BackdropFilter(
              filter: new ui.ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
              child: new Container(
                color: Colors.black.withOpacity(0.75),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            new Text(
              'ARCADE MANIA',
              textAlign: TextAlign.center,
              overflow: TextOverflow.fade,
              style: TextStyle(
                shadows: [
                  Shadow(color: Colors.indigo,blurRadius: 7.0,offset: Offset(2.0, 2.0) )
                ],
                  decoration: TextDecoration.none,
                  color: Colors.red.withOpacity(0.8),
                  fontFamily: 'Retro Gaming',
                  fontSize: 45),
            ),
          ],
        )
      ],
    );
  }
}
