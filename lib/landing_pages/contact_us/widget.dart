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
        color: const Color(0xFFFAFBFC),
        borderRadius: BorderRadius.circular(18.r),
        border: Border.all(color: const Color(0xFFF0F1F3)),
        boxShadow: [
          BoxShadow(
            color: const Color(0x0A0F172A),
            blurRadius: 12.r,
            offset: Offset(0, 4.h),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.fromLTRB(28.w, 28.h, 28.w, 28.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'How Can We Assist You?',
              style: TextStyle(
                fontSize: compact ? 28.sp : 28.sp,
                height: 1.2.h,
                fontWeight: FontWeight.w700,
                color: const Color(0xFF0F172A),
              ),
            ),
            SizedBox(height: 12.h),
            Text(
              'Fill out the form below and our team will get back to you shortly.',
              style: TextStyle(
                fontSize: compact ? 14.sp : 15.sp,
                color: const Color(0xFF64748B),
                height: 1.4.h,
              ),
            ),
            SizedBox(height: 18.h),
            _ContactInputField(hintText: 'Your Name'),
            SizedBox(height: 18.h),
            _ContactInputField(hintText: 'Your Email'),
            SizedBox(height: 18.h),
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
    return DecoratedBox(
      decoration: BoxDecoration(
        color: const Color(0xFFFAFBFC),
        borderRadius: BorderRadius.circular(18.r),
        border: Border.all(color: const Color(0xFFF0F1F3)),
        boxShadow: [
          BoxShadow(
            color: const Color(0x0A0F172A),
            blurRadius: 12.r,
            offset: Offset(0, 4.h),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.fromLTRB(28.w, 24.h, 28.w, 24.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _ContactDetailItem(
              icon: Icons.phone_rounded,
              title: 'Call Us',
              value: '+91 63666 77010',
            ),
            SizedBox(height: 22.h),
            _ContactDetailItem(
              icon: Icons.location_on_rounded,
              title: 'Address',
              value: 'Baner-Mhalunge Main Road, Baner,\nPune - 411045, Maharashtra.',
            ),
            SizedBox(height: 22.h),
            _ContactDetailItem(
              icon: Icons.email_rounded,
              title: 'Email',
              value: 'support@medidocs.in',
            ),
            SizedBox(height: 22.h),
            _ContactDetailItem(
              icon: Icons.access_time_filled_rounded,
              title: 'Working Hours',
              value: '24/7',
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
            blurRadius: 14.r,
            offset: Offset(0, 6.h),
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
                  title: '1st floor, 27, 27th Cross Rd, Jayanagar 6th Block,',
                  subtitle: ' Jayanagar, Bengaluru, Karnataka 560070',
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
                  title: 'Bengaluru, Karnataka 560070',
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
              'assets/company/map.webp',
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
                blurRadius: 18.r,
                offset: Offset(0, 8.h),
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
            blurRadius: 12.r,
            offset: Offset(0, 5.h),
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
                  child: Icon(Icons.help_outline_rounded, color: Colors.white, size: 12.sp),
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

class _ContactInputField extends StatefulWidget {
  const _ContactInputField({required this.hintText, this.maxLines = 1});

  final String hintText;
  final int maxLines;

  @override
  State<_ContactInputField> createState() => _ContactInputFieldState();
}

class _ContactInputFieldState extends State<_ContactInputField> {
  late final FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _focusNode.addListener(() {
      if (mounted) {
        setState(() {});
      }
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final bool compact = MediaQuery.sizeOf(context).width < 900;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      curve: Curves.ease,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: _focusNode.hasFocus
            ? [
                BoxShadow(
                  color: const Color(0x1F2563EB),
                  blurRadius: 8.r,
                  spreadRadius: 0.r,
                  offset: Offset(0, 0.h),
                ),
              ]
            : const [],
      ),
      child: TextField(
        focusNode: _focusNode,
        maxLines: widget.maxLines,
        decoration: InputDecoration(
          hintText: widget.hintText,
          isDense: true,
          filled: true,
          fillColor: const Color(0xFFFAFBFC),
          hintStyle: TextStyle(
            color: const Color(0xFF8B92A9),
            fontSize: compact ? 14.sp : 15.sp,
          ),
          contentPadding: EdgeInsets.symmetric(
            horizontal: 14.w,
            vertical: 14.h,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.r),
            borderSide: const BorderSide(color: Color(0xFFE8EAEF)),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.r),
            borderSide: BorderSide(color: const Color(0xFFE8EAEF), width: 1.w),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.r),
            borderSide: BorderSide(color: const Color(0xFF2563EB), width: 1.5.w),
          ),
        ),
      ),
    );
  }
}

class _SubmitButton extends StatefulWidget {
  const _SubmitButton();

  @override
  State<_SubmitButton> createState() => _SubmitButtonState();
}

class _SubmitButtonState extends State<_SubmitButton> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      cursor: SystemMouseCursors.click,
      child: AnimatedScale(
        scale: _isHovered ? 1.02 : 1.0,
        duration: const Duration(milliseconds: 200),
        curve: Curves.ease,
        child: SizedBox(
          width: double.infinity,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            curve: Curves.ease,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.r),
              gradient: const LinearGradient(
                colors: [Color(0xFF2563EB), Color(0xFF1E40AF)],
              ),
              boxShadow: [
                BoxShadow(
                  color: _isHovered ? const Color(0x2D2563EB) : const Color(0x1A2563EB),
                  blurRadius: _isHovered ? 16.r : 10.r,
                  offset: Offset(0, _isHovered ? 6.h : 2.h),
                ),
              ],
            ),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                shadowColor: Colors.transparent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.r),
                ),
                padding: EdgeInsets.symmetric(vertical: 16.h),
              ),
              child: Text(
                'Send Message',
                style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                  letterSpacing: 0.3,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _ContactDetailItem extends StatefulWidget {
  const _ContactDetailItem({
    required this.icon,
    required this.title,
    required this.value,
  });

  final IconData icon;
  final String title;
  final String value;

  @override
  State<_ContactDetailItem> createState() => _ContactDetailItemState();
}

class _ContactDetailItemState extends State<_ContactDetailItem> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      cursor: SystemMouseCursors.grab,
      child: AnimatedOpacity(
        opacity: _isHovered ? 0.9 : 1.0,
        duration: const Duration(milliseconds: 200),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              curve: Curves.ease,
              width: 44.w,
              height: 44.h,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: const Color(0xFFE0E7FF),
                boxShadow: _isHovered
                    ? [
                        BoxShadow(
                          color: const Color(0x152563EB),
                          blurRadius: 10.r,
                          offset: Offset(0, 4.h),
                        ),
                      ]
                    : [],
              ),
              child: Icon(
                widget.icon,
                size: 22.sp,
                color: const Color(0xFF2563EB),
              ),
            ),
            SizedBox(width: 16.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xFF0F172A),
                    ),
                  ),
                  SizedBox(height: 6.h),
                  Text(
                    widget.value,
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      height: 1.5.h,
                      color: const Color(0xFF64748B),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
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



