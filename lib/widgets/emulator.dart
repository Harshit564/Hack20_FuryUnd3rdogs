import 'package:Hack20_FuryUnd3rdogs/minesweeper/board.dart';
import 'package:Hack20_FuryUnd3rdogs/pages/home_page.dart';
import 'package:Hack20_FuryUnd3rdogs/tetris/game.dart';
//import 'package:Hack20_FuryUnd3rdogs/pacman/Game.dart';
import 'package:Hack20_FuryUnd3rdogs/tetris/game_display.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Emulator extends StatefulWidget {

  final Widget page;
  final Function moveUp;
  final Function moveLeft;
  final Function moveRight;
  final Function moveDown;
  final Function start;
  final Function select;
  final Function actionLeft;
  final Function actionRight;

  const Emulator({this.page, this.moveUp, this.moveLeft, this.moveRight, this.moveDown, this.start, this.select, this.actionLeft, this.actionRight});
  @override
  _EmulatorState createState() => _EmulatorState();
}

class _EmulatorState extends State<Emulator> {
  @override
  Widget build(BuildContext context) {
//    SystemChrome.setPreferredOrientations(
//        [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]);
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            colorFilter: new ColorFilter.mode(
                Colors.black.withOpacity(0.7), BlendMode.dstATop),
            image: AssetImage("assets/images/bg1.jpeg"),
          ),
        ),
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Expanded(child: widget.page),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                          height: 50.0,
                        ),
                        GestureDetector(
                          onTap: widget.moveUp,
                          child: Image.asset(
                            'assets/images/move.png',
                            height: 50,
                            width: 50,
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            GestureDetector(
                              onTap: widget.moveLeft,
                              child: Image.asset(
                                'assets/images/move.png',
                                height: 50,
                                width: 50,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20.0),
                            ),
                            GestureDetector(
                              onTap: widget.moveRight,
                              child: Image.asset(
                                'assets/images/move.png',
                                height: 50,
                                width: 50,
                              ),
                            ),
                          ],
                        ),
                        GestureDetector(
                          onTap: widget.moveDown,
                          child: Image.asset(
                            'assets/images/move.png',
                            height: 50,
                            width: 50,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: GestureDetector(
                                onTap: () => {
                                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage()))
                                },
                                child: Image.asset(
                                  'assets/images/select.png',
                                  width: 50.0,
                                  height: 50.0,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: GestureDetector(
                                onTap: widget.start,
                                child: Image.asset(
                                  'assets/images/select.png',
                                  width: 50.0,
                                  height: 50.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: GestureDetector(
                                onTap: widget.actionLeft,
                                child: Image.asset(
                                  'assets/images/action.png',
                                  height: 50,
                                  width: 50,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: GestureDetector(
                                onTap: widget.actionRight,
                                child: Image.asset(
                                  'assets/images/action.png',
                                  height: 50,
                                  width: 50,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}