import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {
  final String name;
  final IconData preIcon;
  final Function onTapFunction;

  MenuButton({this.name, this.preIcon, this.onTapFunction});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 5.0,
        left: 10.0,
        right: 10.0,
        bottom: 5.0,
      ),
      child: Card(
        color: Colors.black38,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(45.0),
        ),
        elevation: 8.0,
        child: ListTile(
          onTap: onTapFunction,
          leading: Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: CircleAvatar(
              backgroundColor: Colors.black,
              child: Icon(preIcon),
            ),
          ),
          title: Text(
            name,
            style: TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
                color: Colors.black),
          ),
        ),
      ),
    );
  }
}