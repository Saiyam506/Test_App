import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/landing_pages/footer.dart';
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
        title: Header(activePage: 'About Us'),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            // 🔹 WRAP ONLY THIS SECTION
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 40.h),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "About Us:",
                                style: TextStyle(
                                  fontSize: 30.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xFF3B82F6),
                                ),
                              ),
                              SizedBox(height: 1.h),
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "Revolutionizing ",
                                      style: TextStyle(
                                        fontSize: 26.sp,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xFF1F2A37),
                                      ),
                                    ),
                                    TextSpan(
                                      text: "Healthcare Access",
                                      style: TextStyle(
                                        fontSize: 26.sp,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xFF3B82F6),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 10.h),
                              Text(
                                "At MediDocs, we’re committed to transforming healthcare by connecting patients with trusted providers through seamless digital solutions. Founded with the mission to make healthcare accessible and efficient, we leverage technology to ensure patients receive the care they need anytime, anywhere.",
                                style: TextStyle(
                                  fontSize: 20.sp,
                                  height: 1.6.h,
                                  color: Color(0xFF6B7280),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 40.w),
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

                  SizedBox(height: 28.h),

                  LayoutBuilder(
                    builder: (context, constraints) {
                      const double gap = 12;

                      return Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: InfoCard(
                              icon: Icons.gps_fixed_rounded,
                              title: 'MISSION',
                              description:
                                  'To make healthcare accessible, affordable, and efficient for everyone by simplifying preventive care, diagnostics, and timely medical support.',
                            ),
                          ),
                          SizedBox(width: gap),
                          Expanded(
                            child: InfoCard(
                              icon: Icons.tips_and_updates_outlined,
                              title: 'VISION',
                              description: 'To build a connected healthcare ecosystem powered by technology, transparency, and compassionate service across every stage of care.',
                            ),
                          ),
                          SizedBox(width: gap),
                          Expanded(
                            child: InfoCard(
                              icon: Icons.groups_2_outlined,
                              title: 'VALUES',
                              description: 'We uphold integrity, empathy, and excellence in everything we do, ensuring patient-first care and continuous improvement.',
                            ),
                          ),
                          SizedBox(width: gap),
                          Expanded(
                            child: InfoCard(
                              icon: Icons.verified_user_outlined,
                              title: 'OUR COMMITMENT',
                              description: 'We are committed to delivering reliable, high-quality healthcare services with a focus on safety, trust, and long-term well-being.',
                            ),
                          ),
                        ],
                      );
                    },
                  ),

                  SizedBox(height: 44.h),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Our Presence Across Cities',
                      style: TextStyle(
                        fontSize: 26.sp,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF1E293B),
                      ),
                    ),
                  ),
                  SizedBox(height: 6.h),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Delivering impactful health camps across leading corporate hubs in India.',
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: Color(0xFF0F172A),
                      ),
                    ),
                  ),

                  SizedBox(height: 28.h),

                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        CityImage(imagePath: 'assets/cities/bengaluru_city.png'),
                        SizedBox(width: 24.w),
                        CityImage(imagePath: 'assets/cities/kolkata_city.png'),
                        SizedBox(width: 24.w),
                        CityImage(imagePath: 'assets/cities/mumbai_city.png'),
                        SizedBox(width: 24.w),
                        CityImage(imagePath: 'assets/cities/hyderabad_city.png'),
                        SizedBox(width: 24.w),
                        CityImage(imagePath: 'assets/cities/delhi_city.png'),
                        SizedBox(width: 24.w),
                        CityImage(imagePath: 'assets/cities/guwahati_city.png'),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 40.h),

            Footer(),
          ],
        ),
      ),
    );
  }
}
