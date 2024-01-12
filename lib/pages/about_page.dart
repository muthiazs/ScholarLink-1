import 'package:flutter/material.dart';
import 'package:scholarlink_app/pages/home_page.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

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
          'About App',
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
              'MyApp',
              style: TextStyle(
                fontSize: 24.0,
                fontFamily: 'Neue Haas Grotesk Display Pro',
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Version 1.0.0',
              style: TextStyle(
                fontSize: 18.0,
                fontFamily: 'Neue Haas Grotesk Display Pro',
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Description',
              style: TextStyle(
                fontSize: 20.0,
                fontFamily: 'Neue Haas Grotesk Display Pro',
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'ScholarLink is an application that makes it easier for students to find scholarships that suit their goals and get complete and reliable sources and information. Scholarship seekers will be able to search for scholarships, register for scholarships, view registration status, interact with the community. Meanwhile, scholarship providers can later create scholarship programs, screen scholarship applicants, provide feedback to scholarship applicants and interact with the community. The hope is that with the ease of using this platform, scholarship seekers can easily search, compare and register for existing scholarships. Scholarship providers can also find and filter the best applicants on this platform.',
              style: TextStyle(
                fontFamily: 'Neue Haas Grotesk Display Pro',
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Contact Us',
              style: TextStyle(
                fontFamily: 'Neue Haas Grotesk Display Pro',
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Email: info@ScholarLink.com',
              style: TextStyle(
                fontFamily: 'Neue Haas Grotesk Display Pro',
                fontSize: 16.0,
              ),
            ),
            Text(
              'Website: https://www.ScholarLink.com',
              style: TextStyle(
                fontFamily: 'Neue Haas Grotesk Display Pro',
                fontSize: 16.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
