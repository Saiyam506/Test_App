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

  // 🔹 REUSABLE SERVICE BUTTON
  Widget serviceButton({
    required String title,
    required String subtitle,
    required String image,
  }) {
    return InkWell(
      borderRadius: BorderRadius.circular(25),
      onTap: () {
        debugPrint('$title clicked'); // ✅ no warning
      },
      child: Container(
        height: 220,
        width: 220,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.12), // ✅ fixed
              blurRadius: 15,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              maxLines: 2,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w900,
              ),
            ),
            const SizedBox(height: 6),
            Text(
              subtitle,
              style: const TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
            const Spacer(),
            Center(
              child: Image.asset(
                image,
                height: 90,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            children: [
              // 🔹 Logo
              Image.asset(
                'assets/company/logo_with_text.png',
                height: 70,
              ),

              const Spacer(),

              // 🔹 Right Navbar
              Expanded(
                child: SizedBox(
                  height: 100,
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
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

                            // 🔴 Call Emergency
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

                      // 🟢 24/7 Available
                      Positioned(
                        right: 30,
                        bottom: 8,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: const [
                            Icon(Icons.circle, color: Colors.green, size: 6),
                            SizedBox(width: 6),
                            Text(
                              '24/7 Available',
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

      // 🔹 BODY
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          children: [
            // 🔹 Heading
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Choose a ',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ShaderMask(
                  shaderCallback: (bounds) => const LinearGradient(
                    colors: [Colors.blue, Colors.green],
                  ).createShader(bounds),
                  child: const Text(
                    'Service',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 8),

            const Text(
              'Get healthcare at your doorstep',
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey,
              ),
            ),

            const SizedBox(height: 30),

            // 🔥 BUTTONS ROW
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Row(
                children: [
                  serviceButton(
                    title: 'Ambulance\nService',
                    subtitle: '24/7 emergency support',
                    image: 'assets/company/ambulance_button.png',
                  ),

                  const SizedBox(width: 20),

                  serviceButton(
                    title: 'Doctor\nAppointment',
                    subtitle: 'Doctors at your doorstep',
                    image: 'assets/company/doctor_checkup_button.png',
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
