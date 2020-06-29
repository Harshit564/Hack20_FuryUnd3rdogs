import 'package:Hack20_FuryUnd3rdogs/tetris/game.dart';
import 'package:Hack20_FuryUnd3rdogs/widgets/emulator.dart';
import 'package:flutter/material.dart';


class TetrisRootPage extends StatelessWidget {
  final Function onActionButtonPressed;

  const TetrisRootPage({Key key, this.onActionButtonPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Emulator(
        page: Game(),
        actionLeft: onActionButtonPressed.,
      ),
    );
  }
}

