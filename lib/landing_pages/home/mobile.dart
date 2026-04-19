import 'package:flutter/material.dart';
import 'package:test_app/landing_pages/home/mob_widgets.dart';

class MobileHomePage extends StatelessWidget {
  const MobileHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final services = <MobileServiceData>[
      const MobileServiceData(
        title: 'Ambulance\nService',
        subtitle: '24/7 emergency support',
        imagePath: 'assets/company/ambulance_button.png',
      ),
      const MobileServiceData(
        title: 'Doctor\nAppointment',
        subtitle: 'Doctors at your doorstep',
        imagePath: 'assets/company/doctor_checkup_button.png',
      ),
      const MobileServiceData(
        title: 'Lab and\nDiagnostics',
        subtitle: 'Sample collection at home',
        imagePath: 'assets/company/lab_test_button.png',
      ),
      const MobileServiceData(
        title: 'Senior Care',
        subtitle: 'Care and support for seniors',
        imagePath: 'assets/company/senior_care_button.png',
      ),
      const MobileServiceData(
        title: 'Meds\nDelivery',
        subtitle: 'Medicines delivered fast',
        imagePath: 'assets/company/meds_del_button.png',
      ),
      const MobileServiceData(
        title: 'Medical\nCamp',
        subtitle: 'Health checkups at your workspace',
        imagePath: 'assets/company/medcamp_button.png',
      ),
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const MenuIcon(),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Image.asset(
                        'assets/company/logo_with_text.png',
                        height: width < 360 ? 58 : 64,
                        fit: BoxFit.contain,
                        alignment: Alignment.centerLeft,
                      ),
                    ),
                    const SizedBox(width: 8),
                    const SignUpLoginButton(),
                  ],
                ),
                const SizedBox(height: 16),
                Center(
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Row(
                      children: [
                        Text(
                          'Choose a ',
                          style: TextStyle(
                            fontSize: width < 360 ? 24 : 27,
                            fontWeight: FontWeight.w700,
                            height: 1,
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
                              fontSize: width < 360 ? 24 : 27,
                              fontWeight: FontWeight.w700,
                              height: 1,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'Get healthcare at your doorstep',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: width < 360 ? 14 : 16,
                    color: const Color(0xFF60708A),
                    fontWeight: FontWeight.w500,
                    height: 1.1,
                  ),
                ),
                const SizedBox(height: 14),
                LayoutBuilder(
                  builder: (context, constraints) {
                    const spacing = 16.0;
                    final cardWidth = (constraints.maxWidth - spacing) / 2;
                    return Wrap(
                      spacing: spacing,
                      runSpacing: 16,
                      children: services
                          .map(
                            (service) => SizedBox(
                              width: cardWidth,
                              child: MobileServiceCard(
                                title: service.title,
                                subtitle: service.subtitle,
                                imagePath: service.imagePath,
                                onTap: () {},
                              ),
                            ),
                          )
                          .toList(),
                    );
                  },
                ),
                const SizedBox(height: 28),

                Center(
                  child: Column(
                    children: [
                      FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'What our ',
                              style: TextStyle(
                                fontSize: 22,
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
                              child: const Text(
                                'Patients',
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white, // required for gradient
                                ),
                              ),
                            ),
                            const Text(
                              ' Say',
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 6),
                      const Text(
                        'Real experiences from people who trust MediDocs',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF60708A),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 18),

                      const SizedBox(height: 18),

                      SizedBox(
                        height: 200,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              TestimonialCard(
                                name: "Rahul S., 28",
                                text:
                                    "Booking a full-body checkup was incredibly seamless. The entire process was smooth from start to finish, and the phlebotomist arrived right on time. Very professional service and highly recommended.",
                              ),
                              const SizedBox(width: 14),

                              TestimonialCard(
                                name: "Priya M., 27",
                                text: "Really good services. Everything was well organized and the staff was polite and helpful throughout the process.",
                              ),
                              const SizedBox(width: 14),

                              TestimonialCard(
                                name: "Arjun K., 35",
                                text: "Quick response and very professional staff. The booking was easy and the service exceeded my expectations.",
                              ),
                              const SizedBox(width: 14),

                              TestimonialCard(
                                name: "Amit R., 36",
                                text:
                                    "Seamless booking experience with punctual staff. I received my digital reports within 24 hours without any hassle. Highly recommend this service.",
                              ),
                              const SizedBox(width: 14),

                              TestimonialCard(
                                name: "Karthik V., 33",
                                text: "Excellent preventive care package for my parents. Zero waiting time, clean setup, and everything was handled very professionally.",
                              ),
                              const SizedBox(width: 14),

                              TestimonialCard(
                                name: "Meera D., 30",
                                text: "Very smooth and hassle-free experience. The support team was responsive and guided me throughout the process.",
                              ),
                              const SizedBox(width: 14),

                              TestimonialCard(
                                name: "Neha K., 31",
                                text: "Convenient home collection and great doctor consultation. Perfect solution for busy professionals like me.",
                              ),
                              const SizedBox(width: 14),

                              TestimonialCard(
                                name: "Sneha A., 29",
                                text: "Perfectly coordinated team. They handled our society camp efficiently and everything was managed smoothly.",
                              ),
                              const SizedBox(width: 14),

                              TestimonialCard(
                                name: "Rohit P., 40",
                                text: "Highly reliable and fast service. The entire experience was professional and trustworthy from start to finish.",
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 28),
                      const Text(
                        ' Partnered Hospitals',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 18),

                      SizedBox(
                        height: 140,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          padding: const EdgeInsets.symmetric(horizontal: 16), // 👈 THIS LINE
                          child: Row(
                            children: [
                              HospitalCard(
                                imagePath: 'assets/partnered_hospitals/narayana_health.png',
                              ),
                              const SizedBox(width: 14),

                              HospitalCard(
                                imagePath: 'assets/partnered_hospitals/aster_rv.png',
                              ),
                              const SizedBox(width: 14),

                              HospitalCard(
                                imagePath: 'assets/partnered_hospitals/apollo_hospital_image.png',
                              ),
                              const SizedBox(width: 14),

                              HospitalCard(
                                imagePath: 'assets/partnered_hospitals/manipal_hospital_image.png',
                              ),
                              const SizedBox(width: 14),

                              HospitalCard(
                                imagePath: 'assets/partnered_hospitals/aikya_hospital_image.png',
                              ),
                              const SizedBox(width: 14),

                              HospitalCard(
                                imagePath: 'assets/partnered_hospitals/sparsh_hospital_image.png',
                              ),
                              const SizedBox(width: 14),

                              HospitalCard(
                                imagePath: 'assets/partnered_hospitals/kauvery_hospital_image.png',
                              ),
                              const SizedBox(width: 14),

                              HospitalCard(
                                imagePath: 'assets/partnered_hospitals/aster_cmi_hospital_image.png',
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
        ),
      ),
    );
  }
}
