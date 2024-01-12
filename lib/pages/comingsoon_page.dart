import 'package:flutter/material.dart';
import 'home_page.dart';

class ComingSoonPage extends StatelessWidget {
  const ComingSoonPage({Key? key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/image/logo.png",
              width: screenWidth * 0.8,
              height: screenWidth * 0.8,
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: screenWidth * 0.8,
              child: const Text(
                'ScholarLink',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromARGB(255, 37, 212, 168),
                  fontSize: 30,
                  fontFamily: 'Neue Haas Grotesk Display Pro',
                  fontWeight: FontWeight.w900,
                  height: 0,
                ),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: screenWidth * 0.8,
              child: const Text(
                'Sorry this feature is currently under development...',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'Neue Haas Grotesk Display Pro',
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  const Color.fromARGB(255, 41, 142, 130),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                );
              },
              child: const Text(
                'Back Home',
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
