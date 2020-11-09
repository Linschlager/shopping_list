import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_list/src/left_drawer_auth_header.dart';

class LeftDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView (
      padding: EdgeInsets.zero,
      children: <Widget>[
        LeftDrawerHeader(),
        ListTile(
          title: Text('Item 1'),
        ),
        ListTile(
          title: Text('Item 2'),
          onTap: () {
            final snackBar = SnackBar(
              content: Text('A snack!'),
              action: SnackBarAction(
                label: 'Undo',
                onPressed: () {

                },
              ),
            );
            Navigator.of(context).pop();
            Scaffold.of(context).showSnackBar(snackBar);
          },
        ),
        ListTile(
          title: Text('Item 3'),
        ),
      ]
    );
  }

}