import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// 🔹 HEADER SECTION
class PolicyHeaderSection extends StatelessWidget {
  final String title;
  final String effectiveDate;
  final String description;
  final String imagePath;

  const PolicyHeaderSection({
    super.key,
    required this.title,
    required this.effectiveDate,
    required this.description,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 32.sp,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF0F172A),
                ),
              ),

              SizedBox(height: 10.h),

              Row(
                children: [
                  Container(
                    height: 2.h,
                    width: 80.w,
                    color: const Color(0xFF2563EB),
                  ),
                  SizedBox(width: 8.w),
                  Icon(Icons.favorite_border, size: 18.sp, color: const Color(0xFF2563EB)),
                ],
              ),

              SizedBox(height: 16.h),

              Container(
                padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 10.h),
                decoration: BoxDecoration(
                  color: const Color(0xFFE2E8F0),
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.calendar_today, size: 16.sp, color: const Color(0xFF2563EB)),
                    SizedBox(width: 8.w),
                    Text(
                      effectiveDate,
                      style: TextStyle(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFF0F172A),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20.h),

              Text(
                description,
                style: TextStyle(
                  fontSize: 14.sp,
                  height: 1.6,
                  color: const Color(0xFF334155),
                ),
              ),
            ],
          ),
        ),

        SizedBox(width: 20.w),

        Expanded(
          flex: 1,
          child: Image.asset(
            imagePath,
            height: 220.h,
            fit: BoxFit.contain,
          ),
        ),
      ],
    );
  }
}

/// 🔹 CARD
class PolicyCard extends StatelessWidget {
  final String number;
  final String title;
  final String description;
  final IconData icon;
  final Color color;

  const PolicyCard({
    super.key,
    required this.number,
    required this.title,
    required this.description,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(14.r),
            decoration: BoxDecoration(
              color: color.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Icon(icon, color: color, size: 24.sp),
          ),

          SizedBox(width: 16.w),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width: 26.w,
                      height: 26.h,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        color: Color(0xFF0F172A),
                        shape: BoxShape.circle,
                      ),
                      child: Text(
                        number,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Expanded(
                      child: Text(
                        title,
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xFF0F172A),
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 8.h),

                Text(
                  description,
                  style: TextStyle(
                    fontSize: 13.sp,
                    height: 1.6,
                    color: const Color(0xFF475569),
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

/// 🔹 SECTION WRAPPER
class PolicySection extends StatelessWidget {
  final List<Widget> children;

  const PolicySection({
    super.key,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: children,
      ),
    );
  }
}

/// 🔹 CONTACT CARD
class ContactSupportCard extends StatelessWidget {
  const ContactSupportCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.w),
      decoration: BoxDecoration(
        color: const Color(0xFFF1F5F9),
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(16.r),
            decoration: const BoxDecoration(
              color: Color(0xFFE0E7FF),
              shape: BoxShape.circle,
            ),
            child: Icon(Icons.headset_mic, color: Color(0xFF2563EB), size: 24.sp),
          ),

          SizedBox(width: 20.w),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "For any queries, please contact:",
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                SizedBox(height: 12.h),

                Row(
                  children: [
                    Icon(Icons.email, size: 18.sp, color: const Color(0xFF2563EB)),
                    SizedBox(width: 8.w),
                    Text("support@medidocs.in"),

                    SizedBox(width: 30.w),

                    Icon(Icons.phone, size: 18.sp, color: const Color(0xFF2563EB)),
                    SizedBox(width: 8.w),
                    Text("+91 6366677010"),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
