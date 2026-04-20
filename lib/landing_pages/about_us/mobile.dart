import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/landing_pages/about_us/mob_widgets.dart';
import 'package:test_app/landing_pages/home/mob_widgets.dart';
import 'package:test_app/landing_pages/mob_header.dart';

class MobileAboutUs extends StatelessWidget {
  const MobileAboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC), // subtle background
      body: Stack(
        children: [
          // 🔹 Background Image (static)
          Positioned.fill(
            child: Image.asset(
              "assets/company/bg_camps_mobile.png", // same as camps or your new bg
              fit: BoxFit.cover,
            ),
          ),

          // 🔹 Foreground Content (scrollable)
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const MobileHeader(),

                SizedBox(height: 16.h),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Container(
                    padding: EdgeInsets.all(16.w),
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0xFFFFFFFF),
                          Color(0xFFF7FBFF),
                        ],
                      ),
                      border: Border.all(
                        color: const Color(0xFFE2E8F0),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(18.r),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xFF0F172A).withValues(alpha: 0.06),
                          blurRadius: 18.r,
                          offset: Offset(0, 8.h),
                        ),
                      ],
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          right: -6.w,
                          top: 10.h,
                          bottom: 10.h,
                          child: Opacity(
                            opacity: 0.16,
                            child: Image.asset(
                              "assets/company/mob_about_us_illustration.png",
                              width: 190.w,
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        ),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 130.w),
                              child: Text(
                                "About Us",
                                style: TextStyle(
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w600,
                                  color: const Color(0xFF2563EB),
                                ),
                              ),
                            ),

                            SizedBox(height: 8.h),

                            Padding(
                              padding: EdgeInsets.only(right: 120.w),
                              child: Text(
                                "Revolutionizing",
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w700,
                                  color: const Color(0xFF0F172A),
                                ),
                              ),
                            ),

                            SizedBox(height: 4.h),

                            Padding(
                              padding: EdgeInsets.only(right: 120.w),
                              child: Text(
                                "Healthcare Access",
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w700,
                                  color: const Color(0xFF2563EB),
                                ),
                              ),
                            ),

                            SizedBox(height: 16.h),

                            Text(
                              "At MediDocs, we are committed to transforming healthcare by connecting patients with trusted providers through seamless digital solutions.",
                              style: TextStyle(
                                fontSize: 11.5.sp,
                                height: 1.58,
                                color: const Color(0xFF334155),
                              ),
                            ),

                            SizedBox(height: 12.h),

                            Text(
                              "Founded with the mission to make healthcare accessible and efficient, we leverage technology to ensure patients receive the care they need anytime, anywhere.",
                              style: TextStyle(
                                fontSize: 11.5.sp,
                                height: 1.58,
                                color: const Color(0xFF334155),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 20.h),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: GridView.count(
                    crossAxisCount: 2,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisSpacing: 12.w,
                    mainAxisSpacing: 12.h,
                    childAspectRatio: 0.9,
                    children: const [
                      InfoCard(
                        icon: Icons.add,
                        title: "MISSION",
                        description:
                            "To make healthcare accessible, affordable and efficient for everyone by simplifying preventive care, diagnostics, and timely medical support.",
                        iconColor: Colors.blue,
                        bgColor: Color(0xFFE3F2FD),
                      ),

                      InfoCard(
                        icon: Icons.visibility,
                        title: "VISION",
                        description: "To build a connected healthcare ecosystem powered by technology, transparency, and compassionate service across every stage of care.",
                        iconColor: Colors.indigo,
                        bgColor: Color(0xFFEDE7F6),
                      ),

                      InfoCard(
                        icon: Icons.people,
                        title: "VALUES",
                        description: "We uphold integrity, empathy, and excellence in everything we do, ensuring patient-first care and continuous improvement.",
                        iconColor: Colors.blueGrey,
                        bgColor: Color(0xFFE0F2F1),
                      ),

                      InfoCard(
                        icon: Icons.shield,
                        title: "OUR COMMITMENT",
                        description: "We are committed to delivering reliable, high-quality healthcare services with a focus on safety, trust and consultations.",
                        iconColor: Colors.green,
                        bgColor: Color(0xFFE8F5E9),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 24.h),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Our Presence Across Cities",
                        style: TextStyle(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFF0F172A),
                        ),
                      ),

                      SizedBox(height: 6.h),

                      Text(
                        "Delivering impactful health camps across leading corporate hubs in India.",
                        style: TextStyle(
                          fontSize: 11.sp,
                          height: 1.5,
                          color: const Color(0xFF64748B),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16.h),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: GridView.count(
                    crossAxisCount: 2,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisSpacing: 12.w,
                    mainAxisSpacing: 12.h,
                    childAspectRatio: 1.4,
                    children: const [
                      CityCard(imagePath: "assets/cities/bengaluru_city.png"),
                      CityCard(imagePath: "assets/cities/delhi_city.png"),
                      CityCard(imagePath: "assets/cities/guwahati_city.png"),
                      CityCard(imagePath: "assets/cities/hyderabad_city.png"),
                      CityCard(imagePath: "assets/cities/kolkata_city.png"),
                      CityCard(imagePath: "assets/cities/mumbai_city.png"),
                    ],
                  ),
                ),
                SizedBox(height: 16.h),

                const MobileFooter(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
