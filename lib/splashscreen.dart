import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SplashScreen'),
        centerTitle: true,
        backgroundColor: Colors.indigo,
      ),
      body: Center(
        child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(text: 'My'),
                  TextSpan(
                    text: 'ONE_MART',
                    style: TextStyle(
                      color: Colors.teal,
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: 'App',
                    style: TextStyle(color: Colors.blueAccent, fontSize: 20),
                  ),
                ],
              ),
            )
            .animate()
            .fadeIn(duration: 1000.ms) // Fade-in animation
            .scale(delay: 500.ms) // Scale animation
            .slide(delay: 1000.ms), // Slide animation
      ),
    );
  }
}
