import 'dart:ui';

import 'package:flutter/material.dart';

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
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeOut,
        builder: (context, scale, child) {
          return Transform.scale(
            scale: scale,
            child: Container(
              height: 220,
              width: 220,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(
                    color: Color.lerp(
                      Colors.black12,
                      Colors.black26,
                      (scale - 1) / 0.05, // sync shadow with scale
                    )!,
                    blurRadius: lerpDouble(10, 20, (scale - 1) / 0.05)!,
                    offset: const Offset(0, 6),
                  ),
                ],
              ),
              child: child,
            ),
          );
        },
        child: InkWell(
          borderRadius: BorderRadius.circular(25),
          onTap: widget.onTap,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.title,
                maxLines: 2,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w900,
                ),
              ),
              const SizedBox(height: 6),
              Text(
                widget.subtitle,
                style: const TextStyle(
                  fontSize: 12,
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
              duration: const Duration(milliseconds: 200),
              style: TextStyle(
                color: isHover ? Colors.blue : Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
              child: Text(widget.text),
            ),
            const SizedBox(height: 4),
            AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              height: 2,
              width: isHover ? 40 : 0,
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
      width: 260,
      height: height,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.black12),
      ),
      child: Column(
        children: [
          Row(
            children: [
              const CircleAvatar(
                radius: 22,
                backgroundColor: Colors.grey,
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: List.generate(
                      5,
                      (index) => const Icon(
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
          const SizedBox(height: 12),
          Expanded(
            child: Center(
              child: Text(
                text,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 13.5,
                  height: 1.5,
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
        width: 260,
        height: 200,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.black12),
          boxShadow: const [
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
            : const SizedBox(),
      ),
    );
  }
}
