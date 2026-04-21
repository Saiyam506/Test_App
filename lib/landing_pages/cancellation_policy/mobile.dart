import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/landing_pages/cancellation_policy/mob_widget.dart';
import 'package:test_app/landing_pages/cancellation_policy/page.dart';
import 'package:test_app/landing_pages/mob_footer.dart';
import 'package:test_app/landing_pages/mob_header.dart';
import 'package:test_app/widgets/responsive_layout.dart';

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

class MobileCancellationRefundPage extends StatelessWidget {
  const MobileCancellationRefundPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),

      body: SingleChildScrollView(
        child: Column(
          children: [
            const MobileHeader(),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Column(
                children: [
                  SizedBox(height: 12.h),

                  /// MAIN POLICY CARD
                  const PolicyIntroCard(),

                  SizedBox(height: 12.h),

                  /// SECTIONS
                  const PolicyItemCard(
                    title: "Medicine Orders",
                    description:
                        "Cancellations and refunds are not permitted once the order is confirmed. However, in cases where incorrect or damaged products are delivered, users may request a replacement or refund subject to verification.",
                    icon: Icons.medication_outlined,
                  ),

                  const PolicyItemCard(
                    title: "Diagnostic Lab Services",
                    description:
                        "Cancellations made prior to sample collection are eligible for a full refund. Once the sample has been collected, cancellations are not permitted and no refund will be issued.",
                    icon: Icons.science_outlined,
                  ),

                  const PolicyItemCard(
                    title: "Doctor Home Visit Appointments",
                    description:
                        "Appointments may be cancelled up to two hours prior to the scheduled time for a full refund. Cancellations made after this window are not eligible for refunds.",
                    icon: Icons.home_outlined,
                  ),

                  const PolicyItemCard(
                    title: "Refund Processing",
                    description:
                        "All approved refunds will be processed to the original payment method used at the time of booking. Refunds are typically completed within 5 to 7 business days, depending on the payment provider.",
                    icon: Icons.credit_card_outlined,
                  ),

                  SizedBox(height: 12.h),

                  /// CONTACT CARD
                  const ContactCard(),

                  SizedBox(height: 20.h),
                ],
              ),
            ),

            const MobileFooter(),
          ],
        ),
      ),
    );
  }
}
