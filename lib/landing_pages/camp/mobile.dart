import 'package:flutter/material.dart';

class MobileCamps extends StatelessWidget {
  const MobileCamps({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Camps Mobile',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
