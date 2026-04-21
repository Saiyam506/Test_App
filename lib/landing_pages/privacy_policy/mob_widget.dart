import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// INTRO CARD
class PrivacyIntroCard extends StatelessWidget {
  const PrivacyIntroCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Privacy Policy",
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 6.h),
          Text(
            "Effective Date: 1 April 2024",
            style: TextStyle(fontSize: 12.sp, color: Colors.grey),
          ),
          SizedBox(height: 10.h),
          Text(
            "Healthcare at Medidocs Pvt Ltd values your trust and is committed to protecting your personal and sensitive medical information in accordance with applicable Indian laws.",
            style: TextStyle(fontSize: 13.sp, height: 1.5),
          ),
        ],
      ),
    );
  }
}

/// ITEM CARD
class PrivacyItemCard extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;

  const PrivacyItemCard({
    super.key,
    required this.title,
    required this.description,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10.h),
      padding: EdgeInsets.all(14.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14.r),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, size: 22.sp, color: const Color(0xFF239ED7)),
          SizedBox(width: 10.w),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 4.h),
                Text(
                  description,
                  style: TextStyle(
                    fontSize: 12.5.sp,
                    height: 1.5,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/// CONTACT CARD
class PrivacyContactCard extends StatelessWidget {
  const PrivacyContactCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(14.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Contact & Grievance",
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 6.h),

          Text("Email: support@medidocs.in"),
          Text("Phone: +91 6366677010"),
          Text("Grievance Officer: Shivanand PL"),
          Text("Contact: +91 82960 99030"),
          Text(
            "Address: 1st floor, 27, 27th Cross Rd, Jayanagar, Bengaluru, Karnataka 560070",
          ),
        ],
      ),
    );
  }
}
