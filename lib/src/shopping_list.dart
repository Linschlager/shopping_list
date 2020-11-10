import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShoppingList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ShoppingListState();
}

class _ShoppingListState extends State<ShoppingList> {
  final _selectedItems = List<String>();

  Widget _buildListItem(BuildContext context, DocumentSnapshot item) {
    final _isDone = item['done'];
    final style = _isDone ? TextStyle(decoration: TextDecoration.lineThrough) : null;
    return ListTile(
      title: Text('${item['title']}', style: style),
      onTap: () {
        setState(() {
          if (_isDone) {
            _selectedItems.remove(item['title']);
          } else {
            _selectedItems.add(item['title']);
          }
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseFirestore.instance.collection('shopping-lists').snapshots(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) return Text('Loading...');
        return ListView.builder(
          itemCount: snapshot.data.documents.length,
          itemBuilder: (context, index) =>
            _buildListItem(context, snapshot.data.documents[index]),
        );
      }
    );
  }
}