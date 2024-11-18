import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  final VoidCallback onStartPressed;

  WelcomeScreen(this.onStartPressed);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Welcome',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 16),
          Icon(Icons.thermostat, size: 48),
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: onStartPressed,
            child: Text('Start to Convert'),
          ),
        ],
      ),
    );
  }
}
