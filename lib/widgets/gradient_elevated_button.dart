import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class GradientElevatedButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final Widget? icon;
  final TextStyle? textStyle;

  const GradientElevatedButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.textStyle,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF2A8DB8), // blue
            Color(0xFF4CAF50), // green
          ],
        ),
        borderRadius: BorderRadius.circular(30.r),
      ),
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          foregroundColor: context.theme.colorScheme.onPrimary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.r),
          ),
          padding: EdgeInsets.symmetric(
            vertical: 18.h,
            horizontal: 28.w,
          ),
          textStyle: textStyle ?? context.textTheme.titleMedium,
        ),
        onPressed: onPressed,
        icon: icon,
        label: Text(text),
      ),
    );
  }
}
