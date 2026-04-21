import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/landing_pages/cancellation_policy/mobile.dart';
import 'package:test_app/landing_pages/footer.dart';
import 'package:test_app/landing_pages/header.dart';
import 'package:test_app/landing_pages/shipping_page/widget.dart';
import 'package:test_app/landing_pages/terms_and_conditions/widget.dart';
import 'package:test_app/widgets/responsive_layout.dart'; // reuse TermCard

class CancellationRefundPage extends StatelessWidget {
  const CancellationRefundPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: const MobileCancellationRefundPage(),
      desktop: const CancellationRefundDesktopPage(),
    );
  }
}

class CancellationRefundDesktopPage extends StatelessWidget {
  const CancellationRefundDesktopPage({super.key});

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
                children: [
                  /// 🔹 CONTENT WITH PADDING
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        /// 🔹 TOP SECTION
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
                                    "CANCELLATION AND\nREFUND POLICY",
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
                                      Icon(Icons.favorite_border, size: 18.sp, color: const Color(0xFF2563EB)),
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
                                          "Effective Date: 1 April 2024",
                                          style: TextStyle(
                                            fontSize: 13.sp,
                                            fontWeight: FontWeight.w500,
                                            color: const Color(0xFF0F172A),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),

                                  SizedBox(height: 20.h),

                                  Text(
                                    "At Healthcare at Medidocs Pvt Ltd (a unit of Sanplus Healthcare Pvt Ltd), we aim to provide transparent and fair cancellation and refund practices across our services.",
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
                                "assets/extras/refund_illustration.webp",
                                height: 220.h,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height: 30.h),

                        /// 🔹 CARDS
                        TermCard(
                          number: "1",
                          title: "Medicine Orders",
                          description:
                              "Cancellations and refunds are not permitted once the order is confirmed. However, in cases where incorrect or damaged products are delivered, users may request a replacement or refund subject to verification.",
                          icon: Icons.medication_outlined,
                          color: const Color(0xFF22C55E),
                        ),

                        TermCard(
                          number: "2",
                          title: "Diagnostic Lab Services",
                          description:
                              "Cancellations made prior to sample collection are eligible for a full refund. Once the sample has been collected, cancellations are not permitted and no refund will be issued.",
                          icon: Icons.science_outlined,
                          color: const Color(0xFF8B5CF6),
                        ),

                        TermCard(
                          number: "3",
                          title: "Doctor Home Visit",
                          description:
                              "Doctor home visit appointments may be cancelled up to two hours prior to the scheduled time for a full refund. Cancellations made after this window are not eligible for refunds.",
                          icon: Icons.home_outlined,
                          color: const Color(0xFF2563EB),
                        ),

                        TermCard(
                          number: "4",
                          title: "Refund Processing",
                          description:
                              "All approved refunds will be processed to the original payment method used at the time of booking. Refunds are typically completed within 5 to 7 business days, depending on the payment provider.",
                          icon: Icons.account_balance_wallet_outlined,
                          color: const Color(0xFFF59E0B),
                        ),

                        SizedBox(height: 20.h),

                        /// 🔹 CONTACT BOX
                        const ContactSupportCard(),
                      ],
                    ),
                  ),

                  /// 🔹 FOOTER (OUTSIDE PADDING BUT INSIDE SCROLL)
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

