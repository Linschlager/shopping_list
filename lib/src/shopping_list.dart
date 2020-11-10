import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShoppingList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ShoppingListState();
}

class _ShoppingListState extends State<ShoppingList> {

  Widget _buildListItem(BuildContext context, DocumentSnapshot item) {
    final _isDone = item['done'];
    final style = _isDone ? TextStyle(decoration: TextDecoration.lineThrough) : null;

    return ListTile(
      title: Text('${item['title']}', style: style),
      subtitle: Text(!_isDone ? 'Current State: ${item['countRemaining']}/${item['countDesired']} at home' : 'Done'),
      onTap: () {
        FirebaseFirestore.instance.runTransaction((transaction) async {
          DocumentSnapshot freshSnapshot = await transaction.get(item.reference);
          transaction.update(freshSnapshot.reference, {
            'done': !freshSnapshot['done']
          });
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