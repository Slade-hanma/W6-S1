// temperature_screen.dart
import 'package:flutter/material.dart';

class TemperatureScreen extends StatefulWidget {
  @override
  _TemperatureScreenState createState() => _TemperatureScreenState();
}

class _TemperatureScreenState extends State<TemperatureScreen> {
  double _temperature = 0.0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.thermostat, size: 64),
          SizedBox(height: 16),
          Text('Converter', style: TextStyle(fontSize: 18)),
          SizedBox(height: 32),
          Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Temperature in Degree'),
                TextField(
                  keyboardType: TextInputType.number,
                  onChanged: (value) {
                    setState(() {
                      _temperature = double.parse(value);
                    });
                  },
                ),
                SizedBox(height: 10),
                Text('Temperature in Fahrenheit: ${(_temperature * 9 / 5) + 32}'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}