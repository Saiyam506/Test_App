import 'package:flutter/material.dart';

class MobileContactUs extends StatelessWidget {
  const MobileContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Contact Us Mobile',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
