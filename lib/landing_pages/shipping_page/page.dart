import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/landing_pages/shipping_page/mobile.dart';
import 'package:test_app/landing_pages/shipping_page/widget.dart';
import 'package:test_app/landing_pages/footer.dart';
import 'package:test_app/landing_pages/header.dart';
import 'package:test_app/widgets/responsive_layout.dart';

class ShippingPage extends StatelessWidget {
  const ShippingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: const MobileShippingPage(),
      desktop: const ShippingDeliveryPage(),
    );
  }
}

class ShippingDeliveryPage extends StatelessWidget {
  const ShippingDeliveryPage({super.key});

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
                  /// 🔹 BODY (WITH PADDING)
                  PolicySection(
                    children: [
                      PolicyHeaderSection(
                        title: "SHIPPING AND\nDELIVERY POLICY",
                        effectiveDate: "Effective Date: 1 April 2024",
                        description:
                            "Healthcare at Medidocs Pvt Ltd (a unit of Sanplus Healthcare Pvt Ltd) provides healthcare-related delivery and service facilitation across India, subject to serviceability and operational constraints.",
                        imagePath: "assets/extras/delivery_illustration.webp",
                      ),

                      SizedBox(height: 30.h),

                      PolicyCard(
                        number: "1",
                        title: "Medicine Delivery",
                        description: "Medicine delivery is undertaken as promptly as possible after order confirmation. Certain medicines may require a valid prescription.",
                        icon: Icons.medication_outlined,
                        color: Color(0xFF22C55E),
                      ),

                      PolicyCard(
                        number: "2",
                        title: "Diagnostic Services",
                        description: "Users can select time slots for home sample collection. Reports are typically delivered within 1 to 2 days.",
                        icon: Icons.science_outlined,
                        color: Color(0xFF8B5CF6),
                      ),

                      PolicyCard(
                        number: "3",
                        title: "Doctor Home Visit Services",
                        description: "Doctor visits must be scheduled at least one hour in advance and are subject to availability.",
                        icon: Icons.home_outlined,
                        color: Color(0xFF2563EB),
                      ),

                      PolicyCard(
                        number: "4",
                        title: "Delivery and Service Delays",
                        description: "Delays may occur due to traffic, weather, or operational issues. The Company is not liable for such delays.",
                        icon: Icons.local_shipping_outlined,
                        color: Color(0xFFF59E0B),
                      ),

                      SizedBox(height: 20.h),

                      /// ✅ FIXED HERE
                      ContactSupportCard(),
                    ],
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

