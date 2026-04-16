import 'package:flutter/material.dart';

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
          duration: const Duration(milliseconds: 200),
          transform: isHover ? Matrix4.diagonal3Values(1.05, 1.05, 1) : Matrix4.identity(),
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 14),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            gradient: const LinearGradient(
              colors: [
                Color(0xFF2A8DB8), // blue
                Color(0xFF4CAF50), // green
              ],
            ),
            boxShadow: [
              BoxShadow(
                color: isHover ? Colors.black.withValues(alpha: 0.25) : Colors.black.withValues(alpha: 0.15),
                blurRadius: isHover ? 15 : 8,
                offset: const Offset(0, 5),
              ),
            ],
          ),
          child: Text(
            widget.text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
