import 'package:flutter/material.dart';
import 'package:shopping_list/layout.dart';

void main() {
  runApp(ShoppingListApp());
}

class ShoppingListApp extends StatelessWidget {

  final ThemeData _theme = ThemeData(
      primarySwatch: Colors.indigo,
      secondaryHeaderColor: Colors.deepOrange
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopping List',
      theme: _theme,
      home: AppLayout(),
    );
  }
}