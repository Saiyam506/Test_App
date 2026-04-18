import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactFormCard extends StatelessWidget {
  const ContactFormCard({super.key});

  @override
  Widget build(BuildContext context) {
    final bool compact = MediaQuery.sizeOf(context).width < 900;
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(20.r),
        border: Border.all(color: Color(0xFFE2E8F0)),
        boxShadow: [
          BoxShadow(
            color: Color(0x140F172A),
            blurRadius: 28,
            offset: Offset(0, 14),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.fromLTRB(22.w, 20.h, 22.w, 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'How Can We Assist You?',
              style: TextStyle(
                fontSize: compact ? 30.sp : 30.sp,
                height: 1.08.h,
                fontWeight: FontWeight.w700,
                color: Color(0xFF1E293B),
              ),
            ),
            SizedBox(height: 8.h),
            Text(
              'Fill out the form below and our team will get back to you shortly.',
              style: TextStyle(
                fontSize: compact ? 14.sp : 16.sp,
                color: Color(0xFF64748B),
                height: 1.35.h,
              ),
            ),
            SizedBox(height: 18.h),
            _ContactInputField(hintText: 'Your Name'),
            SizedBox(height: 12.h),
            _ContactInputField(hintText: 'Your Email'),
            SizedBox(height: 12.h),
            _ContactInputField(hintText: 'Message', maxLines: 4),
            SizedBox(height: 18.h),
            _SubmitButton(),
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
        color: Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(20.r),
        border: Border.all(color: Color(0xFFE2E8F0)),
        boxShadow: [
          BoxShadow(
            color: Color(0x120F172A),
            blurRadius: 24,
            offset: Offset(0, 12),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.fromLTRB(22.w, 20.h, 22.w, 18.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _ContactDetailItem(
              icon: Icons.phone_rounded,
              title: 'Call Us',
              titleColor: Color(0xFF2563EB),
              value: '+91 63666 77010',
              compact: compact,
            ),
            SizedBox(height: 18.h),
            _ContactDetailItem(
              icon: Icons.location_on_rounded,
              title: 'Address',
              titleColor: Color(0xFFDC2626),
              value: 'Baner-Mhalunge Main Road, Baner,\nPune - 411045, Maharashtra.',
              compact: compact,
            ),
            SizedBox(height: 18.h),
            _ContactDetailItem(
              icon: Icons.email_rounded,
              title: 'Email',
              titleColor: Color(0xFF2563EB),
              value: 'support@medidocs.in',
              compact: compact,
            ),
            SizedBox(height: 18.h),
            _ContactDetailItem(
              icon: Icons.access_time_filled_rounded,
              title: 'Working Hours',
              titleColor: Color(0xFFDC2626),
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

        final cards = [
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
            Text(
              'Why Choose MediDocs?',
              style: TextStyle(
                fontSize: 28.sp,
                fontWeight: FontWeight.w700,
                color: Color(0xFF1E293B),
              ),
            ),
            SizedBox(height: 14.h),
            if (compact)
              Column(
                children: [
                  cards[0],
                  SizedBox(height: 12.h),
                  cards[1],
                  SizedBox(height: 12.h),
                  cards[2],
                ],
              )
            else
              Row(
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
                  SizedBox(width: 14.w),
                  Expanded(
                    child: _WhyChooseCard(
                      icon: Icons.local_hospital_outlined,
                      iconBackground: Color(0xFFEAF2FF),
                      iconColor: Color(0xFF2563EB),
                      title: 'Certified Medical\nProfessionals',
                      subtitle: 'Experienced & qualified doctors and paramedics.',
                    ),
                  ),
                  SizedBox(width: 14.w),
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
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(color: Color(0xFFE2E8F0)),
        boxShadow: [
          BoxShadow(
            color: Color(0x0D0F172A),
            blurRadius: 14,
            offset: Offset(0, 6),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.all(16.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 40.w,
              height: 40.h,
              decoration: BoxDecoration(
                color: iconBackground,
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: Icon(icon, color: iconColor, size: 24),
            ),
            SizedBox(height: 12.h),
            Text(
              title,
              style: TextStyle(
                fontSize: 20.sp,
                height: 1.15.h,
                fontWeight: FontWeight.w700,
                color: Color(0xFF1E293B),
              ),
            ),
            SizedBox(height: 10.h),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.check_box, color: Color(0xFF2563EB), size: 16),
                SizedBox(width: 8.w),
                Expanded(
                  child: Text(
                    subtitle,
                    style: TextStyle(
                      fontSize: 14.sp,
                      height: 1.45.h,
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
            color: Color(0xFFF8FAFC),
            borderRadius: BorderRadius.circular(18.r),
          ),
          child: Padding(
            padding: EdgeInsets.all(20.r),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Our Location',
                  style: TextStyle(
                    fontSize: 26.sp,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF1E293B),
                  ),
                ),
                SizedBox(height: 18.h),
                _LocationLine(
                  icon: Icons.location_on_outlined,
                  iconColor: Color(0xFF334155),
                  title: 'Baner-Mhalunge Main Road, Baner',
                  subtitle: 'Pune - 411045, Maharashtra.',
                  titleWeight: FontWeight.w400,
                ),
                SizedBox(height: 14.h),
                _LocationLine(
                  icon: Icons.call_outlined,
                  iconColor: Color(0xFF334155),
                  title: '+91 63666 77010',
                ),
                SizedBox(height: 12.h),
                _LocationLine(
                  icon: Icons.email_outlined,
                  iconColor: Color(0xFF334155),
                  title: 'support@medidocs.in',
                ),
                SizedBox(height: 12.h),
                _LocationLine(
                  icon: Icons.location_on_outlined,
                  iconColor: Color(0xFF334155),
                  title: 'Baner, Pune - 411045',
                ),
              ],
            ),
          ),
        );

        final Widget mapImage = ClipRRect(
          borderRadius: BorderRadius.circular(16.r),
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
            borderRadius: BorderRadius.circular(18.r),
            boxShadow: [
              BoxShadow(
                color: Color(0x0F0F172A),
                blurRadius: 18,
                offset: Offset(0, 8),
              ),
            ],
          ),
          child: Padding(
            padding: EdgeInsets.all(18.r),
            child: compact
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      locationInfo,
                      SizedBox(height: 14.h),
                      tappableMap,
                    ],
                  )
                : Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(flex: 5, child: locationInfo),
                      SizedBox(width: 18.w),
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

        final items = [
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
            Text(
              'Frequently Asked Questions',
              style: TextStyle(
                fontSize: 28.sp,
                fontWeight: FontWeight.w700,
                color: Color(0xFF1E293B),
              ),
            ),
            SizedBox(height: 14.h),
            if (compact)
              Column(
                children: [
                  items[0],
                  SizedBox(height: 12.h),
                  items[1],
                ],
              )
            else
              Row(
                children: [
                  Expanded(
                    child: _FaqCard(
                      question: 'How quickly will I get a response?',
                      answer: 'Our team reviews every inquiry as soon as possible and typically responds within 24 hours.',
                    ),
                  ),
                  SizedBox(width: 14.w),
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
        borderRadius: BorderRadius.circular(14.r),
        border: Border.all(color: Color(0xFFE2E8F0)),
        boxShadow: [
          BoxShadow(
            color: Color(0x0C0F172A),
            blurRadius: 12,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.fromLTRB(14.w, 14.h, 14.w, 12.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 18.w,
                  height: 18.h,
                  decoration: BoxDecoration(
                    color: Color(0xFF2563EB),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.help_outline_rounded, color: Colors.white, size: 12),
                ),
                SizedBox(width: 10.w),
                Expanded(
                  child: Text(
                    question,
                    style: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF1E293B),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 12.h),
            Text(
              answer,
              style: TextStyle(
                fontSize: 13.sp,
                height: 1.4.h,
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
        fillColor: Color(0xFFF8FAFC),
        hintStyle: TextStyle(
          color: Color(0xFF6B7280),
          fontSize: compact ? 14.sp : 16.sp,
        ),
        contentPadding: EdgeInsets.symmetric(
          horizontal: 16.w,
          vertical: maxLines > 1 ? 16 : 15,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide: BorderSide(color: Color(0xFFE5E7EB)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide: BorderSide(color: Color(0xFFD1D5DB)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide: BorderSide(color: Color(0xFF2563EB), width: 1.5.w),
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
          borderRadius: BorderRadius.circular(14.r),
          gradient: LinearGradient(
            colors: [Color(0xFF3B82F6), Color(0xFF2563EB)],
          ),
          boxShadow: [
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
              borderRadius: BorderRadius.circular(14.r),
            ),
            padding: EdgeInsets.symmetric(vertical: 16.h),
          ),
          child: Text(
            'Send Message',
            style: TextStyle(
              fontSize: 16.sp,
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
              width: compact ? 34.w : 38.w,
              height: compact ? 34.h : 38.h,
              decoration: BoxDecoration(
                color: titleColor.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: Icon(icon, size: compact ? 18 : 20, color: titleColor),
            ),
            SizedBox(width: 10.w),
            Expanded(
              child: Text(
                title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: compact ? 22.sp : 24.sp,
                  fontWeight: FontWeight.w400,
                  color: titleColor,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 10.h),
        Padding(
          padding: EdgeInsets.only(left: 48.w),
          child: Text(
            value,
            style: TextStyle(
              fontSize: compact ? 16.sp : 18.sp,
              fontWeight: FontWeight.w400,
              height: 1.4.h,
              color: Color(0xFF111827),
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
        SizedBox(width: 10.w),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: titleWeight,
                  color: Color(0xFF1E293B),
                  height: 1.25.h,
                ),
              ),
              if (subtitle != null) ...[
                SizedBox(height: 2.h),
                Text(
                  subtitle!,
                  style: TextStyle(
                    fontSize: 15.sp,
                    color: Color(0xFF475569),
                    height: 1.25.h,
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
