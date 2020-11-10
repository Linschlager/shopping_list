import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'add_item_form.dart';
import 'data/shopping_item.dart';

class AddItemFab extends StatelessWidget {

  Future<void> _createItem(BuildContext context) async {
    ShoppingItem res = (await showDialog<ShoppingItem>(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: const Text('Create new Item'),
          children: <Widget>[
            AddItemForm(),
          ]
        );
      }
    ));

    print(res);
  }

  @override
  Widget build(BuildContext context) {
    return  FloatingActionButton(
      onPressed: () {
        _createItem(context);
      },
      child: Icon(Icons.add),
    );
  }
}