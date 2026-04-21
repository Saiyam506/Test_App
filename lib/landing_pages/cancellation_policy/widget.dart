// widget.dart (add this class)

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
          /// ICON
          Container(
            padding: EdgeInsets.all(16.r),
            decoration: BoxDecoration(
              color: const Color(0xFFE0E7FF),
              shape: BoxShape.circle,
            ),
            child: Icon(Icons.headset_mic, color: Color(0xFF2563EB), size: 24.sp),
          ),

          SizedBox(width: 20.w),

          /// TEXT + DETAILS
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "For any queries, please contact:",
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF0F172A),
                  ),
                ),

                SizedBox(height: 12.h),

                Row(
                  children: [
                    Icon(Icons.email, size: 18.sp, color: const Color(0xFF2563EB)),
                    SizedBox(width: 8.w),
                    Text(
                      "support@medidocs.in",
                      style: TextStyle(fontSize: 14.sp),
                    ),

                    SizedBox(width: 30.w),

                    Icon(Icons.phone, size: 18.sp, color: const Color(0xFF2563EB)),
                    SizedBox(width: 8.w),
                    Text(
                      "+91 6366677010",
                      style: TextStyle(fontSize: 14.sp),
                    ),
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
