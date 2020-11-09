import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShoppingList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ShoppingListState();
}

class _ShoppingListState extends State<ShoppingList> {
  final _selectedItems = List<String>();
  final _listItems = List<String>();


  @override
  void initState() {
    super.initState();
    _listItems.addAll([
      'Milk',
      'Eggs',
      'Tomatoes',
      'Beer'
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _listItems.length,
      itemBuilder: (context, index) {
        final item = _listItems[index];
        final _isDone = _selectedItems.contains(item);
        final style = _isDone ? TextStyle(decoration: TextDecoration.lineThrough) : null;
        return ListTile(
          title: Text('$item', style: style),
          onTap: () {
            setState(() {
              if (_isDone) {
                _selectedItems.remove(item);
              } else {
                _selectedItems.add(item);
              }
            });
          },
        );
      }
    );
  }
}