import 'package:flutter/material.dart';
import 'main.dart';
import 'widgets/gradient_elevated_button.dart';

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
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage()),
                  );
                },
                child: Image.asset(
                  'assets/company/logo_with_text.png',
                  height: 70,
                ),
              ),
              const Spacer(),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  NavItem(
                    text: 'Home',
                    isActive: false,
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => const HomePage()),
                      );
                    },
                  ),
                  const SizedBox(width: 20),
                  NavItem(
                    text: 'Camps',
                    isActive: true,
                    onTap: () {},
                  ),
                  const SizedBox(width: 20),
                  NavItem(
                    text: 'About Us',
                    isActive: false,
                    onTap: () {},
                  ),
                  const SizedBox(width: 20),
                  NavItem(
                    text: 'Contact',
                    isActive: false,
                    onTap: () {},
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
            ],
          ),
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

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: serviceBox(
                                title: "Core Health Screenings",
                                points: [
                                  "Blood Tests - Complete blood analysis",
                                  "Basic Vitals Check - BP, BMI, temperature",
                                  "ECG (Electrocardiogram) - Heart monitoring",
                                ],
                              ),
                            ),
                            const SizedBox(width: 20),
                            Expanded(
                              child: serviceBox(
                                title: "Specialized Assessments",
                                points: [
                                  "Eye Examination - Vision screening",
                                  "Skin Examination - Dermatology checks",
                                  "Audiometry - Hearing tests",
                                ],
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(height: 20),

                        Row(
                          children: [
                            Expanded(
                              child: serviceBox(
                                title: "Advanced Diagnostics",
                                points: [
                                  "X-Ray Services - On-site imaging",
                                  "Pulmonary Function Test (PFT)",
                                ],
                              ),
                            ),
                            const SizedBox(width: 20),
                            Expanded(
                              child: serviceBox(
                                title: "Preventive Care",
                                points: [
                                  "Vaccination Services - Flu shots & more",
                                  "General Health Counseling - Guidance on lifestyle, diet, and preventive care",
                                ],
                              ),
                            ),
                            const SizedBox(height: 30),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 40, 40, 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // 🔹 Heading
                  Text(
                    "Our Previous Ventures",
                    style: TextStyle(
                      fontSize: 30, // 🔧 heading size
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),

                  const SizedBox(height: 20),

                  // 🔹 Bangalore (TOP)
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
                      color: Colors.black87,
                    ),
                  ),

                  const SizedBox(height: 16),

                  // 🔹 Kolkata
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
                      color: Colors.black87,
                    ),
                  ),

                  const SizedBox(height: 16),

                  // 🔹 Delhi
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
                      color: Colors.black87,
                    ),
                  ),

                  const SizedBox(height: 16),

                  // 🔹 Guwahati
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
                      color: Colors.black87,
                    ),
                  ),

                  const SizedBox(height: 16),

                  // 🔹 Mumbai
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
                      color: Colors.black87,
                    ),
                  ),

                  const SizedBox(height: 16),

                  // 🔹 Hyderabad
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
                      color: Colors.black87,
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
                  color: Colors.black87,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class GradientButton extends StatefulWidget {
  final String text;
  final VoidCallback onTap;

  const GradientButton({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  State<GradientButton> createState() => _GradientButtonState();
}

class _GradientButtonState extends State<GradientButton> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() => isHover = true),
      onExit: (_) => setState(() => isHover = false),
      child: GestureDetector(
        onTap: widget.onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          transform: isHover ? Matrix4.diagonal3Values(1.05, 1.05, 1) : Matrix4.identity(),
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 14),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            gradient: const LinearGradient(
              colors: [
                Color(0xFF2A8DB8), // blue
                Color(0xFF4CAF50), // green
              ],
            ),
            boxShadow: [
              BoxShadow(
                color: isHover ? Colors.black.withValues(alpha: 0.25) : Colors.black.withValues(alpha: 0.15),
                blurRadius: isHover ? 15 : 8,
                offset: const Offset(0, 5),
              ),
            ],
          ),
          child: Text(
            widget.text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}

class NavItem extends StatefulWidget {
  final String text;
  final VoidCallback onTap;
  final bool isActive;

  const NavItem({
    super.key,
    required this.text,
    required this.onTap,
    this.isActive = false,
  });

  @override
  State<NavItem> createState() => _NavItemState();
}

class _NavItemState extends State<NavItem> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    final bool active = widget.isActive || isHover;

    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() => isHover = true),
      onExit: (_) => setState(() => isHover = false),
      child: GestureDetector(
        onTap: widget.onTap,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AnimatedDefaultTextStyle(
              duration: const Duration(milliseconds: 200),
              style: TextStyle(
                color: active ? const Color(0xFF2A8DB8) : Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
              child: Text(widget.text),
            ),
            const SizedBox(height: 4),
            AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              height: 2,
              width: active ? 40 : 0,
              color: const Color(0xFF2A8DB8),
            ),
          ],
        ),
      ),
    );
  }
}
