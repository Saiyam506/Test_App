import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GradientButton extends StatefulWidget {
  final String text;
  final VoidCallback onTap;

  const GradientButton({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  State<GradientButton> createState() => _GradientButtonState();
}

class _GradientButtonState extends State<GradientButton> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() => isHover = true),
      onExit: (_) => setState(() => isHover = false),
      child: GestureDetector(
        onTap: widget.onTap,
        child: AnimatedContainer(
          duration: Duration(milliseconds: 200),
          transform: isHover ? Matrix4.diagonal3Values(1.05, 1.05, 1) : Matrix4.identity(),
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 14.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40.r),
            gradient: LinearGradient(
              colors: [
                Color(0xFF2A8DB8), // blue
                Color(0xFF4CAF50), // green
              ],
            ),
            boxShadow: [
              BoxShadow(
                color: isHover ? Colors.black.withValues(alpha: 0.25) : Colors.black.withValues(alpha: 0.15),
                blurRadius: isHover ? 15 : 8,
                offset: Offset(0, 5),
              ),
            ],
          ),
          child: Text(
            widget.text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}

class SectionText extends StatelessWidget {
  final List<String> points;
  final Color color;

  const SectionText({
    super.key,
    required this.points,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 450.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...points.map(
            (p) {
              final parts = p.split(":");

              final title = parts[0];
              final desc = parts.length > 1 ? parts.sublist(1).join(":") : "";

              return Padding(
                padding: EdgeInsets.only(bottom: 10.h),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /// 🔵 Colored bullet
                    Container(
                      margin: EdgeInsets.only(top: 6.h),
                      width: 6.w,
                      height: 6.h,
                      decoration: BoxDecoration(
                        color: color,
                        shape: BoxShape.circle,
                      ),
                    ),

                    SizedBox(width: 10.w),

                    /// ✨ Styled text
                    Expanded(
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "$title: ",
                              style: TextStyle(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF1F2A37), // dark
                              ),
                            ),
                            TextSpan(
                              text: desc.trim(),
                              style: TextStyle(
                                fontSize: 18.sp,
                                color: Color(0xFF6B7280), // grey
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class VentureItem extends StatelessWidget {
  final String image;
  final String title;
  final String description;

  const VentureItem({
    super.key,
    required this.image,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// ICON
        Padding(
          padding: EdgeInsets.only(top: 6.h),
          child: Image.asset(
            image,
            width: 100.w,
            height: 100.h,
            fit: BoxFit.contain,
          ),
        ),

        SizedBox(width: 18.w),

        /// TEXT
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF1F2A37),
                ),
              ),

              SizedBox(height: 6.h),

              Text(
                description,
                style: TextStyle(
                  fontSize: 14.sp,
                  color: Color(0xFF6B7280),
                  height: 1.5.h,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
