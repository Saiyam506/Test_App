import 'package:flutter/material.dart';
import 'package:test_app/landing_pages/footer.dart';
import 'package:test_app/landing_pages/header.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/landing_pages/terms_and_conditions/mobile.dart';
import 'package:test_app/landing_pages/terms_and_conditions/widget.dart';
import 'package:test_app/widgets/responsive_layout.dart';

class TermsPage extends StatelessWidget {
  const TermsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: const MobileTermsPage(),
      desktop: const TermsAndConditionsPage(),
    );
  }
}

class TermsAndConditionsPage extends StatelessWidget {
  const TermsAndConditionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const Header(),

          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 50.w, vertical: 30.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            /// LEFT TEXT
                            Expanded(
                              flex: 2,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "TERMS AND CONDITIONS",
                                    style: TextStyle(
                                      fontSize: 32.sp,
                                      fontWeight: FontWeight.bold,
                                      color: const Color(0xFF0F172A),
                                    ),
                                  ),

                                  SizedBox(height: 10.h),

                                  Row(
                                    children: [
                                      Container(
                                        height: 2.h,
                                        width: 80.w,
                                        color: const Color(0xFF2563EB),
                                      ),
                                      SizedBox(width: 8.w),
                                      Icon(Icons.favorite_border, size: 18.sp, color: Color(0xFF2563EB)),
                                    ],
                                  ),

                                  SizedBox(height: 16.h),

                                  Container(
                                    padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 10.h),
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFE2E8F0),
                                      borderRadius: BorderRadius.circular(8.r),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Icon(Icons.calendar_today, size: 16.sp, color: const Color(0xFF2563EB)),
                                        SizedBox(width: 8.w),
                                        Text(
                                          "Effective Date: 1 April 2026",
                                          style: TextStyle(
                                            fontSize: 13.sp,
                                            color: const Color(0xFF0F172A),
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),

                                  SizedBox(height: 20.h),

                                  Text(
                                    "These Terms and Conditions (“Terms”) govern your access to and use of the platform operated by Healthcare at Medidocs Pvt Ltd (a unit of Sanplus Healthcare Pvt Ltd) through its website and mobile applications.",
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      height: 1.6,
                                      color: const Color(0xFF334155),
                                    ),
                                  ),

                                  SizedBox(height: 10.h),

                                  Text(
                                    "By accessing or using our services, you agree to be bound by these Terms. If you do not agree, you must not use the platform.",
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      height: 1.6,
                                      color: const Color(0xFF334155),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            SizedBox(width: 20.w),

                            /// RIGHT IMAGE
                            Expanded(
                              flex: 1,
                              child: Image.asset(
                                "assets/extras/terms_illustration.webp",
                                height: 200.h,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height: 30.h),

                        TermCard(
                          number: "1",
                          title: "Eligibility and Registration",
                          description:
                              "Users must be at least 18 years of age to independently use the services. Minors may access the services only under the supervision and consent of a parent or legal guardian.",
                          icon: Icons.group_outlined,
                          color: Color(0xFF3B82F6),
                        ),

                        TermCard(
                          number: "2",
                          title: "Services Offered",
                          description:
                              "The Company provides a range of healthcare facilitation services including ambulance booking, doctor home visits, diagnostic lab tests, medicine delivery, and medical camps.",
                          icon: Icons.volunteer_activism_outlined,
                          color: Color(0xFF22C55E),
                        ),

                        TermCard(
                          number: "3",
                          title: "Medical Disclaimer",
                          description:
                              "All medical professionals engaged through the platform are licensed practitioners. However, the Company acts solely as a facilitator and shall not be held responsible or liable for any medical advice, diagnosis, treatment outcomes, or complications arising from such services.",
                          icon: Icons.medical_services_outlined,
                          color: const Color(0xFF6366F1), // purple/blue tone
                        ),

                        TermCard(
                          number: "4",
                          title: "Payments",
                          description:
                              "Payments for services are processed through authorized payment gateways such as Razorpay, supporting UPI, cards, and other digital payment methods, along with Cash on Delivery where applicable. Partial payments are not permitted.",
                          icon: Icons.credit_card_outlined,
                          color: const Color(0xFFF59E0B), // orange tone
                        ),

                        TermCard(
                          number: "5",
                          title: "User Responsibilities",
                          description:
                              "Users are expected to use the platform responsibly. The Company reserves the right to suspend or terminate accounts in cases of misuse, including but not limited to booking fake services, non-cooperation with service providers, or any fraudulent or abusive behavior.",
                          icon: Icons.person_outline,
                          color: const Color(0xFFEF4444), // red tone
                        ),

                        TermCard(
                          number: "6",
                          title: "Limitation of Liability",
                          description:
                              "To the fullest extent permitted by law, the Company shall not be liable for any indirect, incidental, or consequential damages arising from the use of the platform or services.",
                          icon: Icons.balance_outlined,
                          color: const Color(0xFF2563EB), // blue tone
                        ),

                        TermCard(
                          number: "7",
                          title: "Changes to Terms",
                          description: "We reserve the right to update or modify these Terms at any time without prior notice.",
                          icon: Icons.edit_outlined,
                          color: const Color(0xFF14B8A6),
                        ),
                      ],
                    ),
                  ),
                  const Footer(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

