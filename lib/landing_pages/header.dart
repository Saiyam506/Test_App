import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/landing_pages/about_us/page.dart';
import 'package:test_app/landing_pages/camp/page.dart';
import 'package:test_app/landing_pages/contact_us/page.dart';
import 'package:test_app/landing_pages/home/page.dart';

class Header extends StatelessWidget {
  final String activePage;

  const Header({super.key, required this.activePage});

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
                  'assets/company/logo_with_text.png',
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
                      ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.call, size: 18),
                        label: Text('Call Emergency'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          foregroundColor: Colors.white,
                          padding: EdgeInsets.symmetric(
                            horizontal: 18.w,
                            vertical: 12.h,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.r),
                          ),
                        ),
                      ),

                      SizedBox(height: 5.h),

                      Padding(
                        padding: EdgeInsets.only(right: 30.w),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.circle,
                              color: Colors.green,
                              size: 8,
                            ),
                            SizedBox(width: 6.w),
                            Text(
                              '24/7 Available',
                              style: TextStyle(
                                fontSize: 13.sp,
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
              builder: (context) => HomePage(),
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
              builder: (context) => AboutPage(),
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
