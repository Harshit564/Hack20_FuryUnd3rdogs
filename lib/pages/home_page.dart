import 'dart:ui' as ui;
import 'package:Hack20_FuryUnd3rdogs/layout_back/column_tile.dart';
import 'package:Hack20_FuryUnd3rdogs/layout_back/last_column.dart';
import 'package:Hack20_FuryUnd3rdogs/layout_back/row_tile.dart';
import 'package:Hack20_FuryUnd3rdogs/pages/mine_desc_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
          padding: const EdgeInsets.only(
              top: 45.0, bottom: 40.0, left: 35.0, right: 35.0),
          child: Material(
            child: Stack(
              fit: StackFit.loose,
              alignment: Alignment.topLeft,
              children: <Widget>[
                new Image.asset(
                  'assets/images/material_back.jpg',
                  fit: BoxFit.fitHeight,
                ),
                new BackdropFilter(
                  filter: new ui.ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
                  child: new Container(
                    color: Colors.black.withOpacity(0.75),
                  ),
                ),
                Positioned(
                  top: 20,
                  left: 20,
                  child: CircleAvatar(
                    backgroundColor: Colors.grey.withOpacity(0.9),
                    child: Icon(
                      Icons.menu,
                      color: Colors.black,
                    ),
                  ),
                ),
                Column(children: <Widget>[
                  RowTile(),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'arcade mania'.toUpperCase(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        shadows: [
                          Shadow(
                            blurRadius: 7.0,
                            color: Colors.redAccent,
                            offset: Offset(2.0, 2.0),
                          ),
                        ],
                        fontFamily: 'Retro Gaming',
                        fontWeight: FontWeight.bold,
                        fontSize: 35.0),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  RowTile(),
                  SizedBox(
                    height: 421,
                  ),
                  RowTile()
                ]),
                Positioned(
                  top: 180,
                  left: 110,
                  child: new Image.asset(
                    'assets/images/console.png',
                    alignment: Alignment.center,
                    width: 80,
                    height: 80,
                  ),
                ),
                Positioned(
                  top: 280,
                  left: 50,
                  bottom: 70,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        RaisedButton(
                          color: Colors.transparent,
                          elevation: 10,
                          highlightColor: Colors.greenAccent,
                          onPressed: () => {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => GameDescPage()))
                          },
                          child: Text(
                            '1)  PACMAN',
                            style: TextStyle(
                                shadows: [
                                  Shadow(
                                    blurRadius: 5.0,
                                    color: Colors.greenAccent,
                                    offset: Offset(2.0, 2.0),
                                  ),
                                ],
                                color: Colors.white,
                                fontSize: 20,
                                fontFamily: 'Retro Gaming',
                                fontWeight: FontWeight.w200),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        RaisedButton(
                          elevation: 10,
                          color: Colors.transparent,
                          highlightColor: Colors.greenAccent,
                          onPressed: () => {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => GameDescPage()))
                          },
                          child: Text(
                            '2)  TETRIS',
                            style: TextStyle(
                                shadows: [
                                  Shadow(
                                    blurRadius: 5.0,
                                    color: Colors.greenAccent,
                                    offset: Offset(2.0, 2.0),
                                  ),
                                ],
                                color: Colors.white,
                                fontSize: 20,
                                fontFamily: 'Retro Gaming',
                                fontWeight: FontWeight.w200),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        RaisedButton(
                          elevation: 10,
                          color: Colors.transparent,
                          highlightColor: Colors.greenAccent,
                          onPressed: () => {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => GameDescPage()))
                          },
                          child: Text(
                            '3)  MINESW',
                            style: TextStyle(
                                shadows: [
                                  Shadow(
                                    blurRadius: 5.0,
                                    color: Colors.greenAccent,
                                    offset: Offset(2.0, 2.0),
                                  ),
                                ],
                                color: Colors.white,
                                fontSize: 20,
                                fontFamily: 'Retro Gaming',
                                fontWeight: FontWeight.w200),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        RaisedButton(
                          elevation: 10,
                          splashColor: Colors.redAccent,
                          color: Colors.transparent,
                          highlightColor: Colors.greenAccent,
                          onPressed: () => {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => GameDescPage()))
                          },
                          child: Text(
                            '4)  CONTRA',
                            style: TextStyle(
                                shadows: [
                                  Shadow(
                                    blurRadius: 5.0,
                                    color: Colors.greenAccent,
                                    offset: Offset(2.0, 2.0),
                                  ),
                                ],
                                color: Colors.white,
                                fontSize: 20,
                                fontFamily: 'Retro Gaming',
                                fontWeight: FontWeight.w200),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  //mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    ColumnTile(),
                    SizedBox(
                      width: 270,
                    ),
                    LastColumnTile(),
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
