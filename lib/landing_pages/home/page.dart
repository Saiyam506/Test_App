import 'package:flutter/material.dart';
import 'package:test_app/landing_pages/camp/page.dart';
import 'package:test_app/landing_pages/footer.dart';
import 'package:test_app/landing_pages/home/widgets.dart';
import 'package:test_app/landing_pages/header.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
        toolbarHeight: 90,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Header(activePage: 'Home'),
        ),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Choose a ',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ShaderMask(
                    shaderCallback: (bounds) => const LinearGradient(
                      colors: [Colors.blue, Colors.green],
                    ).createShader(bounds),
                    child: const Text(
                      'Service',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 5),

              const Text(
                'Get healthcare at your doorstep',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey,
                ),
              ),

              const SizedBox(height: 20),

              Center(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      serviceButton(
                        title: 'Ambulance\nService',
                        subtitle: '24/7 emergency support',
                        image: 'assets/company/ambulance_button.png',
                        imageHeight: 120,
                        imageOffsetY: 6,
                      ),
                      const SizedBox(width: 20),
                      serviceButton(
                        title: 'Doctor\nAppointment',
                        subtitle: 'Doctors at your doorstep',
                        image: 'assets/company/doctor_checkup_button.png',
                        imageHeight: 110,
                        imageOffsetY: 8,
                      ),
                      const SizedBox(width: 20),
                      serviceButton(
                        title: 'Lab and\nDiagnostics',
                        subtitle: 'Sample collection at home',
                        image: 'assets/company/lab_test_button.png',
                        imageHeight: 140,
                        imageOffsetY: 10,
                      ),
                      const SizedBox(width: 20),
                      serviceButton(
                        title: 'Senior Health\nCare',
                        subtitle: 'Care and support for seniors',
                        image: 'assets/company/senior_care_button.png',
                        imageHeight: 120,
                        imageOffsetY: 10,
                      ),
                      const SizedBox(width: 20),
                      serviceButton(
                        title: 'Meds\nDelivery',
                        subtitle: 'Medicines delivered fast',
                        image: 'assets/company/meds_del_button.png',
                        imageHeight: 120,
                        imageOffsetY: 8,
                      ),
                      const SizedBox(width: 20),
                      serviceButton(
                        title: 'Medical\nCamp',
                        subtitle: 'Health checkups at your workspace',
                        image: 'assets/company/medcamp_button.png',
                        imageHeight: 140,
                        imageOffsetY: 10,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const CampsPage()),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 20),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset(
                    'assets/company/home_banner.png',
                    width: double.infinity,
                    height: 260,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 40),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 260),
                padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
                decoration: BoxDecoration(
                  color: const Color(0xFFE6ECF2),
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.08),
                      blurRadius: 20,
                      offset: const Offset(0, 8),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    const Text(
                      'Patient Testimonials',
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),

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
                                  height: 240,
                                ),
                                TestimonialCard(
                                  name: 'Priya M., 27',
                                  text: 'Really good services. Everything was well organized and the staff was polite and helpful throughout the process.',
                                  height: 170,
                                ),
                                TestimonialCard(
                                  name: 'Arjun K., 35',
                                  text: 'Quick response and very professional staff. The booking was easy and the service exceeded my expectations.',
                                  height: 190,
                                ),
                              ],
                            ),
                          ),

                          const SizedBox(width: 20),

                          // COLUMN 2
                          Expanded(
                            child: Column(
                              children: [
                                TestimonialCard(
                                  name: 'Amit R., 36',
                                  text:
                                      'Seamless booking experience with punctual staff. I received my digital reports within 24 hours without any hassle. Highly recommend this service.',
                                  height: 200,
                                ),
                                TestimonialCard(
                                  name: 'Karthik V., 33',
                                  text: 'Excellent preventive care package for my parents. Zero waiting time, clean setup, and everything was handled very professionally.',
                                  height: 220,
                                ),
                                TestimonialCard(
                                  name: 'Meera D., 30',
                                  text: 'Very smooth and hassle-free experience. The support team was responsive and guided me throughout the process.',
                                  height: 180,
                                ),
                              ],
                            ),
                          ),

                          const SizedBox(width: 20),

                          // COLUMN 3
                          Expanded(
                            child: Column(
                              children: [
                                TestimonialCard(
                                  name: 'Neha K., 31',
                                  text: 'Convenient home collection and great doctor consultation. Perfect solution for busy professionals like me.',
                                  height: 230,
                                ),
                                TestimonialCard(
                                  name: 'Sneha A., 29',
                                  text: 'Perfectly coordinated team. They handled our society camp efficiently and everything was managed smoothly.',
                                  height: 190,
                                ),
                                TestimonialCard(
                                  name: 'Rohit P., 40',
                                  text: 'Highly reliable and fast service. The entire experience was professional and trustworthy from start to finish.',
                                  height: 180,
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
              const SizedBox(height: 40),

              Column(
                children: const [
                  Text(
                    'Partnered Hospitals',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 2),
                  Text(
                    'Trusted by leading hospitals across Bangalore',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40),

              Center(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        HospitalBox(
                          imagePath: 'assets/company/narayana_health.png',
                          onTap: () => debugPrint('Narayana Health'),
                        ),
                        const SizedBox(width: 20),
                        HospitalBox(
                          imagePath: 'assets/company/aster_rv.png',
                          onTap: () => debugPrint('Aster RV'),
                        ),
                        const SizedBox(width: 20),
                        HospitalBox(
                          imagePath: 'assets/company/apollo_hospital_image.png',
                          onTap: () => debugPrint('Apollo Hospitals'),
                        ),
                        const SizedBox(width: 20),
                        HospitalBox(
                          imagePath: 'assets/company/manipal_hospital_image.png',
                          onTap: () => debugPrint('Manipal Hospital'),
                        ),
                      ],
                    ),

                    const SizedBox(height: 20),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        HospitalBox(
                          imagePath: 'assets/company/aikya_hospital_image.png',
                          onTap: () => debugPrint('Aikya Hospital'),
                        ),
                        const SizedBox(width: 20),
                        HospitalBox(
                          imagePath: 'assets/company/sparsh_hospital_image.png',
                          onTap: () => debugPrint('Sparsh Hospital'),
                        ),
                        const SizedBox(width: 20),
                        HospitalBox(
                          imagePath: 'assets/company/kauvery_hospital_image.png',
                          onTap: () => debugPrint('Kauvery Hospital'),
                        ),
                        const SizedBox(width: 20),
                        HospitalBox(
                          imagePath: 'assets/company/aster_cmi_hospital_image.png',
                          onTap: () => debugPrint('Aster CMI'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 40),

              const Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
