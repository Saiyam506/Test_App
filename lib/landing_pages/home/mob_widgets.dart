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

class CallEmergency extends StatelessWidget {
  const CallEmergency({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        /// 🔴 BUTTON
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
          decoration: BoxDecoration(
            color: const Color(0xFFE53935),
            borderRadius: BorderRadius.circular(38.r),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(
                Icons.call,
                color: Colors.white,
                size: 18,
              ),
              SizedBox(width: 8.w),
              Text(
                'Call Emergency',
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),

        SizedBox(height: 4.h),

        /// 🟢 STATUS TEXT WITH DOT
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 6.w,
              height: 6.w,
              decoration: const BoxDecoration(
                color: Color(0xFF22C55E), // green dot
                shape: BoxShape.circle,
              ),
            ),
            SizedBox(width: 6.w),
            Text(
              '24/7 Available',
              style: TextStyle(
                fontSize: 10.sp,
                color: Colors.grey[600],
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ],
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
