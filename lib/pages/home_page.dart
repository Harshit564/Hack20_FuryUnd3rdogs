import 'dart:ui' as ui;
import 'package:Hack20_FuryUnd3rdogs/layout_back/column_tile.dart';
import 'package:Hack20_FuryUnd3rdogs/layout_back/last_column.dart';
import 'package:Hack20_FuryUnd3rdogs/layout_back/row_tile.dart';
import 'package:Hack20_FuryUnd3rdogs/pages/game_desc_page.dart';
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
                Column(children: <Widget>[
                  RowTile(),
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
                    height: 5,
                  ),
                  RowTile(),
                  SizedBox(
                    height: 466,
                  ),
                  RowTile()
                ]),
                Positioned(
                  top: 150,
                  left: 25,
                  bottom: 100,
                  child: GestureDetector(
                    onTap: () => {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => GameDescPage())),
                    }, //tetris page add

                    child: Text(
                      '1)  Tetris',
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
                          //fontFamily: 'Sunset Boulevard',
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                ),
                Positioned(
                  top: 200,
                  left: 25,
                  bottom: 100,
                  child: GestureDetector(
                    onTap: () => {
                      null,
                    }, //tetris page add

                    child: Text(
                      '2)  PAC-MAN',
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
                          //fontFamily: 'Sunset Boulevard',
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                ),
                Positioned(
                  top: 250,
                  left: 25,
                  bottom: 100,
                  child: GestureDetector(
                    onTap: () => {
                      null,
                    }, //tetris page add

                    child: Text(
                      '3)  Minesweeper',
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
                          //fontFamily: 'Sunset Boulevard',
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                ),
                Positioned(
                  top: 300,
                  left: 25,
                  bottom: 100,
                  child: GestureDetector(
                    onTap: () => {
                      null,
                    }, //tetris page add

                    child: Text(
                      '4)  Contra',
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
                          //fontFamily: 'Sunset Boulevard',
                          fontWeight: FontWeight.w800),
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
