import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 40.h),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF0A1F44),
            Colors.black,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        children: [
          Center(
            child: SizedBox(
              width: 1000.w,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Connect With Us:",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 12.h),
                        Row(
                          children: [
                            _socialButton(
                              icon: Icons.facebook,
                              url: "https://facebook.com",
                              color: Colors.blue,
                            ),
                            SizedBox(width: 12.w),
                            _socialButton(
                              icon: Icons.camera_alt,
                              url: "https://instagram.com",
                              color: Colors.pink,
                            ),
                            SizedBox(width: 12.w),
                            _socialButton(
                              icon: Icons.work,
                              url: "https://linkedin.com",
                              color: Colors.blueAccent,
                            ),
                          ],
                        ),
                        SizedBox(height: 30.h),
                        Text(
                          "Subscribe to our Newsletter",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 12.h),
                        SizedBox(
                          width: 260.w,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white.withValues(alpha: 0.9),
                              borderRadius: BorderRadius.circular(14.r),
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: "Enter your Email ID..",
                                      border: InputBorder.none,
                                      contentPadding: EdgeInsets.symmetric(
                                        horizontal: 16.w,
                                        vertical: 14.h,
                                      ),
                                    ),
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.send),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 100.w),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Contact Us",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 15.h),
                        Row(
                          children: [
                            Icon(Icons.phone, color: Colors.white, size: 18),
                            SizedBox(width: 8.w),
                            Text(
                              "+91 98765 43210",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        SizedBox(height: 10.h),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(Icons.location_on, color: Colors.white, size: 18),
                            SizedBox(width: 8.w),
                            Expanded(
                              child: Text(
                                "123, Health Street, Andheri East,\nMumbai, Maharashtra 400069, India",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20.h),
                        GestureDetector(
                          onTap: () async {
                            final Uri url = Uri.parse(
                              "https://maps.app.goo.gl/oKELutSjGZgzip7g9",
                            );
                            if (await canLaunchUrl(url)) {
                              await launchUrl(url);
                            }
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12.r),
                            child: Image.asset(
                              "assets/company/map.png",
                              height: 180.h,
                              width: 420.w,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 40.h),
          Container(
            width: 1000.w,
            height: 1.h,
            color: Colors.white24,
          ),
          SizedBox(height: 20.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _footerLink("Terms & Conditions", "#"),
              SizedBox(width: 10.w),
              Text("|", style: TextStyle(color: Colors.white54)),
              SizedBox(width: 10.w),
              _footerLink("Privacy Policy", "#"),
              SizedBox(width: 10.w),
              Text("|", style: TextStyle(color: Colors.white54)),
              SizedBox(width: 10.w),
              _footerLink("Cancellation & Refund", "#"),
              SizedBox(width: 10.w),
              Text("|", style: TextStyle(color: Colors.white54)),
              SizedBox(width: 10.w),
              _footerLink("Shipping & Delivery", "#"),
            ],
          ),
          SizedBox(height: 15.h),
          Text(
            "© 2026 Medidocs. All rights reserved",
            style: TextStyle(color: Colors.white60),
          ),
        ],
      ),
    );
  }
}

Widget _socialButton({
  required IconData icon,
  required String url,
  required Color color,
}) {
  return InkWell(
    onTap: () async {
      final Uri uri = Uri.parse(url);
      if (await canLaunchUrl(uri)) {
        await launchUrl(uri);
      }
    },
    child: Container(
      padding: EdgeInsets.all(12.r),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.2),
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Icon(icon, color: Colors.white),
    ),
  );
}

Widget _footerLink(String text, String url) {
  return InkWell(
    onTap: () async {
      final Uri uri = Uri.parse(url);
      if (await canLaunchUrl(uri)) {
        await launchUrl(uri);
      }
    },
    child: Text(
      text,
      style: TextStyle(color: Colors.white70),
    ),
  );
}
