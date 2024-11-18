import 'package:flutter/material.dart';
import 'welcome_screen.dart';
import 'temperature_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EX 3 - Switching Screens',
      home: TemperatureApp(),
    );
  }
}

class TemperatureApp extends StatefulWidget {
  @override
  _TemperatureAppState createState() => _TemperatureAppState();
}

class _TemperatureAppState extends State<TemperatureApp> {
  bool _isOnWelcomeScreen = true;

  void _switchToConverterScreen() {
    setState(() {
      _isOnWelcomeScreen = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('EX 3 - Switching Screens'),
      ),
      body: Container(
        // Gradient background
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.green, Colors.blueGrey],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
        child: _isOnWelcomeScreen 
            ? WelcomeScreen(_switchToConverterScreen) 
            : TemperatureScreen(),
      ),
    );
  }
}
