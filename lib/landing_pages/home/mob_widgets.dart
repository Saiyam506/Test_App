import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/landing_pages/camp/mobile.dart';
import 'package:url_launcher/url_launcher.dart';

class MenuIcon extends StatelessWidget {
  const MenuIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 25.w,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _line(),
          SizedBox(height: 6.h),
          _line(),
          SizedBox(height: 6.h),
          _line(),
        ],
      ),
    );
  }

  Widget _line() {
    return Container(
      width: 34.w,
      height: 5.h,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(4.r),
      ),
    );
  }
}

class SignUpLoginButton extends StatelessWidget {
  const SignUpLoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFF239ED7), Color(0xFF66BB51)],
        ),
        borderRadius: BorderRadius.circular(38.r),
      ),
      child: Padding(
        padding: EdgeInsets.all(2.r),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 10.h),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(36.r),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Call Emergency',
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
              SizedBox(width: 10.w),
            ],
          ),
        ),
      ),
    );
  }
}

class MobileServiceData {
  final String title;
  final String subtitle;
  final String imagePath;
  final VoidCallback onTap;

  const MobileServiceData({
    required this.title,
    required this.subtitle,
    required this.imagePath,
    required this.onTap,
  });
}

class MobileServiceCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imagePath;
  final VoidCallback onTap;

  const MobileServiceCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.imagePath,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(22.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.08),
            blurRadius: 18.r,
            offset: Offset(0, 8.h),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(22.r),
        child: InkWell(
          borderRadius: BorderRadius.circular(22.r),
          onTap: onTap,
          child: SizedBox(
            height: 176.h,
            child: Padding(
              padding: EdgeInsets.fromLTRB(12.w, 10.h, 10.w, 8.h),
              child: Stack(
                children: [
                  /// 🔹 TITLE (FIXED)
                  Positioned(
                    top: 3.h,
                    left: 0.w,
                    right: 22.w,
                    child: Text(
                      title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w800,
                        color: Colors.black,
                        height: 1.1,
                      ),
                    ),
                  ),

                  /// 🔹 SUBTITLE
                  Positioned(
                    top: 50.h, // slightly adjusted to match new title spacing
                    left: 0.w,
                    right: 22.w,
                    child: Text(
                      subtitle,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFF60708A),
                        height: 1.2,
                      ),
                    ),
                  ),

                  /// 🔹 ARROW
                  Positioned(
                    top: 78.h,
                    right: 0.w,
                    child: Icon(
                      Icons.chevron_right,
                      size: 28.sp,
                      color: Colors.black,
                    ),
                  ),

                  /// 🔹 IMAGE
                  Positioned(
                    left: 0.w,
                    right: 0.w,
                    bottom: 0.h,
                    child: Image.asset(
                      imagePath,
                      height: 84.h,
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class TestimonialCard extends StatelessWidget {
  final String name;
  final String text;

  const TestimonialCard({
    super.key,
    required this.name,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240.w,
      padding: EdgeInsets.all(14.r),
      decoration: BoxDecoration(
        color: const Color(0xFFF4F6F8),
        borderRadius: BorderRadius.circular(22.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 20.r,
                backgroundColor: Color(0xFFE0E0E0),
                child: Icon(Icons.person, color: Colors.black54),
              ),
              SizedBox(width: 8.w),
              Flexible(
                child: Text(
                  name,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 15.sp,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 6.h),
          Row(
            children: List.generate(
              5,
              (index) => Icon(
                Icons.star,
                size: 14.sp,
                color: Color(0xFFFFC107),
              ),
            ),
          ),
          SizedBox(height: 6.h),
          Expanded(
            child: Text(
              text,
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 12.5.sp,
                color: Color(0xFF60708A),
                height: 1.3.h,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HospitalCard extends StatelessWidget {
  final String imagePath;

  const HospitalCard({
    super.key,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240.w,
      margin: EdgeInsets.symmetric(vertical: 6.h),
      padding: EdgeInsets.all(14.r),
      decoration: BoxDecoration(
        color: Colors.white, // cleaner than grey
        borderRadius: BorderRadius.circular(20.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.06),
            blurRadius: 20.r,
            offset: Offset(0, 10.h),
          ),
        ],
      ),
      child: Center(
        child: Image.asset(
          imagePath,
          height: 90.h,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}

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
              fontSize: 24.sp,
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
              fontSize: 24.sp,
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
                  color: Color(0xFF6E7582),
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w500,
                ),
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.send_outlined,
                    color: Color(0xFF2D3A55),
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
              fontSize: 26.sp,
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
                style: TextStyle(color: Colors.white, fontSize: 22.sp),
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
                    fontSize: 20.sp,
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
          Wrap(
            alignment: WrapAlignment.center,
            spacing: 12.w,
            runSpacing: 8.h,
            children: [
              MobileFooterLink(label: 'Terms & Conditions'),
              Text('|', style: TextStyle(color: Colors.white54)),
              MobileFooterLink(label: 'Privacy Policy'),
              Text('|', style: TextStyle(color: Colors.white54)),
              MobileFooterLink(label: 'Cancellation & Refund'),
              Text('|', style: TextStyle(color: Colors.white54)),
              MobileFooterLink(label: 'Shipping & Delivery'),
            ],
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
      label,
      style: TextStyle(
        color: Colors.white70,
        fontSize: 14.sp,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}

class MedicalCampCard extends StatelessWidget {
  const MedicalCampCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => const MobileCamps(),
          ),
        );
      },
      child: const SizedBox(), // no UI, just tap area
    );
  }
}
