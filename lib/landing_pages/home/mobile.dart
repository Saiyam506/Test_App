import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/landing_pages/about_us/page.dart';
import 'package:test_app/landing_pages/camp/mobile.dart';
import 'package:test_app/landing_pages/contact_us/page.dart';
import 'package:test_app/landing_pages/mob_footer.dart';
import 'package:test_app/landing_pages/mob_header.dart';
import 'package:test_app/landing_pages/home/mob_widgets.dart';

class MobileHomePage extends StatelessWidget {
  const MobileHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final services = <MobileServiceData>[
      MobileServiceData(
        title: 'Ambulance\nService',
        subtitle: '24/7 emergency support',
        imagePath: 'assets/company/ambulance_button.webp',
        onTap: () {},
      ),
      MobileServiceData(
        title: 'Doctor\nAppointment',
        subtitle: 'Doctors at your doorstep',
        imagePath: 'assets/company/doctor_checkup_button.webp',
        onTap: () {},
      ),
      MobileServiceData(
        title: 'Lab and\nDiagnostics',
        subtitle: 'Sample collection at home',
        imagePath: 'assets/company/lab_test_button.webp',
        onTap: () {},
      ),
      MobileServiceData(
        title: 'Senior Care',
        subtitle: 'Care and support for seniors',
        imagePath: 'assets/company/senior_care_button.webp',
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => const AboutUsPage(),
            ),
          );
        },
      ),
      MobileServiceData(
        title: 'Meds\nDelivery',
        subtitle: 'Medicines delivered fast',
        imagePath: 'assets/company/meds_del_button.webp',
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => const ContactUsPage(),
            ),
          );
        },
      ),
      MobileServiceData(
        title: 'Medical\nCamp',
        subtitle: 'Health checkups at your workspace',
        imagePath: 'assets/company/medcamp_button.webp',
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => const MobileCamps(),
            ),
          );
        },
      ),
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const MobileHeader(),

                    SizedBox(height: 24.h),
                    Center(
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Row(
                          children: [
                            Text(
                              'Choose a ',
                              style: TextStyle(
                                fontSize: width < 360 ? 24.sp : 27.sp,
                                fontWeight: FontWeight.w700,
                                height: 1.h,
                                color: Colors.black,
                              ),
                            ),
                            ShaderMask(
                              shaderCallback: (bounds) {
                                return const LinearGradient(
                                  colors: [Color(0xFF2F9BD3), Color(0xFF6ABA51)],
                                ).createShader(bounds);
                              },
                              child: Text(
                                'Service',
                                style: TextStyle(
                                  fontSize: width < 360 ? 24.sp : 27.sp,
                                  fontWeight: FontWeight.w700,
                                  height: 1.h,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 8.h),
                    Text(
                      'Get healthcare at your doorstep',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: width < 360 ? 14.sp : 16.sp,
                        color: const Color(0xFF60708A),
                        fontWeight: FontWeight.w500,
                        height: 1.1.h,
                      ),
                    ),
                    SizedBox(height: 14.h),
                    LayoutBuilder(
                      builder: (context, constraints) {
                        final spacing = 16.w;
                        final cardWidth = (constraints.maxWidth - spacing) / 2;
                        return Wrap(
                          spacing: spacing,
                          runSpacing: 16.h,
                          children: services
                              .map(
                                (service) => SizedBox(
                                  width: cardWidth,
                                  child: MobileServiceCard(
                                    title: service.title,
                                    subtitle: service.subtitle,
                                    imagePath: service.imagePath,
                                    onTap: service.onTap,
                                  ),
                                ),
                              )
                              .toList(),
                        );
                      },
                    ),
                    SizedBox(height: 28.h),
                    Center(
                      child: Column(
                        children: [
                          FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'What our ',
                                  style: TextStyle(
                                    fontSize: 22.sp,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black,
                                  ),
                                ),
                                ShaderMask(
                                  shaderCallback: (bounds) {
                                    return const LinearGradient(
                                      colors: [Color(0xFF2F9BD3), Color(0xFF6ABA51)],
                                    ).createShader(bounds);
                                  },
                                  child: Text(
                                    'Patients',
                                    style: TextStyle(
                                      fontSize: 22.sp,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Text(
                                  ' Say',
                                  style: TextStyle(
                                    fontSize: 22.sp,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 6.h),
                          Text(
                            'Real experiences from people who trust MediDocs',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 14.sp,
                              color: const Color(0xFF60708A),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 18.h),
                          SizedBox(
                            height: 200.h,
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  TestimonialCard(
                                    name: "Rahul S., 28",
                                    text:
                                        "Booking a full-body checkup was incredibly seamless. The entire process was smooth from start to finish, and the phlebotomist arrived right on time. Very professional service and highly recommended.",
                                  ),
                                  SizedBox(width: 14.w),
                                  TestimonialCard(
                                    name: "Priya M., 27",
                                    text: "Really good services. Everything was well organized and the staff was polite and helpful throughout the process.",
                                  ),
                                  SizedBox(width: 14.w),
                                  TestimonialCard(
                                    name: "Arjun K., 35",
                                    text: "Quick response and very professional staff. The booking was easy and the service exceeded my expectations.",
                                  ),
                                  SizedBox(width: 14.w),
                                  TestimonialCard(
                                    name: "Amit R., 36",
                                    text:
                                        "Seamless booking experience with punctual staff. I received my digital reports within 24 hours without any hassle. Highly recommend this service.",
                                  ),
                                  SizedBox(width: 14.w),
                                  TestimonialCard(
                                    name: "Karthik V., 33",
                                    text: "Excellent preventive care package for my parents. Zero waiting time, clean setup, and everything was handled very professionally.",
                                  ),
                                  SizedBox(width: 14.w),
                                  TestimonialCard(
                                    name: "Meera D., 30",
                                    text: "Very smooth and hassle-free experience. The support team was responsive and guided me throughout the process.",
                                  ),
                                  SizedBox(width: 14.w),
                                  TestimonialCard(
                                    name: "Neha K., 31",
                                    text: "Convenient home collection and great doctor consultation. Perfect solution for busy professionals like me.",
                                  ),
                                  SizedBox(width: 14.w),
                                  TestimonialCard(
                                    name: "Sneha A., 29",
                                    text: "Perfectly coordinated team. They handled our society camp efficiently and everything was managed smoothly.",
                                  ),
                                  SizedBox(width: 14.w),
                                  TestimonialCard(
                                    name: "Rohit P., 40",
                                    text: "Highly reliable and fast service. The entire experience was professional and trustworthy from start to finish.",
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 28.h),
                          Text(
                            ' Partnered Hospitals',
                            style: TextStyle(
                              fontSize: 22.sp,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 18.h),
                          SizedBox(
                            height: 140.h,
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              padding: EdgeInsets.symmetric(horizontal: 16.w),
                              child: Row(
                                children: [
                                  HospitalCard(
                                    imagePath: 'assets/partnered_hospitals/narayana_health.webp',
                                  ),
                                  SizedBox(width: 14.w),
                                  HospitalCard(
                                    imagePath: 'assets/partnered_hospitals/aster_rv.webp',
                                  ),
                                  SizedBox(width: 14.w),
                                  HospitalCard(
                                    imagePath: 'assets/partnered_hospitals/apollo_hospital_image.webp',
                                  ),
                                  SizedBox(width: 14.w),
                                  HospitalCard(
                                    imagePath: 'assets/partnered_hospitals/manipal_hospital_image.webp',
                                  ),
                                  SizedBox(width: 14.w),
                                  HospitalCard(
                                    imagePath: 'assets/partnered_hospitals/aikya_hospital_image.webp',
                                  ),
                                  SizedBox(width: 14.w),
                                  HospitalCard(
                                    imagePath: 'assets/partnered_hospitals/sparsh_hospital_image.webp',
                                  ),
                                  SizedBox(width: 14.w),
                                  HospitalCard(
                                    imagePath: 'assets/partnered_hospitals/kauvery_hospital_image.webp',
                                  ),
                                  SizedBox(width: 14.w),
                                  HospitalCard(
                                    imagePath: 'assets/partnered_hospitals/aster_cmi_hospital_image.webp',
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const MobileFooter(),
            ],
          ),
        ),
      ),
    );
  }
}

