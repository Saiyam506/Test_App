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
          ],
        ),
      ),
    );
  }
}
