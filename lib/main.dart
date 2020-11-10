import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:shopping_list/src/main_layout.dart';

void main() {
  runApp(ShoppingListApp());
}

class ShoppingListApp extends StatelessWidget {
  final ThemeData _theme = ThemeData(
      primarySwatch: Colors.indigo,
      secondaryHeaderColor: Colors.deepOrange
  );

  Widget _renderError(errorMessage) =>
    Scaffold(
      appBar: AppBar(
        title: Text('Firebase Error')
      ),
      body:  Text('Something went wrong with the firebase init: $errorMessage'), // TODO better errors,
    );

  Widget _renderLoading() =>
      Center(
        child: CircularProgressIndicator()
      );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopping List',
      theme: _theme,
      home: FutureBuilder(
        future: Firebase.initializeApp(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return _renderError(snapshot.error);
          }
          if (snapshot.connectionState == ConnectionState.done) {
            return MainLayout();
          }
          return _renderLoading(); // TODO loading indicator
        }
      ),
    );
  }
}