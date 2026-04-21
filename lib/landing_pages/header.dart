import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/landing_pages/about_us/page.dart';
import 'package:test_app/landing_pages/camp/page.dart';
import 'package:test_app/landing_pages/contact_us/page.dart';
import 'package:test_app/landing_pages/home/page.dart';

class Header extends StatelessWidget {
  final String? activePage;

  const Header({
    super.key,
    this.activePage,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: Align(
        alignment: Alignment.center,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40.w),
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacementNamed(context, '/');
                },
                child: Image.asset(
                  'assets/company/logo_with_text.webp',
                  height: 70.h,
                ),
              ),

              Spacer(),

              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  navButton('Home', context),
                  SizedBox(width: 20.w),

                  navButton('Camps', context),
                  SizedBox(width: 20.w),

                  navButton('About Us', context),
                  SizedBox(width: 20.w),

                  navButton('Contact Us', context),
                  SizedBox(width: 20.w),

                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [Color(0xFF239ED7), Color(0xFF66BB51)],
                            ),
                            borderRadius: BorderRadius.circular(30.r),
                          ),
                          padding: EdgeInsets.all(2.r), // border thickness

                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 18.w,
                              vertical: 12.h,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white, // inner color
                              borderRadius: BorderRadius.circular(28.r),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const Icon(Icons.person_outline, size: 18, color: Colors.black),
                                SizedBox(width: 8.w),
                                Text(
                                  'Login / Signup',
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black, // black text
                                  ),
                                ),
                              ],
                            ),
                          ),
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
              builder: (context) => DesktopHomePage(),
            ),
          );
        }
        if (text == 'Camps') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CampsPage(),
            ),
          );
        }
        if (text == 'About Us') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AboutUsPage(),
            ),
          );
        }
        if (text == 'Contact Us') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ContactUsPage(),
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
                fontSize: 16.sp,
                fontWeight: widget.isActive ? FontWeight.bold : FontWeight.normal,
                color: (isHover || widget.isActive) ? Colors.blue : Colors.black,
              ),
            ),
            SizedBox(height: 4.h),
            AnimatedContainer(
              duration: Duration(milliseconds: 250),
              height: 2.h,
              width: (isHover || widget.isActive) ? 40.w : 0.w,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
