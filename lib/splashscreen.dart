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
        elevation: 10,
        shadowColor: Colors.purple,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(50), // Bottom corners rounded
          ),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.indigo, Colors.purple],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Search action
            },
          ),
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              // Notification action
            },
          ),
        ],
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
