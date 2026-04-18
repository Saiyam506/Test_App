import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/landing_pages/header.dart';
import 'package:test_app/landing_pages/footer.dart';
import 'package:test_app/landing_pages/contact_us/widget.dart';

class ContactUsPage extends StatelessWidget {
  const ContactUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 90,
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Header(activePage: 'Contact Us'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xFFF8FAFC), Color(0xFFF1F5F9)],
                ),
              ),
              padding: EdgeInsets.symmetric(vertical: 48.h),
              child: Center(
                child: Container(
                  constraints: BoxConstraints(maxWidth: 1100),
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: LayoutBuilder(
                    builder: (context, constraints) {
                      final bool compact = constraints.maxWidth < 900;
                      final Widget introText = Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Contact Us',
                            style: TextStyle(
                              fontSize: compact ? 30.sp : 34.sp,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF3B82F6),
                            ),
                          ),
                          SizedBox(height: 10.h),
                          Text(
                            'We’re here to help.',
                            style: TextStyle(
                              fontSize: compact ? 24.sp : 28.sp,
                              height: 1.05.h,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF1F2937),
                            ),
                          ),
                          SizedBox(height: 8.h),
                          Text(
                            'Get in touch with us for any queries or support.',
                            style: TextStyle(
                              fontSize: compact ? 20.sp : 22.sp,
                              color: Color(0xFF6B7280),
                            ),
                          ),
                          SizedBox(height: 18.h),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 3.w,
                                height: compact ? 82.h : 82.h,
                                decoration: BoxDecoration(
                                  color: Color(0xFF3B82F6),
                                  borderRadius: BorderRadius.circular(8.r),
                                ),
                              ),
                              SizedBox(width: 12.w),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'We’re building a smarter, more connected healthcare experience.',
                                      style: TextStyle(
                                        fontSize: 18.sp,
                                        color: Color(0xFF64748B),
                                        height: 1.4.h,
                                      ),
                                    ),
                                    SizedBox(height: 2.h),
                                    Text.rich(
                                      TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'From organizing health camps to providing immediate support, ',
                                            style: TextStyle(
                                              fontSize: 18.sp,
                                              color: Color(0xFF64748B),
                                              height: 1.4.h,
                                            ),
                                          ),
                                          TextSpan(
                                            text: 'our team is here to help.',
                                            style: TextStyle(
                                              fontSize: 18.sp,
                                              color: Color(0xFF334155),
                                              fontWeight: FontWeight.w700,
                                              height: 1.4.h,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 2.h),
                                    Text(
                                      'Fill out the form below and we’ll get back to you shortly.',
                                      style: TextStyle(
                                        fontSize: 18.sp,
                                        color: Color(0xFF64748B),
                                        height: 1.4.h,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      );

                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          if (compact)
                            introText
                          else
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(child: introText),
                                SizedBox(width: 24.w),
                                SizedBox(
                                  width: 300.w,
                                  child: Image.asset(
                                    'assets/company/contact_us_illustation.png',
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ],
                            ),
                          SizedBox(height: 26.h),
                          if (compact)
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ContactFormCard(),
                                SizedBox(height: 20.h),
                                ContactDetails(),
                              ],
                            )
                          else
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(child: ContactFormCard()),
                                SizedBox(width: 20.w),
                                Expanded(child: ContactDetails()),
                              ],
                            ),
                          SizedBox(height: 26.h),
                          WhyChooseSection(),
                          SizedBox(height: 26.h),
                          OurLocationSection(),
                          SizedBox(height: 26.h),
                          FaqSection(),
                        ],
                      );
                    },
                  ),
                ),
              ),
            ),
            Footer(),
          ],
        ),
      ),
    );
  }
}
