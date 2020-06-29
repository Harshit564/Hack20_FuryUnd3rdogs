import 'package:flutter/material.dart';
import 'settings.dart';

class ActionButton extends StatelessWidget {
  Function onClickedFunction;
  Icon buttonIcon;
  LastButtonPressed nextAction;
  String imagePath;


  ActionButton(this.onClickedFunction, this.buttonIcon, this.nextAction, this.imagePath);

  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onClickedFunction(nextAction);
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset(imagePath, height: 50.0, width: 50.0,),
      )
    );
  }
}
