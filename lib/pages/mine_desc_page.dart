import 'dart:ui' as ui;
import 'package:Hack20_FuryUnd3rdogs/layout_back/column_tile.dart';
import 'package:Hack20_FuryUnd3rdogs/layout_back/last_column.dart';
import 'package:Hack20_FuryUnd3rdogs/layout_back/row_tile.dart';
import 'package:Hack20_FuryUnd3rdogs/pages/home_page.dart';
import 'package:Hack20_FuryUnd3rdogs/widgets/emulator.dart';
import 'package:flutter/material.dart';

class MineDescPage extends StatefulWidget {
  @override
  _MineDescPageState createState() => _MineDescPageState();
}

class _MineDescPageState extends State<MineDescPage> {
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
              top: 45.0, bottom: 83.0, left: 35.0, right: 35.0),
          child: Material(
            child: Stack(
              fit: StackFit.loose,
              alignment: Alignment.topLeft,
              children: <Widget>[
                IconButton(
                  onPressed: () => {
                    print('kasndkas'),
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage()))
                  },
                  icon: Icon(Icons.arrow_back_ios),
                  color: Colors.grey,
                ),
                Column(children: <Widget>[
                  RowTile(),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'minesweeper'.toUpperCase(),
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
                        fontSize: 30.0),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  RowTile(),
                  SizedBox(
                    height: 489,
                  ),
                  RowTile()
                ]),
                Positioned(
                  top: 150,
                  left: 110,
                  child: Image.asset('assets/images/console.png',width: 80,height: 80,),
                ),
                Positioned(
                  top: 300,
                  left: 100,
                  child: Text('Minesweeper',style: TextStyle(fontSize: 16),),
                ),
                Positioned(
                  top: 500,
                  left: 50,
                  right: 50,
                  child: RaisedButton(
                    color: Colors.greenAccent,
                    onPressed: () => Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => Emulator())),
                    child: Text(
                      'PLAY!',
                      style: TextStyle(color: Colors.black),
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
