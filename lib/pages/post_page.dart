import 'package:flutter/material.dart';
import 'package:scholarlink_app/pages/home_page.dart';
import 'package:scholarlink_app/pages/mynetwork_page.dart';
import 'package:scholarlink_app/pages/notification_page.dart';
import 'package:scholarlink_app/pages/scholarship_page.dart';

class PostPage extends StatefulWidget {
  const PostPage({super.key});

  @override
  PostPageState createState() => PostPageState();
}

class PostPageState extends State<PostPage> {
  int _currentIndex = 2;
  @override
  void initState() {
    super.initState();
  }

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
          icon: const Icon(Icons.close),
        ),
        title: const Text(
          'Post',
          style: TextStyle(
            fontSize: 27,
            fontWeight: FontWeight.w900,
            fontFamily: 'Neue Haas Grotesk Display Pro',
          ),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 41, 142, 130),
              ),
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                );
              },
              child: const Text(
                'Post',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.fromLTRB(15, 15, 8, 8),
            child: TextField(
              keyboardType: TextInputType.multiline,
              maxLines: 4,
              decoration: InputDecoration(
                hintText: "Write something here...",
                fillColor: Colors.grey.shade200,
                filled: true,
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 4,
                    color: Color.fromARGB(255, 41, 142, 130),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(
            () {
              _currentIndex = index;
              // Add logic to handle navigation based on index
              switch (index) {
                case 0:
                  // Navigasi ke halaman Home
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ),
                  );
                  break;
                case 1:
                  // Navigasi ke halaman MyNetwork
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MyNetworkPage(),
                    ),
                  );
                  break;
                case 2:
                  // Navigasi ke halaman Plus
                  break;
                case 3:
                  // Navigasi ke halaman Notifikasi
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const NotificationPage(),
                    ),
                  );
                  break;
                case 4:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ScholarshipPage(),
                    ),
                  );
                  break;
              }
            },
          );
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
            backgroundColor: Color.fromARGB(255, 41, 142, 130),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            label: 'Network',
            backgroundColor: Color.fromARGB(255, 41, 142, 130),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Post',
            backgroundColor: Color.fromARGB(255, 41, 142, 130),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notification',
            backgroundColor: Color.fromARGB(255, 41, 142, 130),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Scholarships',
            backgroundColor: Color.fromARGB(255, 41, 142, 130),
          ),
        ],
      ),
    );
  }
}
