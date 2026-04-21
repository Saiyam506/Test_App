import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/landing_pages/home/mob_widgets.dart';
import 'package:test_app/landing_pages/home/mobile.dart';

class MobileHeader extends StatelessWidget {
  const MobileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: 10.w,
        ),
        const MenuIcon(),
        SizedBox(width: 5.w),
        Expanded(
          child: GestureDetector(
            onTap: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (_) => const MobileHomePage()),
                (route) => false, // removes all previous pages
              );
            },
            child: Image.asset(
              'assets/company/logo_with_text.webp',
              height: width < 360 ? 58.h : 64.h,
              fit: BoxFit.contain,
              alignment: Alignment.centerLeft,
            ),
          ),
        ),
        SizedBox(width: 8.w),
        const CallEmergency(),
      ],
    );
  }
}

