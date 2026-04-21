import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/landing_pages/terms_and_conditions/mob_widget.dart';
import 'package:test_app/landing_pages/terms_and_conditions/page.dart';
import 'package:test_app/landing_pages/mob_footer.dart';
import 'package:test_app/landing_pages/mob_header.dart';
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

class MobileTermsPage extends StatelessWidget {
  const MobileTermsPage({super.key});

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

                  /// INTRO CARD
                  const TermsIntroCard(),

                  SizedBox(height: 12.h),

                  /// POLICY CARDS
                  const TermsItemCard(
                    title: "Acceptance of Terms",
                    description: "By accessing or using our services, you agree to be bound by these Terms. If you do not agree, you must not use the platform.",
                    icon: Icons.check_circle_outline,
                  ),

                  const TermsItemCard(
                    title: "Eligibility & Registration",
                    description:
                        "Users must be at least 18 years of age to independently use the services. Minors may access the services only under supervision of a guardian. Registration is mandatory and users must ensure all details are accurate and up to date.",
                    icon: Icons.person_outline,
                  ),

                  const TermsItemCard(
                    title: "Services Offered",
                    description:
                        "The Company provides ambulance booking, doctor home visits, diagnostic tests, medicine delivery, and medical camps. Services are subject to availability and may be rescheduled or declined based on feasibility.",
                    icon: Icons.local_hospital_outlined,
                  ),

                  const TermsItemCard(
                    title: "Medical Disclaimer",
                    description:
                        "All professionals are licensed practitioners. However, the Company acts only as a facilitator and is not responsible for medical advice, diagnosis, treatment outcomes, or complications.",
                    icon: Icons.warning_amber_outlined,
                  ),

                  const TermsItemCard(
                    title: "Payments",
                    description:
                        "Payments are processed via Razorpay supporting UPI, cards, and other methods including Cash on Delivery where applicable. Partial payments are not allowed.",
                    icon: Icons.payment_outlined,
                  ),

                  const TermsItemCard(
                    title: "User Conduct",
                    description:
                        "Users must use the platform responsibly. The Company may suspend or terminate accounts for misuse, fake bookings, non-cooperation, or fraudulent behavior.",
                    icon: Icons.rule_outlined,
                  ),

                  const TermsItemCard(
                    title: "Limitation of Liability",
                    description: "The Company is not liable for any indirect, incidental, or consequential damages arising from use of the platform or services.",
                    icon: Icons.gavel_outlined,
                  ),

                  const TermsItemCard(
                    title: "Modifications",
                    description: "We reserve the right to update or modify these Terms at any time without prior notice.",
                    icon: Icons.update_outlined,
                  ),

                  SizedBox(height: 12.h),

                  /// CONTACT CARD
                  const TermsContactCard(),

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

/// TEMP DESKTOP (avoid crash)
class TermsDesktopPage extends StatelessWidget {
  const TermsDesktopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Desktop Terms Page")),
    );
  }
}
