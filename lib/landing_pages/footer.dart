import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 40),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF0A1F44),
            Colors.black,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        children: [
          Center(
            child: SizedBox(
              width: 1000,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Connect With Us:",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 12),
                        Row(
                          children: [
                            _socialButton(
                              icon: Icons.facebook,
                              url: "https://facebook.com",
                              color: Colors.blue,
                            ),
                            const SizedBox(width: 12),
                            _socialButton(
                              icon: Icons.camera_alt,
                              url: "https://instagram.com",
                              color: Colors.pink,
                            ),
                            const SizedBox(width: 12),
                            _socialButton(
                              icon: Icons.work,
                              url: "https://linkedin.com",
                              color: Colors.blueAccent,
                            ),
                          ],
                        ),
                        const SizedBox(height: 30),
                        const Text(
                          "Subscribe to our Newsletter",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 12),
                        SizedBox(
                          width: 260,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white.withValues(alpha: 0.9),
                              borderRadius: BorderRadius.circular(14),
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: TextField(
                                    decoration: const InputDecoration(
                                      hintText: "Enter your Email ID..",
                                      border: InputBorder.none,
                                      contentPadding: EdgeInsets.symmetric(
                                        horizontal: 16,
                                        vertical: 14,
                                      ),
                                    ),
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.send),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 100),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Contact Us",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 15),
                        Row(
                          children: const [
                            Icon(Icons.phone, color: Colors.white, size: 18),
                            SizedBox(width: 8),
                            Text(
                              "+91 98765 43210",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Icon(Icons.location_on, color: Colors.white, size: 18),
                            SizedBox(width: 8),
                            Expanded(
                              child: Text(
                                "123, Health Street, Andheri East,\nMumbai, Maharashtra 400069, India",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        GestureDetector(
                          onTap: () async {
                            final Uri url = Uri.parse(
                              "https://maps.app.goo.gl/oKELutSjGZgzip7g9",
                            );
                            if (await canLaunchUrl(url)) {
                              await launchUrl(url);
                            }
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.asset(
                              "assets/company/map.png",
                              height: 180,
                              width: 420,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 40),
          Container(
            width: 1000,
            height: 1,
            color: Colors.white24,
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _footerLink("Terms & Conditions", "#"),
              const SizedBox(width: 10),
              const Text("|", style: TextStyle(color: Colors.white54)),
              const SizedBox(width: 10),
              _footerLink("Privacy Policy", "#"),
              const SizedBox(width: 10),
              const Text("|", style: TextStyle(color: Colors.white54)),
              const SizedBox(width: 10),
              _footerLink("Cancellation & Refund", "#"),
              const SizedBox(width: 10),
              const Text("|", style: TextStyle(color: Colors.white54)),
              const SizedBox(width: 10),
              _footerLink("Shipping & Delivery", "#"),
            ],
          ),
          const SizedBox(height: 15),
          const Text(
            "© 2026 Medidocs. All rights reserved",
            style: TextStyle(color: Colors.white60),
          ),
        ],
      ),
    );
  }
}

Widget _socialButton({
  required IconData icon,
  required String url,
  required Color color,
}) {
  return InkWell(
    onTap: () async {
      final Uri uri = Uri.parse(url);
      if (await canLaunchUrl(uri)) {
        await launchUrl(uri);
      }
    },
    child: Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.2),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Icon(icon, color: Colors.white),
    ),
  );
}

Widget _footerLink(String text, String url) {
  return InkWell(
    onTap: () async {
      final Uri uri = Uri.parse(url);
      if (await canLaunchUrl(uri)) {
        await launchUrl(uri);
      }
    },
    child: Text(
      text,
      style: const TextStyle(color: Colors.white70),
    ),
  );
}
