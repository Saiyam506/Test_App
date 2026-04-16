import 'package:flutter/material.dart';
import 'package:test_app/landing_pages/about_us/page.dart';
import 'package:test_app/landing_pages/camp/page.dart';
import 'package:test_app/landing_pages/home/page.dart';

class Header extends StatelessWidget {
  final String activePage;

  const Header({super.key, required this.activePage});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Align(
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacementNamed(context, '/');
                },
                child: Image.asset(
                  'assets/company/logo_with_text.png',
                  height: 80,
                ),
              ),

              const Spacer(),

              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  navButton('Home', context),
                  const SizedBox(width: 20),

                  navButton('Camps', context),
                  const SizedBox(width: 20),

                  navButton('About Us', context),
                  const SizedBox(width: 20),

                  navButton('Contact Us', context),
                  const SizedBox(width: 20),

                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
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

                      const SizedBox(height: 5),

                      Padding(
                        padding: const EdgeInsets.only(right: 30),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: const [
                            Icon(
                              Icons.circle,
                              color: Colors.green,
                              size: 8,
                            ),
                            SizedBox(width: 6),
                            Text(
                              '24/7 Available',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: Colors.black87,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget navButton(String text, BuildContext context) {
    return NavItem(
      text: text,
      isActive: activePage == text,
      onTap: () {
        if (text == 'Home') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const HomePage(),
            ),
          );
        }
        if (text == 'Camps') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const CampsPage(),
            ),
          );
        }
        if (text == 'About Us') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const AboutPage(),
            ),
          );
        }
      },
    );
  }
}

class NavItem extends StatefulWidget {
  final String text;
  final bool isActive;
  final VoidCallback onTap;

  const NavItem({
    super.key,
    required this.text,
    required this.isActive,
    required this.onTap,
  });

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
            Text(
              widget.text,
              style: TextStyle(
                fontSize: 16,
                fontWeight: widget.isActive ? FontWeight.bold : FontWeight.normal,
                color: (isHover || widget.isActive) ? Colors.blue : Colors.black,
              ),
            ),
            const SizedBox(height: 4),
            AnimatedContainer(
              duration: const Duration(milliseconds: 250),
              height: 2,
              width: (isHover || widget.isActive) ? 40 : 0,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
