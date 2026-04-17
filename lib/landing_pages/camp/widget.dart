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
      width: 450,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...points.map(
            (p) {
              final parts = p.split(":");

              final title = parts[0];
              final desc = parts.length > 1 ? parts.sublist(1).join(":") : "";

              return Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /// 🔵 Colored bullet
                    Container(
                      margin: const EdgeInsets.only(top: 6),
                      width: 6,
                      height: 6,
                      decoration: BoxDecoration(
                        color: color,
                        shape: BoxShape.circle,
                      ),
                    ),

                    const SizedBox(width: 10),

                    /// ✨ Styled text
                    Expanded(
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "$title: ",
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF1F2A37), // dark
                              ),
                            ),
                            TextSpan(
                              text: desc.trim(),
                              style: const TextStyle(
                                fontSize: 18,
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
