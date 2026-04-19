import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MenuIcon extends StatelessWidget {
  const MenuIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 36,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _line(),
          const SizedBox(height: 6),
          _line(),
          const SizedBox(height: 6),
          _line(),
        ],
      ),
    );
  }

  Widget _line() {
    return Container(
      width: 34,
      height: 5,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }
}

class SignUpLoginButton extends StatelessWidget {
  const SignUpLoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFF239ED7), Color(0xFF66BB51)],
        ),
        borderRadius: BorderRadius.circular(38),
      ),
      child: Padding(
        padding: const EdgeInsets.all(2),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(36),
          ),
          child: const Text(
            'Sign Up/ Login',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}

class MobileServiceData {
  final String title;
  final String subtitle;
  final String imagePath;

  const MobileServiceData({
    required this.title,
    required this.subtitle,
    required this.imagePath,
  });
}

class MobileServiceCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imagePath;
  final VoidCallback onTap;

  const MobileServiceCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.imagePath,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(22),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.08),
            blurRadius: 18,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(22),
        child: InkWell(
          borderRadius: BorderRadius.circular(22),
          onTap: onTap,
          child: SizedBox(
            height: 176,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(12, 10, 10, 8),
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 22,
                    child: Text(
                      title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w800,
                        color: Colors.black,
                        height: 1.0,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 44,
                    left: 0,
                    right: 22,
                    child: Text(
                      subtitle,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF60708A),
                        height: 1.1,
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 78,
                    right: 0,
                    child: Icon(
                      Icons.chevron_right,
                      size: 28,
                      color: Colors.black,
                    ),
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: Image.asset(
                      imagePath,
                      height: 84,
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class TestimonialCard extends StatelessWidget {
  final String name;
  final String text;

  const TestimonialCard({
    super.key,
    required this.name,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240,
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: const Color(0xFFF4F6F8),
        borderRadius: BorderRadius.circular(22),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const CircleAvatar(
                radius: 20,
                backgroundColor: Color(0xFFE0E0E0),
                child: Icon(Icons.person, color: Colors.black54),
              ),
              const SizedBox(width: 8),
              Flexible(
                child: Text(
                  name,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 6),
          Row(
            children: List.generate(
              5,
              (index) => const Icon(
                Icons.star,
                size: 14,
                color: Color(0xFFFFC107),
              ),
            ),
          ),
          const SizedBox(height: 6),
          Expanded(
            child: Text(
              text,
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 12.5,
                color: Color(0xFF60708A),
                height: 1.3,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HospitalCard extends StatelessWidget {
  final String imagePath;

  const HospitalCard({
    super.key,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240,
      margin: const EdgeInsets.symmetric(vertical: 6),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white, // cleaner than grey
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.06),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Center(
        child: Image.asset(
          imagePath,
          height: 90, // 👈 controlled size
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}

class MobileFooter extends StatelessWidget {
  const MobileFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(20, 24, 20, 20),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF0A1F44), Colors.black],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Connect With Us:',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 14),
          Row(
            children: const [
              SocialIconButton(
                imagePath: 'assets/company/facebook.png',
                url: 'https://www.facebook.com/medidocsindia',
              ),
              SizedBox(width: 14),
              SocialIconButton(
                imagePath: 'assets/company/instagram.png',
                url: 'https://www.instagram.com/medidocsindia/',
              ),
              SizedBox(width: 14),
              SocialIconButton(
                imagePath: 'assets/company/linkedin.png',
                url: 'https://in.linkedin.com/company/medi-docs-india',
              ),
            ],
          ),
          const SizedBox(height: 28),
          const Text(
            'Subscribe to our Newsletter',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 12),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(14),
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Enter your Email ID..',
                hintStyle: const TextStyle(
                  color: Color(0xFF6E7582),
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
                border: InputBorder.none,
                contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.send_outlined,
                    color: Color(0xFF2D3A55),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),
          const Text(
            'Contact Us',
            style: TextStyle(
              color: Colors.white,
              fontSize: 26,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 12),
          const Row(
            children: [
              Icon(Icons.call, color: Colors.white, size: 20),
              SizedBox(width: 10),
              Text(
                '+91 98765 43210',
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),
            ],
          ),
          const SizedBox(height: 12),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.location_on_outlined, color: Colors.white, size: 22),
              SizedBox(width: 10),
              Expanded(
                child: Text(
                  '123, Health Street, Andheri East,\nMumbai, Maharashtra 400069, India',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    height: 1.3,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          GestureDetector(
            onTap: () async {
              final uri = Uri.parse(
                'https://www.google.com/maps?q=123,+Health+Street,+Andheri+East,+Mumbai,+Maharashtra+400069,+India',
              );
              if (await canLaunchUrl(uri)) {
                await launchUrl(uri);
              }
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: Image.asset(
                  'assets/company/map.png',
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(height: 26),
          Divider(color: Colors.white.withValues(alpha: 0.18), thickness: 1),
          const SizedBox(height: 14),
          Wrap(
            alignment: WrapAlignment.center,
            spacing: 12,
            runSpacing: 8,
            children: const [
              MobileFooterLink(label: 'Terms & Conditions'),
              Text('|', style: TextStyle(color: Colors.white54)),
              MobileFooterLink(label: 'Privacy Policy'),
              Text('|', style: TextStyle(color: Colors.white54)),
              MobileFooterLink(label: 'Cancellation & Refund'),
              Text('|', style: TextStyle(color: Colors.white54)),
              MobileFooterLink(label: 'Shipping & Delivery'),
            ],
          ),
          const SizedBox(height: 12),
          const Center(
            child: Text(
              '© 2026 Medidocs. All rights reserved',
              style: TextStyle(color: Colors.white60, fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}

class SocialIconButton extends StatelessWidget {
  const SocialIconButton({
    super.key,
    required this.imagePath,
    required this.url,
  });

  final String imagePath;
  final String url;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        final uri = Uri.parse(url);
        if (await canLaunchUrl(uri)) {
          await launchUrl(uri);
        }
      },
      borderRadius: BorderRadius.circular(8),
      child: Ink(
        width: 38,
        height: 38,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Image.asset(imagePath, fit: BoxFit.contain),
        ),
      ),
    );
  }
}

class MobileFooterLink extends StatelessWidget {
  const MobileFooterLink({
    super.key,
    required this.label,
  });

  final String label;

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: const TextStyle(
        color: Colors.white70,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
