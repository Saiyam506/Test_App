import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/landing_pages/camp/page.dart';
import 'package:test_app/landing_pages/footer.dart';
import 'package:test_app/landing_pages/home/mobile.dart';
import 'package:test_app/landing_pages/home/widgets.dart';
import 'package:test_app/landing_pages/header.dart';
import 'package:test_app/widgets/responsive_layout.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: MobileHomePage(),
      desktop: DesktopHomePage(),
    );
  }
}

class DesktopHomePage extends StatelessWidget {
  const DesktopHomePage({super.key});

  Widget navButton(String text, VoidCallback onTap) {
    return NavButton(
      text: text,
      onTap: onTap,
    );
  }

  Widget serviceButton({
    required String title,
    required String subtitle,
    required String image,
    double imageHeight = 100,
    double imageOffsetY = 0,
    VoidCallback? onTap,
  }) {
    return HoverServiceButton(
      title: title,
      subtitle: subtitle,
      image: image,
      imageHeight: imageHeight,
      imageOffsetY: imageOffsetY,
      onTap:
          onTap ??
          () {
            debugPrint('$title clicked');
          },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 90.h,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        title: Header(activePage: 'Home'),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 20.h),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Choose a ',
                    style: TextStyle(
                      fontSize: 32.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ShaderMask(
                    shaderCallback: (bounds) => LinearGradient(
                      colors: [Colors.blue, Colors.green],
                    ).createShader(bounds),
                    child: Text(
                      'Service',
                      style: TextStyle(
                        fontSize: 32.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 5.h),

              Text(
                'Get healthcare at your doorstep',
                style: TextStyle(
                  fontSize: 20.sp,
                  color: Colors.grey,
                ),
              ),

              SizedBox(height: 20.h),

              Center(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      serviceButton(
                        title: 'Ambulance\nService',
                        subtitle: '24/7 emergency support',
                        image: 'assets/company/ambulance_button.webp',
                        imageHeight: 120.h,
                        imageOffsetY: 6,
                      ),
                      SizedBox(width: 20.w),
                      serviceButton(
                        title: 'Doctor\nAppointment',
                        subtitle: 'Doctors at your doorstep',
                        image: 'assets/company/doctor_checkup_button.webp',
                        imageHeight: 110.h,
                        imageOffsetY: 8,
                      ),
                      SizedBox(width: 20.w),
                      serviceButton(
                        title: 'Lab and\nDiagnostics',
                        subtitle: 'Sample collection at home',
                        image: 'assets/company/lab_test_button.webp',
                        imageHeight: 140.h,
                        imageOffsetY: 10,
                      ),
                      SizedBox(width: 20.w),
                      serviceButton(
                        title: 'Senior Health\nCare',
                        subtitle: 'Care and support for seniors',
                        image: 'assets/company/senior_care_button.webp',
                        imageHeight: 120.h,
                        imageOffsetY: 10,
                      ),
                      SizedBox(width: 20.w),
                      serviceButton(
                        title: 'Meds\nDelivery',
                        subtitle: 'Medicines delivered fast',
                        image: 'assets/company/meds_del_button.webp',
                        imageHeight: 120.h,
                        imageOffsetY: 8,
                      ),
                      SizedBox(width: 20.w),
                      serviceButton(
                        title: 'Medical\nCamp',
                        subtitle: 'Health checkups at your workspace',
                        image: 'assets/company/medcamp_button.webp',
                        imageHeight: 140.h,
                        imageOffsetY: 10,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => CampsPage()),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 20.h),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16.r),
                  child: Image.asset(
                    'assets/company/home_banner.webp',
                    width: double.infinity,
                    height: 260.h,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 40.h),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 260.w),
                padding: EdgeInsets.symmetric(vertical: 40.h, horizontal: 20.w),
                decoration: BoxDecoration(
                  color: Color(0xFFE6ECF2),
                  borderRadius: BorderRadius.circular(25.r),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.08),
                      blurRadius: 20.r,
                      offset: Offset(0, 8),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Text(
                      'Patient Testimonials',
                      style: TextStyle(
                        fontSize: 26.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20.h),

                    SizedBox(
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // COLUMN 1
                          Expanded(
                            child: Column(
                              children: [
                                TestimonialCard(
                                  name: 'Rahul S., 28',
                                  text:
                                      'Booking a full-body checkup was incredibly seamless. The entire process was smooth from start to finish, and the phlebotomist arrived right on time. Very professional service and highly recommended.',
                                  height: 240.h,
                                ),
                                SizedBox(height: 18.h),
                                TestimonialCard(
                                  name: 'Priya M., 27',
                                  text: 'Really good services. Everything was well organized and the staff was polite and helpful throughout the process.',
                                  height: 170.h,
                                ),
                                SizedBox(height: 18.h),
                                TestimonialCard(
                                  name: 'Arjun K., 35',
                                  text: 'Quick response and very professional staff. The booking was easy and the service exceeded my expectations.',
                                  height: 190.h,
                                ),
                              ],
                            ),
                          ),

                          SizedBox(width: 20.w),

                          // COLUMN 2
                          Expanded(
                            child: Column(
                              children: [
                                TestimonialCard(
                                  name: 'Amit R., 36',
                                  text:
                                      'Seamless booking experience with punctual staff. I received my digital reports within 24 hours without any hassle. Highly recommend this service.',
                                  height: 200.h,
                                ),
                                SizedBox(height: 18.h),
                                TestimonialCard(
                                  name: 'Karthik V., 33',
                                  text: 'Excellent preventive care package for my parents. Zero waiting time, clean setup, and everything was handled very professionally.',
                                  height: 220.h,
                                ),
                                SizedBox(height: 18.h),
                                TestimonialCard(
                                  name: 'Meera D., 30',
                                  text: 'Very smooth and hassle-free experience. The support team was responsive and guided me throughout the process.',
                                  height: 180.h,
                                ),
                              ],
                            ),
                          ),

                          SizedBox(width: 20.w),

                          // COLUMN 3
                          Expanded(
                            child: Column(
                              children: [
                                TestimonialCard(
                                  name: 'Neha K., 31',
                                  text: 'Convenient home collection and great doctor consultation. Perfect solution for busy professionals like me.',
                                  height: 230.h,
                                ),
                                SizedBox(height: 18.h),
                                TestimonialCard(
                                  name: 'Sneha A., 29',
                                  text: 'Perfectly coordinated team. They handled our society camp efficiently and everything was managed smoothly.',
                                  height: 190.h,
                                ),
                                SizedBox(height: 18.h),
                                TestimonialCard(
                                  name: 'Rohit P., 40',
                                  text: 'Highly reliable and fast service. The entire experience was professional and trustworthy from start to finish.',
                                  height: 180.h,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40.h),

              Column(
                children: [
                  Text(
                    'Partnered Hospitals',
                    style: TextStyle(
                      fontSize: 26.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 2.h),
                  Text(
                    'Trusted by leading hospitals across Bangalore',
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40.h),

              Center(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        HospitalBox(
                          imagePath: 'assets/partnered_hospitals/narayana_health.webp',
                          onTap: () => debugPrint('Narayana Health'),
                        ),
                        SizedBox(width: 20.w),
                        HospitalBox(
                          imagePath: 'assets/partnered_hospitals/aster_rv.webp',
                          onTap: () => debugPrint('Aster RV'),
                        ),
                        SizedBox(width: 20.w),
                        HospitalBox(
                          imagePath: 'assets/partnered_hospitals/apollo_hospital_image.webp',
                          onTap: () => debugPrint('Apollo Hospitals'),
                        ),
                        SizedBox(width: 20.w),
                        HospitalBox(
                          imagePath: 'assets/partnered_hospitals/manipal_hospital_image.webp',
                          onTap: () => debugPrint('Manipal Hospital'),
                        ),
                      ],
                    ),

                    SizedBox(height: 20.h),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        HospitalBox(
                          imagePath: 'assets/partnered_hospitals/aikya_hospital_image.webp',
                          onTap: () => debugPrint('Aikya Hospital'),
                        ),
                        SizedBox(width: 20.w),
                        HospitalBox(
                          imagePath: 'assets/partnered_hospitals/sparsh_hospital_image.webp',
                          onTap: () => debugPrint('Sparsh Hospital'),
                        ),
                        SizedBox(width: 20.w),
                        HospitalBox(
                          imagePath: 'assets/partnered_hospitals/kauvery_hospital_image.webp',
                          onTap: () => debugPrint('Kauvery Hospital'),
                        ),
                        SizedBox(width: 20.w),
                        HospitalBox(
                          imagePath: 'assets/partnered_hospitals/aster_cmi_hospital_image.webp',
                          onTap: () => debugPrint('Aster CMI'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(height: 40.h),

              Footer(),
            ],
          ),
        ),
      ),
    );
  }
}

