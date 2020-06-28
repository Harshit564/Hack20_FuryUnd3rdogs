import 'package:Hack20_FuryUnd3rdogs/minesweeper/board.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Emulator extends StatefulWidget {
  @override
  _EmulatorState createState() => _EmulatorState();
}

class _EmulatorState extends State<Emulator> {
  @override
  Widget build(BuildContext context) {
//    SystemChrome.setPreferredOrientations(
//        [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]);
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            colorFilter: new ColorFilter.mode(
                Colors.black.withOpacity(0.2), BlendMode.dstATop),
            image: AssetImage("assets/images/background.jpg"),
          ),
        ),
        padding: EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 50.0,
                ),
                Image.asset(
                  'assets/images/move.png',
                  height: 50,
                  width: 50,
                ),
                Row(
                  children: <Widget>[
                    Image.asset(
                      'assets/images/move.png',
                      height: 50,
                      width: 50,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                    ),
                    Image.asset(
                      'assets/images/move.png',
                      height: 50,
                      width: 50,
                    ),
                  ],
                ),
                Image.asset(
                  'assets/images/move.png',
                  height: 50,
                  width: 50,
                ),
              ],
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: MinesweeperGame()
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        'assets/images/select.png',
                        width: 50.0,
                        height: 50.0,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        'assets/images/select.png',
                        width: 50.0,
                        height: 50.0,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        'assets/images/action.png',
                        height: 50,
                        width: 50,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        'assets/images/action.png',
                        height: 50,
                        width: 50,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}