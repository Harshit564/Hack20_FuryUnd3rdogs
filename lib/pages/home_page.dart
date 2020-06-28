import 'dart:ui' as ui;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:Hack20_FuryUnd3rdogs/widgets/menu_buttons.dart';

class HomePage extends StatefulWidget {
  static const String routeName = "/home-page";
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
        Padding(
          padding: const EdgeInsets.only(top: 60.0,bottom: 80.0,left: 24.0,right: 24.0),
          child: Material(
            color: Colors.white,
            shadowColor: Colors.blue.withOpacity(0.8),
            elevation: 16,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0)
            ),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  'ARCADE HUB',
                  style: TextStyle(
                      shadows: [
                        Shadow(
                          blurRadius: 5.0,
                          color: Colors.redAccent,
                          offset: Offset(2.0, 2.0),
                        ),
                      ],
                    color: Colors.black,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Retro Gaming'
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 30,
                ),
                MenuButton(
                  name: 'PAC-MAN',
                  onTapFunction: () => null,
                  preIcon: Icons.videogame_asset,
                ),
                SizedBox(
                  height: 10,
                ),
                MenuButton(
                  name: 'PAC-MAN',
                  onTapFunction: () => null,
                  preIcon: Icons.videogame_asset,
                ),
                SizedBox(
                  height: 10,
                ),
                MenuButton(
                  name: 'PAC-MAN',
                  onTapFunction: () => null,
                  preIcon: Icons.videogame_asset,
                ),
                SizedBox(
                  height: 10,
                ),
                MenuButton(
                  name: 'PAC-MAN',
                  onTapFunction: () => null,
                  preIcon: Icons.videogame_asset,
                ),
                SizedBox(
                  height: 10,
                ),
                MenuButton(
                  name: 'PAC-MAN',
                  onTapFunction: () => null,
                  preIcon: Icons.videogame_asset,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}