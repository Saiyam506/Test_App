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

                      Positioned(
                        top: 70,
                        left: 640,
                        child: SectionText(
                          points: [
                            "Blood Tests: Complete blood analysis for insights on various health metrics",
                            "Blood Pressure Check: Monitor cardiovascular health",
                            "ECG(Electrocardiogram): Heart health monitoring",
                          ],
                          color: Colors.blue,
                        ),
                      ),

                      Positioned(
                        top: 350,
                        left: 640,
                        child: SectionText(
                          points: [
                            "Vaccination Services: Flu shots and preventive vaccines administered on-site",
                            "Health & Wellness Workshops: Educate employees on healthy lifestyle practices",
                            "Doctor Consultations: Personalized advice for improving health",
                          ],
                          color: Colors.green,
                        ),
                      ),

                      Positioned(
                        top: 740,
                        left: 210,
                        child: SectionText(
                          points: [
                            "X-Ray Services: On-site imaging for accurate diagnostic evaluation",
                            "Ultrasound Services: High resolution imaging for thorough health check",
                            "Blood Sugar & Lipid Profile Testing: Quick screening for diabetes and cholesterol levels",
                          ],
                          color: Colors.orange,
                        ),
                      ),

                      Positioned(
                        top: 740,
                        right: 100,
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
                  /// TITLE
                  const Text(
                    "Our Previous Ventures",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF1F2A37),
                    ),
                  ),

                  const SizedBox(height: 40),

                  /// TWO COLUMN LAYOUT
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      /// LEFT COLUMN
                      Expanded(
                        child: Column(
                          children: const [
                            VentureItem(
                              image: "assets/company/bengaluru.png",
                              title: "Bengaluru",
                              description:
                                  "Successfully organized multiple health camps at Manyata Tech Park, Electronic City, and Whitefield Tech Hub, offering comprehensive diagnostic screenings, on-site consultations, and preventive healthcare services for employees.",
                            ),
                            SizedBox(height: 30),
                            VentureItem(
                              image: "assets/company/delhi.png",
                              title: "Delhi",
                              description:
                                  "Hosted corporate health awareness and screening camps at Connaught Place, focusing on preventive care, early detection, and lifestyle management through expert consultations and wellness initiatives.",
                            ),
                            SizedBox(height: 30),
                            VentureItem(
                              image: "assets/company/guwahati.png",
                              title: "Guwahati",
                              description:
                                  "Conducted community-focused health camps with essential screenings, awareness programs, and accessible healthcare services aimed at improving preventive care and overall community well-being.",
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(width: 60),

                      /// RIGHT COLUMN
                      Expanded(
                        child: Column(
                          children: const [
                            VentureItem(
                              image: "assets/company/kolkata.png",
                              title: "Kolkata",
                              description:
                                  "Conducted employee wellness camps at Salt Lake Sector V with advanced screenings, personalized health reports, and on-site consultations to support employee well-being and early diagnosis.",
                            ),
                            SizedBox(height: 30),
                            VentureItem(
                              image: "assets/company/mumbai.png",
                              title: "Mumbai",
                              description:
                                  "Organized corporate wellness camps for large enterprises, including full-body checkups, diagnostic screenings, and expert consultations tailored to increasing employee health and productivity.",
                            ),
                            SizedBox(height: 30),
                            VentureItem(
                              image: "assets/company/hyderabad.png",
                              title: "Hyderabad",
                              description:
                                  "Delivered on-site preventive healthcare services with comprehensive screenings, doctor consultations, and customized wellness programs aimed at improving long-term employee health outcomes.",
                            ),
                          ],
                        ),
                      ),
                    ],
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
