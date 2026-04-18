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
        title: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: Header(activePage: 'Camps'),
        ),
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
                      'assets/company/camps_banner.png',
                      width: double.infinity,
                      height: 600.h,
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                      bottom: 40.h,
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

                  Padding(
                    padding: EdgeInsets.fromLTRB(30.w, 10.h, 40.w, 10.h),
                    child: Row(
                      children: [
                        Text(
                          "Our Services",
                          style: TextStyle(
                            fontSize: 22.sp,
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
                        borderRadius: BorderRadius.circular(20.r),
                        child: Image.asset(
                          'assets/company/camps_design.png',
                          width: double.infinity,
                          fit: BoxFit.contain,
                        ),
                      ),

                      Positioned(
                        top: 70.h,
                        left: 640.w,
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
                        top: 350.h,
                        left: 640.w,
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
                        top: 740.h,
                        left: 210.w,
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
                        top: 740.h,
                        right: 100.w,
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
                              image: "assets/company/bengaluru.png",
                              title: "Bengaluru",
                              description:
                                  "Successfully organized multiple health camps at Manyata Tech Park, Electronic City, and Whitefield Tech Hub, offering comprehensive diagnostic screenings, on-site consultations, and preventive healthcare services for employees.",
                            ),
                            SizedBox(height: 30.h),
                            VentureItem(
                              image: "assets/company/delhi.png",
                              title: "Delhi",
                              description:
                                  "Hosted corporate health awareness and screening camps at Connaught Place, focusing on preventive care, early detection, and lifestyle management through expert consultations and wellness initiatives.",
                            ),
                            SizedBox(height: 30.h),
                            VentureItem(
                              image: "assets/company/guwahati.png",
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
                              image: "assets/company/kolkata.png",
                              title: "Kolkata",
                              description:
                                  "Conducted employee wellness camps at Salt Lake Sector V with advanced screenings, personalized health reports, and on-site consultations to support employee well-being and early diagnosis.",
                            ),
                            SizedBox(height: 30.h),
                            VentureItem(
                              image: "assets/company/mumbai.png",
                              title: "Mumbai",
                              description:
                                  "Organized corporate wellness camps for large enterprises, including full-body checkups, diagnostic screenings, and expert consultations tailored to increasing employee health and productivity.",
                            ),
                            SizedBox(height: 30.h),
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

            SizedBox(height: 30.h),

            Footer(),
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
