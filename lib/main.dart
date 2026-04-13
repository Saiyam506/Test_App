import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        title: Row(
          children: [
            // 🔹 Left padding for logo (30px)
            const SizedBox(width: 30),

            Image.asset(
              'assets/company/logo_with_text.png',
              height: 80,
            ),

            const Spacer(),

            // 🔹 Right side content shifted left by 30px
            Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Row(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text('Home'),
                  ),
                  const SizedBox(width: 16),

                  TextButton(
                    onPressed: () {},
                    child: const Text('Camps'),
                  ),
                  const SizedBox(width: 16),

                  TextButton(
                    onPressed: () {},
                    child: const Text('About Us'),
                  ),
                  const SizedBox(width: 16),

                  TextButton(
                    onPressed: () {},
                    child: const Text('Contact'),
                  ),
                  const SizedBox(width: 20),

                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.call, size: 18),
                    label: const Text('Call Emergency'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 18,
                        vertical: 12,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
