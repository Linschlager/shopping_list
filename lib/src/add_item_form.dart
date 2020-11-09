import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddItemForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AddItemFormState();
}

class _AddItemFormState extends State<AddItemForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add something new')
      ),
      body: Text('Hello, World!\nKill me please')
    );
  }
}