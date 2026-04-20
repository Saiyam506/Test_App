import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/landing_pages/home/mob_widgets.dart';

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
          child: Image.asset(
            'assets/company/logo_with_text.png',
            height: width < 360 ? 58.h : 64.h,
            fit: BoxFit.contain,
            alignment: Alignment.centerLeft,
          ),
        ),
        SizedBox(width: 8.w),
        const SignUpLoginButton(),
      ],
    );
  }
}
