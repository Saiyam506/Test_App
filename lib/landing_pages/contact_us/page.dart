import 'package:flutter/material.dart';
import 'package:test_app/landing_pages/header.dart';
import 'package:test_app/landing_pages/footer.dart';
import 'package:test_app/landing_pages/contact_us/widget.dart';

class ContactUsPage extends StatelessWidget {
  const ContactUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Header(activePage: 'Contact Us'),

          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Color(0xFFF8FAFC), Color(0xFFF1F5F9)],
                      ),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 48),
                    child: Center(
                      child: Container(
                        constraints: const BoxConstraints(maxWidth: 1100),
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: LayoutBuilder(
                          builder: (context, constraints) {
                            final bool compact = constraints.maxWidth < 900;

                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Contact Us',
                                  style: TextStyle(
                                    fontSize: compact ? 32 : 36,
                                    fontWeight: FontWeight.w700,
                                    color: const Color(0xFF3B82F6),
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  'We’re here to help.',
                                  style: TextStyle(
                                    fontSize: compact ? 30 : 34,
                                    height: 1.05,
                                    fontWeight: FontWeight.w700,
                                    color: const Color(0xFF1F2937),
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  'Get in touch with us for any queries or support.',
                                  style: TextStyle(
                                    fontSize: compact ? 26 : 28,
                                    color: const Color(0xFF6B7280),
                                  ),
                                ),
                                const SizedBox(height: 18),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 3,
                                      height: compact ? 92 : 92,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFF3B82F6),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                    ),
                                    const SizedBox(width: 12),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'We’re building a smarter, more connected healthcare experience.',
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: const Color(0xFF64748B),
                                              height: 1.4,
                                            ),
                                          ),
                                          const SizedBox(height: 2),
                                          Text.rich(
                                            TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: 'From organizing health camps to providing immediate support, ',
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                    color: const Color(0xFF64748B),
                                                    height: 1.4,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: 'our team is here to help.',
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                    color: const Color(0xFF334155),
                                                    fontWeight: FontWeight.w700,
                                                    height: 1.4,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          const SizedBox(height: 2),
                                          Text(
                                            'Fill out the form below and we’ll get back to you shortly.',
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: const Color(0xFF64748B),
                                              height: 1.4,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 26),
                                if (compact)
                                  const Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      ContactFormCard(),
                                      SizedBox(height: 20),
                                      ContactDetails(),
                                    ],
                                  )
                                else
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      SizedBox(
                                        width: 520,
                                        child: ContactFormCard(),
                                      ),
                                      SizedBox(width: 20),
                                      SizedBox(
                                        width: 520,
                                        child: ContactDetails(),
                                      ),
                                    ],
                                  ),
                                const SizedBox(height: 26),
                                const WhyChooseSection(),
                                const SizedBox(height: 26),
                                const OurLocationSection(),
                                const SizedBox(height: 26),
                                const FaqSection(),
                              ],
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                  const Footer(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
