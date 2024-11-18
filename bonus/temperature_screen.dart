import 'package:flutter/material.dart';

class TemperatureScreen extends StatefulWidget {
  @override
  _TemperatureScreenState createState() => _TemperatureScreenState();
}

class _TemperatureScreenState extends State<TemperatureScreen> {
  double _temperature = 0.0;
  final TextEditingController _controller = TextEditingController();

  void _convertTemperature(String value) {
    if (value.isNotEmpty) {
      setState(() {
        _temperature = double.tryParse(value) ?? 0.0;
      });
    } else {
      setState(() {
        _temperature = 0.0;
      });
    }
  }

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
                Text('Temperature in Celsius'),
                TextField(
                  controller: _controller,
                  keyboardType: TextInputType.number,
                  onChanged: _convertTemperature,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter temperature',
                  ),
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
