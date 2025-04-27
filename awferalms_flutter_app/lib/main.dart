import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(AwferaLMSApp());
}

class AwferaLMSApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Awfera LMS',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: LandingPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class LandingPage extends StatelessWidget {
  final Color primaryColor = Color(0xFF1E40AF); // Blue shade
  final Color secondaryColor = Color(0xFF2563EB); // Lighter blue

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Hero Section
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                  image: NetworkImage('https://www.awferalms.com/assets/img/shapes/hero-bottom-shape.png'),
                  fit: BoxFit.cover,
                  alignment: Alignment.bottomCenter,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.network(
                    'https://www.awferalms.com/assets/img/logo/AWFERA%20logo-01.png',
                    height: 80,
                  ),
                  SizedBox(height: 20),
                  Text(
                    'More Than 25,659+ Students',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: primaryColor,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'AI for a Better Tomorrow',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Empowering young minds in Pakistan to acquire AI skills and master the latest technologies with affordable programs and training to succeed in an AI-driven era.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  Wrap(
                    spacing: 20,
                    runSpacing: 10,
                    alignment: WrapAlignment.center,
                    children: [
                      FeatureChip(icon: FontAwesomeIcons.userGraduate, label: 'Experts Instructors'),
                      FeatureChip(icon: FontAwesomeIcons.bookOpen, label: '30+ Programs'),
                    ],
                  ),
                  SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: () {
                      // Open link
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: primaryColor,
                      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: Text(
                      'Start Learning Today',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 40),

            // More About Us Section
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Text(
                    'More About Us',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: primaryColor,
                    ),
                  ),
                  SizedBox(height: 20),
                  AboutFeature(
                    number: '01',
                    iconUrl: 'https://www.awferalms.com/assets/img/icon/promo-icon-1.png',
                    title: '30+ Online Programs',
                    description: 'Choose a program, meet prerequisites, and sharpen skills.',
                  ),
                  AboutFeature(
                    number: '02',
                    iconUrl: 'https://www.awferalms.com/assets/img/icon/promo-icon-2.png',
                    title: 'Experience Educators',
                    description: 'Learn from the industry experts and gain career benefits.',
                  ),
                  AboutFeature(
                    number: '03',
                    iconUrl: 'https://www.awferalms.com/assets/img/icon/promo-icon-3.png',
                    title: 'Online Certificates',
                    description: 'Secure a certificate for every program you complete.',
                  ),
                  AboutFeature(
                    number: '04',
                    iconUrl: 'https://www.awferalms.com/assets/img/icon/promo-icon-4.png',
                    title: 'Flexible Learning',
                    description: 'Learn at your own pace with personalized training at any time.',
                  ),
                ],
              ),
            ),

            SizedBox(height: 40),

            // About Our Platform Section
            Container(
              color: Colors.grey[100],
              padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
              child: Column(
                children: [
                  Text(
                    'About Our Platform',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: primaryColor,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Awfera LMS Offers Affordable Online Learning',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.black87,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Designed to meet the needs of underprivileged Pakistan youth, Awfera LMS helps learners upskill with interactive programs, earn certificates to attract potential recruiters, and acquire freelancing skills to become their own bosses.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      // Open link
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: primaryColor,
                      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: Text(
                      'Learn More',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 40),

            // Study With Us Section
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Text(
                    'Study With Us',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: primaryColor,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Pursue your personal and career\nobjectives with Awfera LMS!',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.black87,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      // Open link
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: primaryColor,
                      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: Text(
                      'Get Started Now',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 40),

            // Our Features Section
            Container(
              color: Colors.grey[100],
              padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
              child: Column(
                children: [
                  Text(
                    'Our Features',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: primaryColor,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Programs We Offer',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      // Open link
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: primaryColor,
                      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: Text(
                      'Explore All Programs',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 40),

            // More About Us Section (Key Features)
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Text(
                    'More About Us',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: primaryColor,
                    ),
                  ),
                  SizedBox(height: 20),
                  KeyFeature(
                    number: '01',
                    iconUrl: 'https://www.awferalms.com/assets/img/icon/dashboard.png',
                    title: 'Dashboard',
                    description: 'Learners, educators, and admins have personal dashboards with functionalities tailored to their roles.',
                  ),
                  KeyFeature(
                    number: '02',
                    iconUrl: 'https://www.awferalms.com/assets/img/icon/promo-icon-2.png',
                    title: 'Program Profile',
                    description: 'Educators can design programs, while learners can view program details, such as curriculum.',
                  ),
                  KeyFeature(
                    number: '03',
                    iconUrl: 'https://www.awferalms.com/assets/img/icon/training-course.png',
                    title: 'My Programs',
                    description: 'Students can view their active and completed programs that enhance their learning experience.',
                  ),
                  KeyFeature(
                    number: '04',
                    iconUrl: 'https://www.awferalms.com/assets/img/icon/promo-icon-4.png',
                    title: 'Live Sessions',
                    description: 'Educators can schedule live sessions for students to join related to their enrolled programs.',
                  ),
                  KeyFeature(
                    number: '05',
                    iconUrl: 'https://www.awferalms.com/assets/img/icon/promo-icon-1.png',
                    title: 'Enrollment Overview',
                    description: 'Institutes handle teacher enrollment, while teachers manage the students enrolled in their programs.',
                  ),
                  KeyFeature(
                    number: '06',
                    iconUrl: 'https://www.awferalms.com/assets/img/icon/test-quiz.png',
                    title: 'Tests/Quizzes',
                    description: 'Tests, assignments, and in-video quizzes are present to evaluate learner skills.',
                  ),
                  KeyFeature(
                    number: '07',
                    iconUrl: 'https://www.awferalms.com/assets/img/icon/promo-icon-3.png',
                    title: 'Certifications',
                    description: 'Certificates are awarded to students on completing training and passing assignments and tests.',
                  ),
                  KeyFeature(
                    number: '08',
                    iconUrl: 'https://www.awferalms.com/assets/img/icon/mobileAccess.PNG',
                    title: 'Mobile App Access',
                    description: 'An Awfera LMS app is available that allows easy access to every program content anytime, anywhere.',
                  ),
                ],
              ),
            ),

            SizedBox(height: 40),

            // CTA Section
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 60, horizontal: 20),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage('https://www.awferalms.com/assets/img/bg-img/2.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                children: [
                  Text(
                    'Access online learning on the go, no matter where you are, with our mobile app.',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Mobile App Coming Soon',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white70,
                    ),
                    textAlign: TextAlign.center,
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

class FeatureChip extends StatelessWidget {
  final IconData icon;
  final String label;

  FeatureChip({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Chip(
      avatar: FaIcon(icon, size: 18, color: Colors.white),
      label: Text(label, style: TextStyle(color: Colors.white)),
      backgroundColor: Colors.blueAccent,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
    );
  }
}

class AboutFeature extends StatelessWidget {
  final String number;
  final String iconUrl;
  final String title;
  final String description;

  AboutFeature({
    required this.number,
    required this.iconUrl,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.blue.shade100,
        child: Text(number, style: TextStyle(color: Colors.blue.shade900, fontWeight: FontWeight.bold)),
      ),
      title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text(description),
      trailing: Image.network(iconUrl, width: 30, height: 30),
      contentPadding: EdgeInsets.symmetric(vertical: 8),
    );
  }
}

class KeyFeature extends StatelessWidget {
  final String number;
  final String iconUrl;
  final String title;
  final String description;

  KeyFeature({
    required this.number,
    required this.iconUrl,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.blue.shade100,
        child: Text(number, style: TextStyle(color: Colors.blue.shade900, fontWeight: FontWeight.bold)),
      ),
      title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text(description),
      trailing: Image.network(iconUrl, width: 30, height: 30),
      contentPadding: EdgeInsets.symmetric(vertical: 8),
    );
  }
}
