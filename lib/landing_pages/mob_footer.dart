import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/landing_pages/cancellation_policy/mobile.dart';
import 'package:test_app/landing_pages/cancellation_policy/page.dart';
import 'package:url_launcher/url_launcher.dart';

class MobileFooter extends StatelessWidget {
  const MobileFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.fromLTRB(20.w, 24.h, 20.w, 20.h),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF0A1F44), Colors.black],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Connect With Us:',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 14.h),
          Row(
            children: [
              SocialIconButton(
                imagePath: 'assets/company/facebook.png',
                url: 'https://www.facebook.com/medidocsindia',
              ),
              SizedBox(width: 14.w),
              SocialIconButton(
                imagePath: 'assets/company/instagram.png',
                url: 'https://www.instagram.com/medidocsindia/',
              ),
              SizedBox(width: 14.w),
              SocialIconButton(
                imagePath: 'assets/company/linkedin.png',
                url: 'https://in.linkedin.com/company/medi-docs-india',
              ),
            ],
          ),
          SizedBox(height: 28.h),
          Text(
            'Subscribe to our Newsletter',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 12.h),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(14.r),
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Enter your Email ID..',
                hintStyle: TextStyle(
                  color: const Color(0xFF6E7582),
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                ),
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.send_outlined,
                    color: const Color(0xFF2D3A55),
                    size: 20.sp,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 30.h),
          Text(
            'Contact Us',
            style: TextStyle(
              color: Colors.white,
              fontSize: 4.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 12.h),
          Row(
            children: [
              Icon(Icons.call, color: Colors.white, size: 20.sp),
              SizedBox(width: 10.w),
              Text(
                '+91 98765 43210',
                style: TextStyle(color: Colors.white, fontSize: 10.sp),
              ),
            ],
          ),
          SizedBox(height: 12.h),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.location_on_outlined, color: Colors.white, size: 22.sp),
              SizedBox(width: 10.w),
              Expanded(
                child: Text(
                  '123, Health Street, Andheri East,\nMumbai, Maharashtra 400069, India',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14.sp,
                    height: 1.3.h,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 16.h),
          GestureDetector(
            onTap: () async {
              final uri = Uri.parse(
                'https://www.google.com/maps?q=123,+Health+Street,+Andheri+East,+Mumbai,+Maharashtra+400069,+India',
              );
              if (await canLaunchUrl(uri)) {
                await launchUrl(uri);
              }
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.r),
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: Image.asset(
                  'assets/company/map.png',
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(height: 26.h),
          Divider(color: Colors.white.withValues(alpha: 0.18), thickness: 1.h),
          SizedBox(height: 14.h),
          Center(
            child: Wrap(
              alignment: WrapAlignment.center,
              spacing: 12.w,
              runSpacing: 8.h,
              children: [
                FooterNavButton(
                  label: "Terms & Conditions",
                  onTap: () {
                    print("CLICKED"); // 👈 check this
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => const MobileCancellationRefundPage()),
                    );
                  },
                ),

                FooterNavButton(
                  label: "Privacy Policy",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => const MobileCancellationRefundPage()),
                    );
                  },
                ),

                FooterNavButton(
                  label: "Cancellation & Refund",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => const MobileCancellationRefundPage()),
                    );
                  },
                ),

                FooterNavButton(
                  label: "Shipping & Delivery",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => const MobileCancellationRefundPage()),
                    );
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: 12.h),
          Center(
            child: Text(
              'Â© 2026 Medidocs. All rights reserved',
              style: TextStyle(color: Colors.white60, fontSize: 14.sp),
            ),
          ),
        ],
      ),
    );
  }
}

class SocialIconButton extends StatelessWidget {
  const SocialIconButton({
    super.key,
    required this.imagePath,
    required this.url,
  });

  final String imagePath;
  final String url;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        final uri = Uri.parse(url);
        if (await canLaunchUrl(uri)) {
          await launchUrl(uri);
        }
      },
      borderRadius: BorderRadius.circular(8.r),
      child: Ink(
        width: 38.w,
        height: 38.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: Padding(
          padding: EdgeInsets.all(5.r),
          child: Image.asset(imagePath, fit: BoxFit.contain),
        ),
      ),
    );
  }
}

class MobileFooterLink extends StatelessWidget {
  const MobileFooterLink({
    super.key,
    required this.label,
  });

  final String label;

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.center,
      label,
      style: TextStyle(
        color: Colors.white70,
        fontSize: 14.sp,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}

class FooterNavButton extends StatelessWidget {
  final String label;
  final VoidCallback onTap;

  const FooterNavButton({
    super.key,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // 👈 use this for safety
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.white54),
        ),
        child: Text(
          label,
          style: const TextStyle(color: Colors.white, fontSize: 12),
        ),
      ),
    );
  }
}
