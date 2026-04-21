import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/landing_pages/footer.dart';
import 'package:test_app/landing_pages/header.dart';
import 'package:test_app/landing_pages/privacy_policy/widget.dart';

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({super.key});

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
                  PolicySection(
                    children: [
                      const PolicyHeaderSection(
                        title: "PRIVACY POLICY",
                        effectiveDate: "Effective Date: 1 April 2024",
                        description:
                            "Healthcare at Medidocs Pvt Ltd (a unit of Sanplus Healthcare Pvt Ltd) values your trust and is committed to protecting your personal and sensitive medical information in accordance with applicable Indian laws.",
                        imagePath: "assets/extras/privacy_illustration.png",
                      ),

                      SizedBox(height: 30.h),

                      const PolicyCard(
                        number: "1",
                        title: "Information We Collect",
                        description:
                            "We collect personal information including your name, mobile number, email address, age, gender, address, IP address, and location data. We also collect medical data such as reports and health history.",
                        icon: Icons.person_outline,
                        color: Color(0xFF3B82F6),
                      ),

                      const PolicyCard(
                        number: "2",
                        title: "Use of Information",
                        description:
                            "Information is used to provide and improve services like medicine delivery, diagnostics, doctor consultations, and more. We may also send promotional communications.",
                        icon: Icons.medical_services_outlined,
                        color: Color(0xFF22C55E),
                      ),

                      const PolicyCard(
                        number: "3",
                        title: "Data Security",
                        description: "All data is securely stored using cloud infrastructure with encryption and safeguards to prevent unauthorized access or misuse.",
                        icon: Icons.cloud_outlined,
                        color: Color(0xFF8B5CF6),
                      ),

                      const PolicyCard(
                        number: "4",
                        title: "Sharing of Information",
                        description: "We do not sell your data. Information may be shared with authorized partners like doctors, labs, and delivery personnel when required.",
                        icon: Icons.groups_outlined,
                        color: Color(0xFF2563EB),
                      ),

                      const PolicyCard(
                        number: "5",
                        title: "Your Rights",
                        description: "You may request deletion or access to your data. Data modification is currently not supported.",
                        icon: Icons.description_outlined,
                        color: Color(0xFF10B981),
                      ),

                      const PolicyCard(
                        number: "6",
                        title: "Legal Compliance",
                        description: "This policy complies with the Information Technology Act, 2000 and the Digital Personal Data Protection Act, 2023.",
                        icon: Icons.balance_outlined,
                        color: Color(0xFF7C3AED),
                      ),

                      SizedBox(height: 20.h),

                      const PrivacyContactCard(),
                    ],
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
