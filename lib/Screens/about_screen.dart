import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Climate Compass'),
        backgroundColor: const Color(0xFF4682B4), // Soft blue tone for the app bar
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF73C2FB), Color(0xFFB0E0E6)], // Soft weather-inspired gradient
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Colors.transparent,
                child: Icon(
                  Icons.thunderstorm    ,
                  size: 110,
                  color: Colors.blueAccent,
                ),
              ),
            ),
            const SizedBox(height: 30),
            const Center(
              child: Text(
                'Climate Compass',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  shadows: [
                    Shadow(
                      offset: Offset(2, 2),
                      blurRadius: 4,
                      color: Colors.black26,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'About the App:',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Climate Compass is your go-to app for real-time weather updates and forecasts. '
                  'Designed with an intuitive interface, it provides accurate and reliable climate information '
                  'to help you plan your day effectively.',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white70,
                height: 1.4,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Features:',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: const [
                Icon(Icons.cloud, color: Colors.white, size: 28),
                SizedBox(width: 10),
                Expanded(
                  child: Text(
                    'Real-time weather updates',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white70,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: const [
                Icon(Icons.calendar_today, color: Colors.white, size: 28),
                SizedBox(width: 10),
                Expanded(
                  child: Text(
                    '7-day weather forecast',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white70,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: const [
                Icon(Icons.notifications, color: Colors.white, size: 28),
                SizedBox(width: 10),
                Expanded(
                  child: Text(
                    'Customizable weather alerts',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white70,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 50),
            const Center(
              child: Text(
                'Developed by Eng. Basmala Ashraf',
                style: TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                  color: Colors.black,
                  fontWeight:FontWeight.bold
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
