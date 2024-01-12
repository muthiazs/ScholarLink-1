import 'package:flutter/material.dart';
import 'home_page.dart';

class ConfirmationPage extends StatelessWidget {
  const ConfirmationPage({Key? key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

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
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/image/confirmation.png",
              width: 140,
              height: 120,
            ),
            SizedBox(
              width: screenWidth * 0.8,
              child: const Text(
                'Congratulation!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontFamily: 'Neue Haas Grotesk Display Pro',
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            const SizedBox(height: 4),
            SizedBox(
              width: screenWidth * 0.58,
              child: const Text(
                'Your scholarship application has been submitted successfully',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'Neue Haas Grotesk Display Pro',
                ),
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
