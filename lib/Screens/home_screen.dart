import 'package:flutter/material.dart';
import 'package:atmosphere_app/Screens/weather_screen.dart';
import 'package:atmosphere_app/Screens/about_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextStyle headingStyle = const TextStyle(
    fontSize: 40,
    fontWeight: FontWeight.w800,
    fontStyle: FontStyle.italic,
    color: Colors.white,
  );

  final ButtonStyle buttonStyle = ElevatedButton.styleFrom(
    padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 18),
    backgroundColor: Colors.blueAccent,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30),
    ),
    elevation: 10,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[800],

      appBar: AppBar(
        backgroundColor: Colors.transparent,
       // elevation: 0,
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height:520,
              width:400,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/rain1.jpeg'),
                fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.black.withOpacity(0.8), Colors.transparent],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
            ),
            // Foreground Content
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Title text with shadow for better visibility
                    Text(
                      'Weather Compass\n'
                '\nUnlock The Secrets of The Sky!!!',
                      style: headingStyle.copyWith(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        shadows: [
                          Shadow(
                            offset: Offset(3, 3),
                            blurRadius: 8,
                            color: Colors.black.withOpacity(0.7),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 50),
                    // "Let's Start" Button
                    ElevatedButton.icon(
                      style: buttonStyle.copyWith(
                        elevation: MaterialStateProperty.all(15),
                        backgroundColor: MaterialStateProperty.all(Colors.lightBlueAccent),
                      ),
                      onPressed: () {
                        // Navigate to ClimateCompass Screen when 'Let's Start' is pressed
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const ClimateCompass(),
                          ),
                        );
                      },
                      icon: const Icon(Icons.cloud, color: Colors.white),
                      label: const Text(
                        'Find Your Weather Compass!',
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                    const SizedBox(height: 20),
                    // "ABOUT" Button
                    ElevatedButton.icon(
                      style: buttonStyle.copyWith(
                        elevation: MaterialStateProperty.all(15),
                        backgroundColor: MaterialStateProperty.all(Colors.lightGreenAccent),
                      ),
                      onPressed: () {
                        // Navigate to AboutScreen when 'ABOUT' is pressed
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const AboutScreen(),
                          ),
                        );
                      },
                      icon: const Icon(Icons.info_outline, color: Colors.white),
                      label: const Text(
                        'ABOUT',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
