import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
        title: Header(activePage: 'Camps'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 20.h),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.r),
                child: Stack(
                  children: [
                    Image.asset(
                      'assets/company/camps_bg_1.png',
                      width: double.infinity,
                      height: 600.h,
                      fit: BoxFit.cover,
                    ),
                    Positioned.fill(
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              Colors.black.withValues(alpha: 0.68),
                              Colors.black.withValues(alpha: 0.32),
                              Colors.transparent,
                            ],
                            stops: [0.0, 0.36, 0.78],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 70.h,
                      left: 40.w,
                      right: 90.w,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Healthcare Camps,\nMade Accessible",
                            style: TextStyle(
                              fontSize: 50.sp,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                              height: 1.12,
                            ),
                          ),
                          SizedBox(height: 18.h),
                          Text(
                            "Bringing quality medical services closer to\ncommunities through organized health camps.",
                            style: TextStyle(
                              fontSize: 27.sp,
                              color: Colors.white.withValues(alpha: 0.90),
                              height: 1.35,
                            ),
                          ),
                          SizedBox(height: 34.h),
                          _heroPoint("Certified Doctors"),
                          SizedBox(height: 8.h),
                          _heroPoint("100+ Camps Conducted"),
                          SizedBox(height: 8.h),
                          _heroPoint("24/7 Support"),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 28.h,
                      left: 0.w,
                      right: 0.w,
                      child: Center(
                        child: GradientElevatedButton(
                          text: "Schedule a Camp",
                          onPressed: () {},
                          icon: Icon(Icons.calendar_today, size: 20),
                          textStyle: TextStyle(
                            fontSize: 20.sp,
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
              padding: EdgeInsets.fromLTRB(30.w, 20.h, 40.w, 20.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "What We Offer in Our Health Camps",
                    style: TextStyle(
                      fontSize: 32.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),

                  SizedBox(height: 10.h),

                  Text(
                    "Comprehensive on-site health screenings designed to detect, prevent, and promote employee well-being.",
                    style: TextStyle(
                      fontSize: 22.sp,
                      color: Color.fromARGB(255, 41, 41, 41),
                    ),
                  ),

                  SizedBox(height: 30.h),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20.r),
                    child: Image.asset(
                      'assets/company/health_services_image.png',
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(50.w, 40.h, 40.w, 40.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// TITLE
                  Text(
                    "Our Previous Ventures",
                    style: TextStyle(
                      fontSize: 30.sp,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF1F2A37),
                    ),
                  ),

                  SizedBox(height: 40.h),

                  /// TWO COLUMN LAYOUT
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      /// LEFT COLUMN
                      Expanded(
                        child: Column(
                          children: [
                            VentureItem(
                              image: "assets/cities/bengaluru.png",
                              title: "Bengaluru",
                              description:
                                  "Successfully organized multiple health camps at Manyata Tech Park, Electronic City, and Whitefield Tech Hub, offering comprehensive diagnostic screenings, on-site consultations, and preventive healthcare services for employees.",
                            ),
                            SizedBox(height: 30.h),
                            VentureItem(
                              image: "assets/cities/delhi.png",
                              title: "Delhi",
                              description:
                                  "Hosted corporate health awareness and screening camps at Connaught Place, focusing on preventive care, early detection, and lifestyle management through expert consultations and wellness initiatives.",
                            ),
                            SizedBox(height: 30.h),
                            VentureItem(
                              image: "assets/cities/guwahati.png",
                              title: "Guwahati",
                              description:
                                  "Conducted community-focused health camps with essential screenings, awareness programs, and accessible healthcare services aimed at improving preventive care and overall community well-being.",
                            ),
                          ],
                        ),
                      ),

                      SizedBox(width: 60.w),

                      /// RIGHT COLUMN
                      Expanded(
                        child: Column(
                          children: [
                            VentureItem(
                              image: "assets/cities/kolkata.png",
                              title: "Kolkata",
                              description:
                                  "Conducted employee wellness camps at Salt Lake Sector V with advanced screenings, personalized health reports, and on-site consultations to support employee well-being and early diagnosis.",
                            ),
                            SizedBox(height: 30.h),
                            VentureItem(
                              image: "assets/cities/mumbai.png",
                              title: "Mumbai",
                              description:
                                  "Organized corporate wellness camps for large enterprises, including full-body checkups, diagnostic screenings, and expert consultations tailored to increasing employee health and productivity.",
                            ),
                            SizedBox(height: 30.h),
                            VentureItem(
                              image: "assets/cities/hyderabad.png",
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

            SizedBox(height: 30.h),

            Footer(),
          ],
        ),
      ),
    );
  }

  Widget _heroPoint(String text) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          Icons.check,
          color: Colors.white,
          size: 21.sp,
        ),
        SizedBox(width: 10.w),
        Text(
          text,
          style: TextStyle(
            fontSize: 24.sp,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }

  Widget serviceBox({
    required String title,
    required List<String> points,
  }) {
    return Container(
      padding: EdgeInsets.all(20.r),
      decoration: BoxDecoration(
        color: Color(0xFF22C55E).withValues(alpha: 0.08),
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(
          color: Color(0xFF22C55E),
          width: 1.2.w,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10.h),

          ...points.map(
            (point) => Padding(
              padding: EdgeInsets.only(bottom: 6.h),
              child: Text(
                "• $point",
                style: TextStyle(
                  fontSize: 14.sp,
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
