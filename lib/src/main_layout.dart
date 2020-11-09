import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_list/src/left_drawer.dart';
import 'package:shopping_list/src/shopping_list.dart';

import 'add_item_fab.dart';

class MainLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Shopping List'),
        actions: <Widget>[
          // AuthPopupButton()
        ],
      ),
      drawer: Drawer(
        child: LeftDrawer(),
      ),
      floatingActionButton: AddItemFab(),
      body: ShoppingList()
    );
  }
}