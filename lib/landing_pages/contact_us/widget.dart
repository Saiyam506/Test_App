import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactFormCard extends StatelessWidget {
  const ContactFormCard({super.key});

  @override
  Widget build(BuildContext context) {
    final bool compact = MediaQuery.sizeOf(context).width < 900;
    return DecoratedBox(
      decoration: BoxDecoration(
        color: const Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: const Color(0xFFE2E8F0)),
        boxShadow: const [
          BoxShadow(
            color: Color(0x140F172A),
            blurRadius: 28,
            offset: Offset(0, 14),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(22, 20, 22, 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'How Can We Assist You?',
              style: TextStyle(
                fontSize: compact ? 32 : 32,
                height: 1.08,
                fontWeight: FontWeight.w700,
                color: const Color(0xFF1E293B),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Fill out the form below and our team will get back to you shortly.',
              style: TextStyle(
                fontSize: compact ? 16 : 18,
                color: const Color(0xFF64748B),
                height: 1.35,
              ),
            ),
            const SizedBox(height: 18),
            const _ContactInputField(hintText: 'Your Name'),
            const SizedBox(height: 12),
            const _ContactInputField(hintText: 'Your Email'),
            const SizedBox(height: 12),
            const _ContactInputField(hintText: 'Message', maxLines: 4),
            const SizedBox(height: 18),
            const _SubmitButton(),
          ],
        ),
      ),
    );
  }
}

class ContactDetails extends StatelessWidget {
  const ContactDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final bool compact = MediaQuery.sizeOf(context).width < 900;
    return DecoratedBox(
      decoration: BoxDecoration(
        color: const Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: const Color(0xFFE2E8F0)),
        boxShadow: const [
          BoxShadow(
            color: Color(0x120F172A),
            blurRadius: 24,
            offset: Offset(0, 12),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(22, 20, 22, 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _ContactDetailItem(
              icon: Icons.phone_rounded,
              title: 'Call Us',
              titleColor: const Color(0xFF2563EB),
              value: '+91 98765 43210',
              compact: compact,
            ),
            const SizedBox(height: 18),
            _ContactDetailItem(
              icon: Icons.location_on_rounded,
              title: 'Address',
              titleColor: const Color(0xFFDC2626),
              value: 'Baner-Mhalunge Main Road, Baner,\nPune - 411045, Maharashtra.',
              compact: compact,
            ),
            const SizedBox(height: 18),
            _ContactDetailItem(
              icon: Icons.email_rounded,
              title: 'Email',
              titleColor: const Color(0xFF2563EB),
              value: 'info@medidocs.in',
              compact: compact,
            ),
            const SizedBox(height: 18),
            _ContactDetailItem(
              icon: Icons.access_time_filled_rounded,
              title: 'Working Hours',
              titleColor: const Color(0xFFDC2626),
              value: '24/7',
              compact: compact,
            ),
          ],
        ),
      ),
    );
  }
}

class WhyChooseSection extends StatelessWidget {
  const WhyChooseSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final bool compact = constraints.maxWidth < 900;

        final cards = const [
          _WhyChooseCard(
            icon: Icons.shield_outlined,
            iconBackground: Color(0xFFE8F1FF),
            iconColor: Color(0xFF2563EB),
            title: '24/7 Emergency\nSupport',
            subtitle: 'Always ready to assist you, anytime, day or night.',
          ),
          _WhyChooseCard(
            icon: Icons.local_hospital_outlined,
            iconBackground: Color(0xFFEAF2FF),
            iconColor: Color(0xFF2563EB),
            title: 'Certified Medical\nProfessionals',
            subtitle: 'Experienced & qualified doctors and paramedics.',
          ),
          _WhyChooseCard(
            icon: Icons.access_time_rounded,
            iconBackground: Color(0xFFE8F7F0),
            iconColor: Color(0xFF13A36B),
            title: 'Rapid Response\nTime',
            subtitle: 'Guaranteeing speedy help when it matters most.',
          ),
        ];

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Why Choose MediDocs?',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w700,
                color: Color(0xFF1E293B),
              ),
            ),
            const SizedBox(height: 14),
            if (compact)
              Column(
                children: [
                  cards[0],
                  const SizedBox(height: 12),
                  cards[1],
                  const SizedBox(height: 12),
                  cards[2],
                ],
              )
            else
              const Row(
                children: [
                  Expanded(
                    child: _WhyChooseCard(
                      icon: Icons.shield_outlined,
                      iconBackground: Color(0xFFE8F1FF),
                      iconColor: Color(0xFF2563EB),
                      title: '24/7 Emergency\nSupport',
                      subtitle: 'Always ready to assist you, anytime, day or night.',
                    ),
                  ),
                  SizedBox(width: 14),
                  Expanded(
                    child: _WhyChooseCard(
                      icon: Icons.local_hospital_outlined,
                      iconBackground: Color(0xFFEAF2FF),
                      iconColor: Color(0xFF2563EB),
                      title: 'Certified Medical\nProfessionals',
                      subtitle: 'Experienced & qualified doctors and paramedics.',
                    ),
                  ),
                  SizedBox(width: 14),
                  Expanded(
                    child: _WhyChooseCard(
                      icon: Icons.access_time_rounded,
                      iconBackground: Color(0xFFE8F7F0),
                      iconColor: Color(0xFF13A36B),
                      title: 'Rapid Response\nTime',
                      subtitle: 'Guaranteeing speedy help when it matters most.',
                    ),
                  ),
                ],
              ),
          ],
        );
      },
    );
  }
}

class _WhyChooseCard extends StatelessWidget {
  const _WhyChooseCard({
    required this.icon,
    required this.iconBackground,
    required this.iconColor,
    required this.title,
    required this.subtitle,
  });

  final IconData icon;
  final Color iconBackground;
  final Color iconColor;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: const Color(0xFFE2E8F0)),
        boxShadow: const [
          BoxShadow(
            color: Color(0x0D0F172A),
            blurRadius: 14,
            offset: Offset(0, 6),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: iconBackground,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(icon, color: iconColor, size: 24),
            ),
            const SizedBox(height: 12),
            Text(
              title,
              style: const TextStyle(
                fontSize: 20,
                height: 1.15,
                fontWeight: FontWeight.w700,
                color: Color(0xFF1E293B),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(Icons.check_box, color: Color(0xFF2563EB), size: 16),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    subtitle,
                    style: const TextStyle(
                      fontSize: 14,
                      height: 1.45,
                      color: Color(0xFF64748B),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class OurLocationSection extends StatelessWidget {
  const OurLocationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final bool compact = constraints.maxWidth < 900;

        final Widget locationInfo = DecoratedBox(
          decoration: BoxDecoration(
            color: const Color(0xFFF8FAFC),
            borderRadius: BorderRadius.circular(18),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Our Location',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF1E293B),
                  ),
                ),
                const SizedBox(height: 18),
                _LocationLine(
                  icon: Icons.location_on_outlined,
                  iconColor: Color(0xFF334155),
                  title: 'Baner-Mhalunge Main Road, Baner',
                  subtitle: 'Pune - 411045, Maharashtra.',
                  titleWeight: FontWeight.w400,
                ),
                const SizedBox(height: 14),
                const _LocationLine(
                  icon: Icons.call_outlined,
                  iconColor: Color(0xFF334155),
                  title: '+91 98765 43210',
                ),
                const SizedBox(height: 12),
                const _LocationLine(
                  icon: Icons.email_outlined,
                  iconColor: Color(0xFF334155),
                  title: 'info@medidocs.in',
                ),
                const SizedBox(height: 12),
                const _LocationLine(
                  icon: Icons.location_on_outlined,
                  iconColor: Color(0xFF334155),
                  title: 'Baner, Pune - 411045',
                ),
              ],
            ),
          ),
        );

        final Widget mapImage = ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: AspectRatio(
            aspectRatio: compact ? 16 / 9 : 2.75,
            child: Image.asset(
              'assets/company/map.png',
              fit: BoxFit.cover,
            ),
          ),
        );

        final Widget tappableMap = GestureDetector(
          onTap: () async {
            final Uri url = Uri.parse('https://maps.app.goo.gl/oKELutSjGZgzip7g9');
            if (await canLaunchUrl(url)) {
              await launchUrl(url);
            }
          },
          child: mapImage,
        );

        return DecoratedBox(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(18),
            boxShadow: const [
              BoxShadow(
                color: Color(0x0F0F172A),
                blurRadius: 18,
                offset: Offset(0, 8),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(18),
            child: compact
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      locationInfo,
                      const SizedBox(height: 14),
                      tappableMap,
                    ],
                  )
                : Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(flex: 5, child: locationInfo),
                      const SizedBox(width: 18),
                      Expanded(flex: 7, child: tappableMap),
                    ],
                  ),
          ),
        );
      },
    );
  }
}

class FaqSection extends StatelessWidget {
  const FaqSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final bool compact = constraints.maxWidth < 900;

        const items = [
          _FaqCard(
            question: 'How quickly will I get a response?',
            answer: 'Our team reviews every inquiry as soon as possible and typically responds within 24 hours.',
          ),
          _FaqCard(
            question: 'Do you provide emergency home visits?',
            answer: 'Yes, emergency home visits are available in select areas. Contact us immediately for urgent support.',
          ),
        ];

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Frequently Asked Questions',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w700,
                color: Color(0xFF1E293B),
              ),
            ),
            const SizedBox(height: 14),
            if (compact)
              Column(
                children: [
                  items[0],
                  const SizedBox(height: 12),
                  items[1],
                ],
              )
            else
              const Row(
                children: [
                  Expanded(
                    child: _FaqCard(
                      question: 'How quickly will I get a response?',
                      answer: 'Our team reviews every inquiry as soon as possible and typically responds within 24 hours.',
                    ),
                  ),
                  SizedBox(width: 14),
                  Expanded(
                    child: _FaqCard(
                      question: 'Do you provide emergency home visits?',
                      answer: 'Yes, emergency home visits are available in select areas. Contact us immediately for urgent support.',
                    ),
                  ),
                ],
              ),
          ],
        );
      },
    );
  }
}

class _FaqCard extends StatelessWidget {
  const _FaqCard({required this.question, required this.answer});

  final String question;
  final String answer;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: const Color(0xFFE2E8F0)),
        boxShadow: const [
          BoxShadow(
            color: Color(0x0C0F172A),
            blurRadius: 12,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(14, 14, 14, 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 18,
                  height: 18,
                  decoration: const BoxDecoration(
                    color: Color(0xFF2563EB),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(Icons.add, color: Colors.white, size: 12),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    question,
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF1E293B),
                    ),
                  ),
                ),
                const Icon(Icons.chevron_right_rounded, color: Color(0xFF2563EB), size: 20),
              ],
            ),
            const SizedBox(height: 12),
            Text(
              answer,
              style: const TextStyle(
                fontSize: 13,
                height: 1.4,
                color: Color(0xFF64748B),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ContactInputField extends StatelessWidget {
  const _ContactInputField({required this.hintText, this.maxLines = 1});

  final String hintText;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    final bool compact = MediaQuery.sizeOf(context).width < 900;

    return TextField(
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hintText,
        isDense: true,
        filled: true,
        fillColor: const Color(0xFFF8FAFC),
        hintStyle: TextStyle(
          color: const Color(0xFF6B7280),
          fontSize: compact ? 16 : 18,
        ),
        contentPadding: EdgeInsets.symmetric(
          horizontal: 16,
          vertical: maxLines > 1 ? 16 : 15,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: Color(0xFFE5E7EB)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: Color(0xFFD1D5DB)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: Color(0xFF2563EB), width: 1.5),
        ),
      ),
    );
  }
}

class _SubmitButton extends StatelessWidget {
  const _SubmitButton();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          gradient: const LinearGradient(
            colors: [Color(0xFF3B82F6), Color(0xFF2563EB)],
          ),
          boxShadow: const [
            BoxShadow(
              color: Color(0x263B82F6),
              blurRadius: 14,
              offset: Offset(0, 6),
            ),
          ],
        ),
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
            ),
            padding: const EdgeInsets.symmetric(vertical: 16),
          ),
          child: const Text(
            'Send Message',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

class _ContactDetailItem extends StatelessWidget {
  const _ContactDetailItem({
    required this.icon,
    required this.title,
    required this.titleColor,
    required this.value,
    required this.compact,
  });

  final IconData icon;
  final String title;
  final Color titleColor;
  final String value;
  final bool compact;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              width: compact ? 34 : 38,
              height: compact ? 34 : 38,
              decoration: BoxDecoration(
                color: titleColor.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(icon, size: compact ? 18 : 20, color: titleColor),
            ),
            const SizedBox(width: 10),
            Text(
              title,
              style: TextStyle(
                fontSize: compact ? 28 : 30,
                fontWeight: FontWeight.w400,
                color: titleColor,
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.only(left: 48),
          child: Text(
            value,
            style: TextStyle(
              fontSize: compact ? 20 : 22,
              fontWeight: FontWeight.w400,
              height: 1.4,
              color: const Color(0xFF111827),
            ),
          ),
        ),
      ],
    );
  }
}

class _LocationLine extends StatelessWidget {
  const _LocationLine({
    required this.icon,
    required this.iconColor,
    required this.title,
    this.subtitle,
    this.titleWeight = FontWeight.w400,
  });

  final IconData icon;
  final Color iconColor;
  final String title;
  final String? subtitle;
  final FontWeight titleWeight;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, size: 18, color: iconColor),
        const SizedBox(width: 10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: titleWeight,
                  color: const Color(0xFF1E293B),
                  height: 1.25,
                ),
              ),
              if (subtitle != null) ...[
                const SizedBox(height: 2),
                Text(
                  subtitle!,
                  style: const TextStyle(
                    fontSize: 15,
                    color: Color(0xFF475569),
                    height: 1.25,
                  ),
                ),
              ],
            ],
          ),
        ),
      ],
    );
  }
}
