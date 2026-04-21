import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/landing_pages/shipping_page/mob_widget.dart';
import 'package:test_app/landing_pages/mob_footer.dart';
import 'package:test_app/landing_pages/mob_header.dart';
import 'package:test_app/landing_pages/shipping_page/page.dart';
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

class MobileShippingPage extends StatelessWidget {
  const MobileShippingPage({super.key});

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
                  const ShippingIntroCard(),

                  SizedBox(height: 12.h),

                  /// POLICY ITEMS
                  const ShippingItemCard(
                    title: "Medicine Delivery",
                    description:
                        "Medicine delivery is undertaken as promptly as possible after order confirmation. Certain medicines may require a valid prescription, and failure to provide the same may result in cancellation of the order.",
                    icon: Icons.medication_outlined,
                  ),

                  const ShippingItemCard(
                    title: "Diagnostic Services",
                    description:
                        "For diagnostic services, users can select available time slots for home sample collection. Reports are typically generated and delivered within 1 to 2 days, depending on the nature of the test.",
                    icon: Icons.science_outlined,
                  ),

                  const ShippingItemCard(
                    title: "Doctor Home Visit",
                    description:
                        "Doctor home visit services must be scheduled at least one hour in advance and are subject to availability. Emergency services are not offered through this platform. In the event of unavailability of a booked doctor, the Company will make reasonable efforts to arrange an alternative practitioner.",
                    icon: Icons.home_outlined,
                  ),

                  const ShippingItemCard(
                    title: "Delays & Limitations",
                    description:
                        "While we strive to ensure timely delivery and service fulfillment, delays may occur due to factors beyond our control such as traffic, weather, operational issues, or partner availability. The Company shall not be held liable for such delays.",
                    icon: Icons.schedule_outlined,
                  ),

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