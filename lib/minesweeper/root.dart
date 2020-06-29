import 'package:Hack20_FuryUnd3rdogs/minesweeper/board.dart';
import 'package:Hack20_FuryUnd3rdogs/widgets/emulator.dart';
import 'package:flutter/material.dart';


class MineRootPage extends StatelessWidget {
  final Function onActionButtonPressed;

  const MineRootPage({Key key, this.onActionButtonPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Emulator(
        page: MinesweeperGame(),
        actionLeft: onActionButtonPressed,
      ),
    );
  }
}