import 'package:flutter/material.dart';
import 'favorite_jokes_screen.dart'; // Adjust the import as necessary

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Favorite Jokes',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: FavoriteJokesScreen(),
    );
  }
}
