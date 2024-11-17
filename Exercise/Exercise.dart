import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ColorListScreen(),
    );
  }
}

class ColorListScreen extends StatelessWidget {
  final List<String> colors = ["red", "blue", "green"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Color List'),
      ),
      body: ListView(
        children: [
          // Method 1: Direct for loop
          Container(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomLabel('Using Direct For Loop:'),
                for (var color in colors)
                  ListTile(
                    title: Text(color),
                  ),
              ],
            ),
          ),

          // Method 2: Using map()
          Container(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomLabel('Using map() Method:'),
                ...colors.map((color) => ListTile(
                      title: Text(color),
                    )),
              ],
            ),
          ),

          // Method 3: Using a dedicated function
          Container(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomLabel('Using Dedicated Function:'),
                ...buildColorList(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> buildColorList() {
    return colors.map((color) {
      return ListTile(
        title: Text(color),
      );
    }).toList();
  }
}

class CustomLabel extends StatelessWidget {
  final String text;

  CustomLabel(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
    );
  }
}
