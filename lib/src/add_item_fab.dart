import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'add_item_form.dart';

class AddItemFab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  FloatingActionButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => AddItemForm())
        );
      },
      child: Icon(Icons.add),
    );
  }
}