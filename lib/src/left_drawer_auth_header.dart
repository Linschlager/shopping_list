import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LeftDrawerHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      child: Text('Just some options!'),
      decoration: BoxDecoration(
        color: Colors.orange,
      )
    );
  }
}