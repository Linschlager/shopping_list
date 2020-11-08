import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

class ShoppingListEntry {
  final String id;
  final bool enabled;
  final String itemLabel;
  ShoppingListEntry(this.id, this.enabled, this.itemLabel);
}

class ShoppingList extends StatefulWidget {
  static final _uuid = Uuid ();

  var _shoppingList = [
    ShoppingListEntry(_uuid.v4(), true, "salsa for friday"),
    ShoppingListEntry(_uuid.v4(), false, "chips"),
    ShoppingListEntry(_uuid.v4(), true, "salsa for friday"),
    ShoppingListEntry(_uuid.v4(), true, "salsa for friday"),
  ];

  addItemToList (name) => {
    _shoppingList.add(ShoppingListEntry(_uuid.v4(), true, name))
  };

  @override
  State<StatefulWidget> createState() => _ShoppinglistState();
}

class _ShoppinglistState extends State<StatefulWidget> {
  @override
  Widget build(BuildContext context) {

    return Container (
      color: Colors.red,
    );
  }
}