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

class NavItem extends StatefulWidget {
  final String text;
  final VoidCallback onTap;

  const NavItem({super.key, required this.text, required this.onTap});

  @override
  State<NavItem> createState() => _NavItemState();
}

class _NavItemState extends State<NavItem> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
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
                color: isHover ? const Color(0xFF2A8DB8) : Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
              child: Text(widget.text),
            ),
            const SizedBox(height: 4),
            AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              height: 2,
              width: isHover ? 40 : 0,
              color: const Color(0xFF2A8DB8),
            ),
          ],
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Widget serviceButton({
    required String title,
    required String subtitle,
    required String image,
    double imageHeight = 100,
    double imageOffsetY = 0,
  }) {
    return InkWell(
      borderRadius: BorderRadius.circular(25),
      onTap: () {
        debugPrint('$title clicked');
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
              color: Colors.black.withValues(alpha: 0.12),
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
            Expanded(
              child: Center(
                child: Transform.translate(
                  offset: Offset(0, imageOffsetY),
                  child: Image.asset(
                    image,
                    height: imageHeight,
                    fit: BoxFit.contain,
                  ),
                ),
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
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 90,
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            children: [
              Image.asset(
                'assets/company/logo_with_text.png',
                height: 70,
              ),
              const Spacer(),
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
                            NavItem(
                              text: 'Home',
                              onTap: () {},
                            ),
                            const SizedBox(width: 16),

                            NavItem(
                              text: 'Camps',
                              onTap: () {},
                            ),
                            const SizedBox(width: 16),

                            NavItem(
                              text: 'About Us',
                              onTap: () {},
                            ),
                            const SizedBox(width: 16),

                            NavItem(
                              text: 'Contact',
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
                      ),
                      Positioned(
                        right: 30,
                        top: 70,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: const [
                            Icon(
                              Icons.circle,
                              color: Colors.green,
                              size: 8, // 👈 slightly bigger
                            ),
                            SizedBox(width: 6),
                            Text(
                              '24/7 Available',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w500, // 👈 better look
                                color: Colors.black87,
                              ),
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

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            children: [
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

              const SizedBox(height: 5),

              const Text(
                'Get healthcare at your doorstep',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey,
                ),
              ),

              const SizedBox(height: 20),

              Center(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      serviceButton(
                        title: 'Ambulance\nService',
                        subtitle: '24/7 emergency support',
                        image: 'assets/company/ambulance_button.png',
                        imageHeight: 120,
                        imageOffsetY: 6,
                      ),
                      const SizedBox(width: 20),
                      serviceButton(
                        title: 'Doctor\nAppointment',
                        subtitle: 'Doctors at your doorstep',
                        image: 'assets/company/doctor_checkup_button.png',
                        imageHeight: 110,
                        imageOffsetY: 8,
                      ),
                      const SizedBox(width: 20),
                      serviceButton(
                        title: 'Lab and\nDiagnostics',
                        subtitle: 'Sample collection at home',
                        image: 'assets/company/lab_test_button.png',
                        imageHeight: 140,
                        imageOffsetY: 10,
                      ),
                      const SizedBox(width: 20),
                      serviceButton(
                        title: 'Senior Health\nCare',
                        subtitle: 'Care and support for seniors',
                        image: 'assets/company/senior_care_button.png',
                        imageHeight: 120,
                        imageOffsetY: 10,
                      ),
                      const SizedBox(width: 20),
                      serviceButton(
                        title: 'Meds\nDelivery',
                        subtitle: 'Medicines delivered fast',
                        image: 'assets/company/meds_del_button.png',
                        imageHeight: 120,
                        imageOffsetY: 8,
                      ),
                      const SizedBox(width: 20),
                      serviceButton(
                        title: 'Medical\nCamp',
                        subtitle: 'Health checkups at your workspace',
                        image: 'assets/company/medcamp_button.png',
                        imageHeight: 140,
                        imageOffsetY: 10,
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 20),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset(
                    'assets/company/home_banner.png',
                    width: double.infinity,
                    height: 260,
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              const SizedBox(height: 40),

              Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
                decoration: BoxDecoration(
                  color: const Color(0xFFE6ECF2),
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.08),
                      blurRadius: 20,
                      offset: const Offset(0, 8),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    const Text(
                      'Patient Testimonials',
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 30),
                    Container(
                      width: 260,
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.black12),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              const CircleAvatar(
                                radius: 25,
                                backgroundColor: Colors.grey,
                              ),
                              const SizedBox(width: 12),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'Rahul S., 28',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(height: 4),
                                  Row(
                                    children: [
                                      Icon(Icons.star, color: Colors.orange, size: 16),
                                      Icon(Icons.star, color: Colors.orange, size: 16),
                                      Icon(Icons.star, color: Colors.orange, size: 16),
                                      Icon(Icons.star, color: Colors.orange, size: 16),
                                      Icon(Icons.star, color: Colors.orange, size: 16),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 16),
                          const Text(
                            'Booking a full-body checkup was incredibly seamless. The phlebotomist arrived right on time and was highly professional.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 14,
                              height: 1.5,
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
