import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'data/shopping_item.dart';

class AddItemForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AddItemFormState();
}

class _AddItemFormState extends State<AddItemForm> {

  final _formKey = GlobalKey<FormState>();
  final _productNameController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget> [
          Padding (
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: TextFormField(
              controller: _productNameController,
              decoration: InputDecoration(
                labelText: 'Product'
              ),
              validator: (value) {
                if (value.isEmpty) return 'Please enter a product';
                return null;
              },
            ),
          ),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState.validate()) {
                ShoppingItem newItem = ShoppingItem(
                  title: _productNameController.text,
                  count: 10,
                );
                Navigator.of(context).pop(newItem);
                // Scaffold.of(context).showSnackBar(SnackBar(content: Text('Processing...')));
              }
            },
            child: Text('Save'),
          ),
        ],
      ),
    );
  }
}