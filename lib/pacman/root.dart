import 'package:Hack20_FuryUnd3rdogs/minesweeper/board.dart';
import 'package:Hack20_FuryUnd3rdogs/pacman/Game.dart';
import 'package:Hack20_FuryUnd3rdogs/widgets/emulator.dart';
import 'package:flutter/material.dart';


class PacmanRootPage extends StatelessWidget {
  final Function onActionButtonPressed;

  const PacmanRootPage({Key key, this.onActionButtonPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Emulator(
        page: Game(),
        actionLeft: onActionButtonPressed,
      ),
    );
  }
}
