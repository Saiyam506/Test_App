import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/landing_pages/mob_footer.dart';
import 'package:test_app/landing_pages/mob_header.dart';
import 'package:test_app/landing_pages/privacy_policy/mob_widget.dart';
import 'package:test_app/landing_pages/privacy_policy/page.dart';
import 'package:test_app/widgets/responsive_layout.dart';

class PrivacyPage extends StatelessWidget {
  const PrivacyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: const MobilePrivacyPage(),
      desktop: const PrivacyPolicyPage(),
    );
  }
}

class MobilePrivacyPage extends StatelessWidget {
  const MobilePrivacyPage({super.key});

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
                  const PrivacyIntroCard(),

                  SizedBox(height: 12.h),

                  /// POLICY ITEMS
                  const PrivacyItemCard(
                    title: "Information We Collect",
                    description:
                        "We collect personal details such as name, mobile number, email, age, gender, address, IP address, and location data. Additionally, we collect medical data including reports, diagnostic results, and health history for service continuity.",
                    icon: Icons.person_outline,
                  ),

                  const PrivacyItemCard(
                    title: "Use of Information",
                    description:
                        "Your data is used to provide and improve services including medicine delivery, diagnostics, doctor consultations, ambulance services, and medical camps. We may also use it for analytics and to send service-related or promotional communications.",
                    icon: Icons.analytics_outlined,
                  ),

                  const PrivacyItemCard(
                    title: "Data Storage & Security",
                    description:
                        "All data is securely stored on cloud infrastructure such as Google Cloud. We use encryption and other safeguards to protect your information from unauthorized access, loss, or misuse.",
                    icon: Icons.security_outlined,
                  ),

                  const PrivacyItemCard(
                    title: "Data Sharing",
                    description:
                        "We do not sell or trade your data. Information may be shared with authorized partners such as doctors, labs, and delivery personnel strictly for service fulfillment.",
                    icon: Icons.share_outlined,
                  ),

                  const PrivacyItemCard(
                    title: "User Rights",
                    description:
                        "You can request deletion of your data or obtain a copy of stored data. Currently, direct modification is not supported. Requests can be made via support channels.",
                    icon: Icons.verified_user_outlined,
                  ),

                  const PrivacyItemCard(
                    title: "Legal Compliance",
                    description:
                        "This policy complies with the Information Technology Act, 2000 and the Digital Personal Data Protection Act, 2023.",
                    icon: Icons.gavel_outlined,
                  ),

                  SizedBox(height: 12.h),

                  /// CONTACT CARD
                  const PrivacyContactCard(),

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

/// TEMP DESKTOP
class PrivacyDesktopPage extends StatelessWidget {
  const PrivacyDesktopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Desktop Privacy Page")),
    );
  }
}