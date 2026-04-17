import 'package:flutter/material.dart';
import 'package:test_app/landing_pages/header.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        toolbarHeight: 90,
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Header(activePage: 'About Us'),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 40),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "About Us:",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF3B82F6), // blue
                    ),
                  ),

                  const SizedBox(height: 16),

                  RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: "Revolutionizing ",
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF1F2A37),
                          ),
                        ),
                        TextSpan(
                          text: "Healthcare Access",
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF3B82F6),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 20),

                  const Text(
                    "At MediDocs, we’re committed to transforming healthcare by connecting patients with trusted providers through seamless digital solutions. Founded with the mission to make healthcare accessible and efficient, we leverage technology to ensure patients receive the care they need anytime, anywhere.",
                    style: TextStyle(
                      fontSize: 28,
                      height: 1.6,
                      color: Color(0xFF6B7280),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(width: 40),

            Expanded(
              flex: 1,
              child: Transform.translate(
                offset: const Offset(0, -70),
                child: Image.asset(
                  'assets/company/about_us_illustration.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),

            const SizedBox(height: 60),

            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: const [
                        Icon(Icons.track_changes, size: 50, color: Colors.black),

                        SizedBox(height: 20),

                        Text(
                          "MISSION",
                          style: TextStyle(
                            fontSize: 36, // 👈 as you wanted
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF1F2A37),
                          ),
                        ),

                        SizedBox(height: 12),

                        Text(
                          "To make healthcare accessible, affordable, and efficient for everyone.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 28, // 👈 as you wanted
                            color: Color(0xFF6B7280),
                            height: 1.4,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(width: 30),

                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: const [
                        Icon(Icons.lightbulb, size: 50, color: Colors.black),

                        SizedBox(height: 20),

                        Text(
                          "VISION",
                          style: TextStyle(
                            fontSize: 36,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF1F2A37),
                          ),
                        ),

                        SizedBox(height: 12),

                        Text(
                          "To build a connected healthcare ecosystem powered by technology.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 28,
                            color: Color(0xFF6B7280),
                            height: 1.4,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
