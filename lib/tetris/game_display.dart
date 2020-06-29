import 'package:Hack20_FuryUnd3rdogs/tetris/settings.dart';
import 'package:flutter/material.dart';

import 'game.dart';
import 'menu.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Menu'),
        centerTitle: true,
      ),
      backgroundColor: Colors.brown[300],
      body: Menu(),
    );
  }
}

class GameScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var settings = Settings();

    return Scaffold(
      appBar: AppBar(
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back_ios),
          onPressed: () async {
            settings.timer.cancel();
            Navigator.pop(context);
          },
        ),
        title: Text('Play'),
        centerTitle: true,
      ),
      backgroundColor: Colors.brown[300],
      body: Game(),
    );
  }
}