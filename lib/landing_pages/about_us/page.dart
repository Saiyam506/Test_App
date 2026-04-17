import 'package:flutter/material.dart';
import 'package:test_app/landing_pages/header.dart';
import 'package:test_app/landing_pages/about_us/widget.dart';

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
        child: Column(
          children: [
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text(
                          "About Us:",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF3B82F6),
                          ),
                        ),

                        const SizedBox(height: 1),

                        RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: "Revolutionizing ",
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xFF1F2A37),
                                ),
                              ),
                              TextSpan(
                                text: "Healthcare Access",
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xFF3B82F6),
                                ),
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(height: 10),

                        const Text(
                          "At MediDocs, we’re committed to transforming healthcare by connecting patients with trusted providers through seamless digital solutions. Founded with the mission to make healthcare accessible and efficient, we leverage technology to ensure patients receive the care they need anytime, anywhere.",
                          style: TextStyle(
                            fontSize: 20,
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
                    child: Image.asset(
                      'assets/company/about_us_illustration.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 28),
            LayoutBuilder(
              builder: (context, constraints) {
                final bool useTwoColumns = constraints.maxWidth > 980;
                final double cardWidth = useTwoColumns ? (constraints.maxWidth - 24) / 2 : constraints.maxWidth;

                return Wrap(
                  spacing: 24,
                  runSpacing: 24,
                  children: [
                    SizedBox(
                      width: cardWidth,
                      child: const InfoCard(
                        icon: Icons.gps_fixed_rounded,
                        title: 'MISSION',
                        description: 'To make healthcare accessible, affordable, and efficient for everyone.',
                      ),
                    ),
                    SizedBox(
                      width: cardWidth,
                      child: const InfoCard(
                        icon: Icons.tips_and_updates_outlined,
                        title: 'VISION',
                        description: 'To build a connected healthcare ecosystem powered by technology.',
                      ),
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
