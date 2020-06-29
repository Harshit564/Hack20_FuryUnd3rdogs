import 'package:flutter/material.dart';
import 'actionButton.dart';
import 'settings.dart';

class UserInput extends StatelessWidget {
  final Function onActionButtonPressed;

  UserInput(this.onActionButtonPressed);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Row(
          children: <Widget>[
            ActionButton(
              onActionButtonPressed,
              Icon(Icons.rotate_left),
              LastButtonPressed.ROTATE_LEFT,
              'assets/images/action.png',
            ),
            ActionButton(
              onActionButtonPressed,
              Icon(Icons.rotate_right),
              LastButtonPressed.ROTATE_RIGHT,
              'assets/images/action.png',
            ),
          ],
        ),
        Row(
          children: <Widget>[
            ActionButton(
              onActionButtonPressed,
              Icon(Icons.arrow_left),
              LastButtonPressed.LEFT,
              'assets/images/move.png',
            ),
            ActionButton(
              onActionButtonPressed,
              Icon(Icons.arrow_right),
              LastButtonPressed.RIGHT,
              'assets/images/move.png',
            ),
          ],
        ),
      ],
    );
  }
}
