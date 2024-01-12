import 'package:flutter/material.dart';
import 'package:scholarlink_app/pages/form_page.dart';
import 'package:scholarlink_app/pages/scholarship_page.dart';

class ScholarshipDetailPage extends StatelessWidget {
  final String title;
  final String description;

  const ScholarshipDetailPage(this.title, this.description, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ScholarshipPage(),
              ),
            );
          },
          icon: const Icon(Icons.arrow_back),
        ),
        title: Text(
          title,
          style: const TextStyle(
            fontSize: 27,
            fontWeight: FontWeight.w900,
            fontFamily: 'Neue Haas Grotesk Display Pro',
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 16),
            Text(description),
            const SizedBox(height: 24),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  const Color.fromARGB(255, 41, 142, 130),
                ),
              ),
              onPressed: () {
                // Navigasi ke halaman FormPage
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FormPage(),
                  ),
                );
              },
              child: const Text(
                'Apply',
                style: TextStyle(
                  color: Colors.white,
                  backgroundColor: Color.fromARGB(255, 41, 142, 130),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
