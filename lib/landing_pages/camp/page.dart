import 'package:flutter/material.dart';
import 'package:test_app/landing_pages/footer.dart';
import 'package:test_app/widgets/gradient_elevated_button.dart';
import 'package:test_app/landing_pages/header.dart';
import 'package:test_app/landing_pages/camp/widget.dart';

class CampsPage extends StatelessWidget {
  const CampsPage({super.key});

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
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Header(activePage: 'Camps'),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Stack(
                  children: [
                    Image.asset(
                      'assets/company/camps_banner.png',
                      width: double.infinity,
                      height: 600,
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                      bottom: 40,
                      left: 0,
                      right: 0,
                      child: Center(
                        child: GradientElevatedButton(
                          text: "Schedule a Camp",
                          onPressed: () {},
                          icon: const Icon(Icons.calendar_today, size: 20),
                          textStyle: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(30, 20, 40, 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "What We Offer in Our Health Camps",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),

                  const SizedBox(height: 10),

                  const Text(
                    "Comprehensive on-site health screenings designed to detect, prevent, and promote employee well-being.",
                    style: TextStyle(
                      fontSize: 22,
                      color: Color.fromARGB(255, 41, 41, 41),
                    ),
                  ),

                  const SizedBox(height: 30),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 10, 40, 10),
                    child: Row(
                      children: const [
                        Text(
                          "Our Services",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),

                  Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          'assets/company/camps_design.png',
                          width: double.infinity,
                          fit: BoxFit.contain,
                        ),
                      ),

                      /// 🔵 Core Health (TOP LEFT)
                      Positioned(
                        top: 70,
                        left: 640, // ✅ moved right
                        child: SectionText(
                          points: [
                            "Blood Tests: Complete blood analysis for insights on various health metrics",
                            "Blood Pressure Check: Monitor cardiovascular health",
                            "ECG(Electrocardiogram): Heart health monitoring",
                          ],
                          color: Colors.blue,
                        ),
                      ),

                      /// 🟢 Preventive Care (LEFT CENTER)
                      Positioned(
                        top: 350,
                        left: 640, // ✅ align with above
                        child: SectionText(
                          points: [
                            "Vaccination Services: Flu shots and preventive vaccines administered on-site",
                            "Health & Wellness Workshops: Educate employees on healthy lifestyle practices",
                            "Doctor Consultations: Personalized advice for improving health",
                          ],
                          color: Colors.green,
                        ),
                      ),

                      /// 🟠 Advanced Diagnostics (BOTTOM LEFT)
                      Positioned(
                        top: 740,
                        left: 210, // ✅ consistent alignment
                        child: SectionText(
                          points: [
                            "X-Ray Services: On-site imaging for accurate diagnostic evaluation",
                            "Ultrasound Services: High resolution imaging for thorough health check",
                            "Blood Sugar & Lipid Profile Testing: Quick screening for diabetes and cholesterol levels",
                          ],
                          color: Colors.orange,
                        ),
                      ),

                      /// 🔵 Specialized (BOTTOM RIGHT)
                      Positioned(
                        top: 740,
                        right: 100, // ✅ pulled inward
                        child: SectionText(
                          points: [
                            "Eye Examination: Vision testing and eye health assessment",
                            "Dental Check-Up: Oral hygiene and dental health screening",
                            "Lung Function Test (Spirometry): Assess respiratory health",
                          ],
                          color: Colors.indigo,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 40, 40, 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Our Previous Ventures",
                    style: TextStyle(
                      fontSize: 30, // 🔧 heading size
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),

                  const SizedBox(height: 20),

                  Text(
                    "Bangalore:",
                    style: TextStyle(
                      fontSize: 22, // 🔧 city size
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    "Successfully organized multiple health camps at Manyata Tech Park, Electronic City, and Whitefield Tech Hub covering diagnostics, screenings, and consultations.",
                    style: TextStyle(
                      fontSize: 18, // 🔧 description size
                      color: Colors.grey,
                    ),
                  ),

                  const SizedBox(height: 16),

                  Text(
                    "Kolkata:",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    "Conducted employee wellness camps at Salt Lake Sector V with advanced screenings and personalized health reports.",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                    ),
                  ),

                  const SizedBox(height: 16),

                  Text(
                    "Delhi:",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    "Hosted corporate health awareness and screening camps at Connaught Place focusing on preventive care and lifestyle management.",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                    ),
                  ),

                  const SizedBox(height: 16),

                  Text(
                    "Guwahati:",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    "Conducted community-focused health camps with essential screenings and awareness programs to improve preventive healthcare access.",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                    ),
                  ),

                  const SizedBox(height: 16),

                  Text(
                    "Mumbai:",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    "Organized corporate wellness camps for large enterprises, including full-body checkups, diagnostics, and expert consultations.",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                    ),
                  ),

                  const SizedBox(height: 16),

                  Text(
                    "Hyderabad:",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    "Delivered on-site preventive healthcare services with screenings, consultations, and employee wellness programs.",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            const Footer(),
          ],
        ),
      ),
    );
  }

  Widget serviceBox({
    required String title,
    required List<String> points,
  }) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xFF22C55E).withValues(alpha: 0.08),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: const Color(0xFF22C55E),
          width: 1.2,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),

          ...points.map(
            (point) => Padding(
              padding: const EdgeInsets.only(bottom: 6),
              child: Text(
                "• $point",
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
