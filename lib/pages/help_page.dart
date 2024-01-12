import 'package:flutter/material.dart';
import 'package:scholarlink_app/pages/home_page.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomePage(),
              ),
            );
          },
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text(
          'Help & Support',
          style: TextStyle(
              fontSize: 27,
              fontWeight: FontWeight.w900,
              fontFamily: 'Neue Haas Grotesk Display Pro'),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Welcome to ScholarLink!',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Getting Started',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'ScholarLink is your go-to platform for academic networking and collaboration. Follow these steps to get started:',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              '1. Create an Account: Sign up and create your ScholarLink account to access all features.',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            Text(
              '2. Explore Features: Discover events, connect with peers, and stay updated with academic news.',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            Text(
              '3. Edit Profile: Complete your profile with your academic details and interests.',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'FAQs',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            ListTile(
              title: Text('How do I reset my password?'),
              subtitle: Text(
                  'You can reset your password by selecting the "Forgot Password" option on the login screen.'),
            ),
            ListTile(
              title: Text('Can I delete my account?'),
              subtitle:
                  Text('Yes, you can delete your account in the app settings.'),
            ),
            ListTile(
              title: Text('How can I report an issue?'),
              subtitle: Text(
                  'To report any issues, please contact our support team at support@scholarlink.com.'),
            ),
            SizedBox(height: 20.0),
            Text(
              'Contact Us',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'For further assistance, please email us at support@scholarlink.com or visit our website: https://www.scholarlink.com',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
