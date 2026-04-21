import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/landing_pages/camp/mob_widgets.dart';
import 'package:test_app/landing_pages/mob_footer.dart';

class MobileCamps extends StatelessWidget {
  const MobileCamps({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // 🔹 Static Background
          Positioned.fill(
            child: Image.asset(
              "assets/company/bg_camps_mobile.webp",
              fit: BoxFit.cover,
            ),
          ),

          // 🔹 Content
          SingleChildScrollView(
            child: Column(
              children: [
                const PaddedHeader(),

                SizedBox(height: 12.h),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // 🔹 Banner Image
                      ClipRRect(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(16.r),
                        ),
                        child: Image.asset(
                          "assets/company/camps_bg_1.webp",
                          height: 180.h,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),

                      // 🔹 Banner Content Card
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(14.w),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.vertical(
                            bottom: Radius.circular(16.r),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withValues(alpha: 0.05),
                              blurRadius: 10.r,
                              offset: Offset(0, 4.h),
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Plan Corporate Health Camps\nfor Your Organization",
                              style: TextStyle(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.bold,
                                height: 1.4.h,
                                color: Colors.black,
                              ),
                            ),

                            SizedBox(height: 8.h),

                            Text(
                              "Seamless corporate health camps with expert doctors, diagnostics, and on-site care.",
                              style: TextStyle(
                                fontSize: 11.sp,
                                height: 1.4.h,
                                color: Colors.grey[700],
                              ),
                            ),

                            SizedBox(height: 14.h),

                            // 🔹 Gradient Button
                            Container(
                              decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                  colors: [
                                    Color(0xFF1E88E5),
                                    Color(0xFF43A047),
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(20.r),
                              ),
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.transparent,
                                  foregroundColor: Colors.white,
                                  shadowColor: Colors.transparent,
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 20.w,
                                    vertical: 10.h,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.r),
                                  ),
                                ),
                                child: Text(
                                  "Schedule a Camp",
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 20.h),

                      // 🔹 Section Title
                      Text(
                        "What We Offer in Our Health Camps",
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          height: 1.3.h,
                        ),
                      ),

                      SizedBox(height: 6.h),

                      Text(
                        "Comprehensive on-site health screening designed to detect, prevent, and promote employee well-being.",
                        style: TextStyle(
                          fontSize: 11.sp,
                          height: 1.4.h,
                          color: Colors.grey[700],
                        ),
                      ),

                      SizedBox(height: 16.h),

                      // 🔹 Service Grid
                      GridView.count(
                        crossAxisCount: 2,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        crossAxisSpacing: 12.w,
                        mainAxisSpacing: 12.h,
                        childAspectRatio: 1.05,
                        children: const [
                          ServiceCard(
                            icon: Icons.health_and_safety,
                            title: "Core Health\nScreening",
                            color: Color(0xFFE3F2FD),
                            iconColor: Colors.blue,
                            points: [
                              "Blood tests",
                              "Vitals check",
                              "BMI assessment",
                            ],
                          ),
                          ServiceCard(
                            icon: Icons.shield,
                            title: "Preventive\nCare",
                            color: Color(0xFFE8F5E9),
                            iconColor: Colors.green,
                            points: [
                              "Health awareness",
                              "Risk assessment",
                              "Lifestyle guidance",
                            ],
                          ),
                          ServiceCard(
                            icon: Icons.monitor_heart,
                            title: "Advanced\nDiagnostics",
                            color: Color(0xFFFFEBEE),
                            iconColor: Colors.red,
                            points: [
                              "ECG & scans",
                              "Lab diagnostics",
                              "Detailed reports",
                            ],
                          ),
                          ServiceCard(
                            icon: Icons.assignment,
                            title: "Specialized\nAssessments",
                            color: Color(0xFFEDE7F6),
                            iconColor: Colors.indigo,
                            points: [
                              "Mental health",
                              "Nutrition check",
                              "Fitness analysis",
                            ],
                          ),
                        ],
                      ),

                      SizedBox(height: 20.h),

                      Text(
                        "Our Previous Ventures",
                        style: TextStyle(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),

                      SizedBox(height: 12.h),

                      // 🔹 Phone Row
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.all(8.r),
                            decoration: BoxDecoration(
                              color: const Color(0xFFE3F2FD),
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.phone,
                              color: Colors.blue,
                              size: 16.sp,
                            ),
                          ),
                          SizedBox(width: 10.w),
                          Text(
                            "+91-98765-43210",
                            style: TextStyle(
                              fontSize: 12.sp,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 10.h),

                      // 🔹 Address Row
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.all(8.r),
                            decoration: BoxDecoration(
                              color: const Color(0xFFEDE7F6),
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.location_on,
                              color: Colors.black,
                              size: 16.sp,
                            ),
                          ),
                          SizedBox(width: 10.w),
                          Expanded(
                            child: Text(
                              "123, Health Street, Andheri East,\nMumbai, Maharashtra 400069, India",
                              style: TextStyle(
                                fontSize: 12.sp,
                                color: Colors.grey[800],
                                height: 1.4.h,
                              ),
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 16.h),

                      SizedBox(height: 16.h),

                      Column(
                        children: const [
                          CityInfoCard(
                            image: "assets/cities/bengaluru.webp",
                            title: "Bengaluru",
                            description:
                                "Successfully organized multiple health camps at Manyata Tech Park, Electronic City, and Whitefield Tech Hub, offering comprehensive diagnostic screenings, on-site consultations, and preventive healthcare services.",
                          ),

                          CityInfoCard(
                            image: "assets/cities/delhi.webp",
                            title: "Delhi",
                            description:
                                "Hosted corporate health awareness and screening camps at Connaught Place, focusing on preventive care, early detection, and lifestyle management through expert consultations.",
                          ),

                          CityInfoCard(
                            image: "assets/cities/guwahati.webp",
                            title: "Guwahati",
                            description:
                                "Conducted community-focused health camps with essential screenings, awareness programs, and accessible healthcare services aimed at improving preventive care.",
                          ),

                          CityInfoCard(
                            image: "assets/cities/hyderabad.webp",
                            title: "Hyderabad",
                            description:
                                "Delivered on-site preventive healthcare services with comprehensive screenings, doctor consultations, and customized wellness programs for long-term outcomes.",
                          ),

                          CityInfoCard(
                            image: "assets/cities/kolkata.webp",
                            title: "Kolkata",
                            description:
                                "Conducted employee wellness camps at Salt Lake Sector V with advanced screenings, personalized health reports, and on-site consultations.",
                          ),

                          CityInfoCard(
                            image: "assets/cities/mumbai.webp",
                            title: "Mumbai",
                            description: "Organized corporate wellness camps for large enterprises including full-body checkups, diagnostic screenings, and expert consultations.",
                          ),
                        ],
                      ),
                      SizedBox(height: 16.h),
                    ],
                  ),
                ),
                const MobileFooter(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

