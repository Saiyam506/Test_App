import 'package:flutter/material.dart';

class MobileAboutUs extends StatelessWidget {
  const MobileAboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'About Us Mobile',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
