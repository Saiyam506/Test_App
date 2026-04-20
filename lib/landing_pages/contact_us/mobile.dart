import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/landing_pages/contact_us/mob_widgets.dart';
import 'package:test_app/landing_pages/home/mob_widgets.dart';

class MobileContactUs extends StatelessWidget {
  const MobileContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFF8FAFC),
              Color(0xFFFFFFFF),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),

        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const PaddedHeader(),

                SizedBox(height: 20.h),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Contact Us",
                        style: TextStyle(
                          fontSize: 22.sp,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFF2563EB),
                        ),
                      ),
                      SizedBox(height: 8.h),
                      Text(
                        "We are here to help.",
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xFF1E293B),
                        ),
                      ),
                      SizedBox(height: 6.h),
                      Text(
                        "Get in touch with us for any queries or support.",
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: const Color(0xFF64748B),
                        ),
                      ),
                      SizedBox(height: 6.h),
                      Text(
                        "Fill out the form below and we will get back to you shortly.",
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: const Color(0xFF64748B),
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 20.h),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Container(
                    padding: EdgeInsets.all(16.w),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16.r),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withAlpha(15),
                          blurRadius: 12.r,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Text(
                          "How Can We Assist You?",
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 12.h),

                        const ContactField(hint: "Your Name"),
                        SizedBox(height: 10.h),

                        const ContactField(hint: "Your Email"),
                        SizedBox(height: 10.h),

                        const ContactField(hint: "Message", maxLines: 4),
                        SizedBox(height: 16.h),

                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.symmetric(vertical: 14.h),
                              backgroundColor: const Color(0xFF2563EB),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                            ),
                            child: Text(
                              "Send Message",
                              style: TextStyle(fontSize: 14.sp),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 24.h),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Container(
                    padding: EdgeInsets.all(16.w),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16.r),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withAlpha(15),
                          blurRadius: 12.r,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        ContactItem(
                          icon: Icons.phone,
                          title: "Call Us",
                          subtitle: "+91 63666 77010",
                        ),
                        Divider(height: 20.h),
                        ContactItem(
                          icon: Icons.location_on,
                          title: "Address",
                          subtitle: "Jayanagar, Bengaluru, Karnataka 560070",
                        ),
                        Divider(height: 20.h),
                        ContactItem(
                          icon: Icons.email,
                          title: "Email",
                          subtitle: "support@medidocs.in",
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 30.h),

                /// âœ… WHY CHOOSE MEDIDOCS
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Text(
                    "Why Choose MediDocs?",
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF1E293B),
                    ),
                  ),
                ),

                SizedBox(height: 16.h),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Column(
                    children: [
                      FeatureCard(
                        icon: Icons.shield_outlined,
                        title: "24/7 Emergency Support",
                        description: "Always ready to assist you, anytime, day or night.",
                        color: Colors.blue,
                      ),
                      SizedBox(height: 12.h),

                      FeatureCard(
                        icon: Icons.medical_services_outlined,
                        title: "Certified Medical Professionals",
                        description: "Experienced & qualified doctors and paramedics.",
                        color: Colors.blue,
                      ),
                      SizedBox(height: 12.h),

                      FeatureCard(
                        icon: Icons.access_time,
                        title: "Rapid Response Time",
                        description: "Guaranteeing speedy help when it matters most.",
                        color: Colors.green,
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 30.h),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Text(
                    "Frequently Asked Questions",
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF1E293B),
                    ),
                  ),
                ),

                SizedBox(height: 18.h),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Column(
                    children: [
                      FAQCard(
                        question: "How quickly will I get a response?",
                        answer: "Our team reviews every inquiry as soon as possible and typically responds within 24 hours.",
                      ),
                      SizedBox(height: 12.h),

                      FAQCard(
                        question: "Do you provide emergency home visits?",
                        answer: "Yes, emergency home visits are available in select areas. Contact us immediately for urgent support.",
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 30.h),

                const MobileFooter(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
