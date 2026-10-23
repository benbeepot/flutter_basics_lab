
import 'package:flutter/material.dart';
import 'student.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Activity 3',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorSchemeSeed: studentColor),
      home: const WeatherPage(),
    );
  }
}

class WeatherPage extends StatelessWidget {
  const WeatherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Activity 3 - Weather Dashboard'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: Colors.blue.shade700,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: const Column(
                  children: [
                    Text(
                      'Davao City',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                    SizedBox(height: 12),
                    Icon(
                      Icons.wb_sunny,
                      color: Colors.yellow,
                      size: 70,
                    ),
                    Text(
                      '31°C',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 42,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Partly Cloudy',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              Row(
                children: [
                  Expanded(
                    child: _weatherBox(
                      Icons.water_drop,
                      'Humidity',
                      '70%',
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: _weatherBox(
                      Icons.air,
                      'Wind',
                      '12 km/h',
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),

              Row(
                children: [
                  Expanded(
                    child: _weatherBox(
                      Icons.wb_sunny,
                      'UV Index',
                      '6',
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: _weatherBox(
                      Icons.thermostat,
                      'Feels Like',
                      '34°C',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _weatherBox(IconData icon, String label, String value) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.blue.shade50,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.blue.shade200),
      ),
      child: Column(
        children: [
          Icon(icon, size: 32, color: Colors.blue.shade800),
          const SizedBox(height: 8),
          Text(label, textAlign: TextAlign.center),
          const SizedBox(height: 4),
          Text(
            value,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
