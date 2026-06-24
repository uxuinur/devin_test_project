import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo icon with k
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xFF2563EB), width: 3),
                borderRadius: BorderRadius.circular(24),
              ),
              child: Center(
                child: Text(
                  'k',
                  style: TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF2563EB),
                    fontFamily: 'Outfit',
                  ),
                ),
              ),
            ),
            const SizedBox(height: 32),
            // Kolek text
            Text(
              'kolek',
              style: TextStyle(
                fontSize: 56,
                fontWeight: FontWeight.bold,
                color: const Color(0xFF2563EB),
                fontFamily: 'Outfit',
                letterSpacing: -0.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
