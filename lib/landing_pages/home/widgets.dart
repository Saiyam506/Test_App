import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HoverServiceButton extends StatefulWidget {
  final String title;
  final String subtitle;
  final String image;
  final double imageHeight;
  final double imageOffsetY;
  final VoidCallback? onTap;

  const HoverServiceButton({
    super.key,
    required this.title,
    required this.subtitle,
    required this.image,
    required this.imageHeight,
    required this.imageOffsetY,
    this.onTap,
  });

  @override
  State<HoverServiceButton> createState() => _HoverServiceButtonState();
}

class _HoverServiceButtonState extends State<HoverServiceButton> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() => isHover = true),
      onExit: (_) => setState(() => isHover = false),
      child: TweenAnimationBuilder<double>(
        tween: Tween<double>(
          begin: 1.0,
          end: isHover ? 1.05 : 1.0,
        ),
        duration: Duration(milliseconds: 200),
        curve: Curves.easeOut,
        builder: (context, scale, child) {
          return Transform.scale(
            scale: scale,
            child: Container(
              height: 220.h,
              width: 220.w,
              padding: EdgeInsets.all(16.r),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25.r),
                boxShadow: [
                  BoxShadow(
                    color: Color.lerp(
                      Colors.black12,
                      Colors.black26,
                      (scale - 1) / 0.05, // sync shadow with scale
                    )!,
                    blurRadius: lerpDouble(10, 20, (scale - 1) / 0.05)!,
                    offset: Offset(0, 6),
                  ),
                ],
              ),
              child: child,
            ),
          );
        },
        child: InkWell(
          borderRadius: BorderRadius.circular(25.r),
          onTap: widget.onTap,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.title,
                maxLines: 2,
                style: TextStyle(
                  fontSize: 22.sp,
                  fontWeight: FontWeight.w900,
                ),
              ),
              SizedBox(height: 6.h),
              Text(
                widget.subtitle,
                style: TextStyle(
                  fontSize: 12.sp,
                  color: Colors.grey,
                ),
              ),
              Expanded(
                child: Center(
                  child: Transform.translate(
                    offset: Offset(0, widget.imageOffsetY),
                    child: Image.asset(
                      widget.image,
                      height: widget.imageHeight,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NavButton extends StatefulWidget {
  final String text;
  final VoidCallback onTap;

  const NavButton({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  State<NavButton> createState() => _NavButtonState();
}

class _NavButtonState extends State<NavButton> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() => isHover = true),
      onExit: (_) => setState(() => isHover = false),
      child: GestureDetector(
        onTap: widget.onTap,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AnimatedDefaultTextStyle(
              duration: Duration(milliseconds: 200),
              style: TextStyle(
                color: isHover ? Colors.blue : Colors.black,
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
              ),
              child: Text(widget.text),
            ),
            SizedBox(height: 4.h),
            AnimatedContainer(
              duration: Duration(milliseconds: 200),
              height: 2.h,
              width: isHover ? 40.w : 0.w,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}

class TestimonialCard extends StatelessWidget {
  final String name;
  final String text;
  final double height;

  const TestimonialCard({
    super.key,
    required this.name,
    required this.text,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 260.w,
      height: height,
      padding: EdgeInsets.all(16.r),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.r),
        border: Border.all(color: Colors.black12),
      ),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 22.r,
                backgroundColor: Colors.grey,
              ),
              SizedBox(width: 10.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 15.sp,
                    ),
                  ),
                  SizedBox(height: 4.h),
                  Row(
                    children: List.generate(
                      5,
                      (index) => Icon(
                        Icons.star,
                        color: Colors.orange,
                        size: 14,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 12.h),
          Expanded(
            child: Center(
              child: Text(
                text,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 13.5.sp,
                  height: 1.5.h,
                  color: Colors.black87,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HospitalBox extends StatelessWidget {
  final VoidCallback? onTap;
  final String? imagePath;

  const HospitalBox({
    super.key,
    this.onTap,
    this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ?? () {},
      child: Container(
        width: 260.w,
        height: 200.h,
        padding: EdgeInsets.all(16.r),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.r),
          border: Border.all(color: Colors.black12),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: imagePath != null
            ? Center(
                child: Image.asset(
                  imagePath!,
                  fit: BoxFit.contain,
                ),
              )
            : SizedBox(),
      ),
    );
  }
}
