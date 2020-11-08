import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_list/settings.dart';
import 'package:shopping_list/shoppinglist.dart';

class AppLayout extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController (
      length: 2,
      child: Scaffold (
        appBar: AppBar (
          title: Text ("Shopping List App"),
          bottom: TabBar (
            tabs: [
              Tab (
                icon: Icon (Icons.receipt),
              ),
              Tab (
                icon: Icon (Icons.settings),
              )
            ],
          ),
        ),
        body: TabBarView (
          children: [
            ShoppingList(),
            Settings(),
          ]
        ),
      )
    );
  }
}