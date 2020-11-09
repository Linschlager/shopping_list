import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AuthPopupButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.blueGrey.shade800,
      child: FlatButton(
        child: Text('LV'),
        onPressed: () {

        },
      )
    );
  }
}