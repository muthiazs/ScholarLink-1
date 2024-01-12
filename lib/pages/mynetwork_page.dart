import 'package:flutter/material.dart';
import 'package:scholarlink_app/pages/home_page.dart';
import 'package:scholarlink_app/pages/notification_page.dart';
import 'package:scholarlink_app/pages/post_page.dart';
import 'package:scholarlink_app/pages/scholarship_page.dart';

class MyNetworkPage extends StatefulWidget {
  const MyNetworkPage({super.key});

  @override
  _MyNetworkPageState createState() => _MyNetworkPageState();
}

class _MyNetworkPageState extends State<MyNetworkPage> {
  int _currentIndex = 1;
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
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text(
          'My Network',
          style: TextStyle(
              fontSize: 27,
              fontWeight: FontWeight.w900,
              fontFamily: 'Neue Haas Grotesk Display Pro'),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              _buildConnections(
                  'Tiara Andini',
                  'Student at Indonesia University',
                  'AI4Impact CS 3.0 Awardee',
                  'assets/image/tiara.png'),
              _buildConnections(
                  'Salma Febriana',
                  'Student at Diponegoro Universitu',
                  'Djarum Scholarship Awardee',
                  'assets/image/profil.png'),
              _buildConnections(
                  'Fuji Mayang',
                  'Student at Gajah Mada University',
                  'GENBI Awardee',
                  'assets/image/fuji.png'),
              _buildConnections(
                'Alam Prabowo',
                'Student at Harvard University',
                'LPDP Awardee',
                "assets/image/mirza.png",
              ),
              _buildConnections(
                'Gibran Baswedan',
                'Student at Durham University',
                'LPDP Awardee',
                "assets/image/mirza.png",
              ),
              _buildConnections(
                  'Gabriella Kaesang',
                  'Student at Indonesia University',
                  'AI4Impact CS 3.0 Awardee',
                  'assets/image/profil.png'),
              _buildConnections(
                  'Mutia Xafiera',
                  'Student at Indonesia University',
                  'AI4Impact CS 3.0 Awardee',
                  'assets/image/mutia.png'),
              _buildConnections(
                'Bagus Sucipto',
                'Student at Indonesia University',
                'AI4Impact CS 3.0 Awardee',
                "assets/image/mirza.png",
              ),
              _buildConnections(
                'Mirza Fahmi',
                'Student at Diponegoro Universitu',
                'Djarum Scholarship Awardee',
                "assets/image/mirza.png",
              ),
              _buildConnections(
                  'Alya Salma',
                  'Student at Gajah Mada University',
                  'GENBI Awardee',
                  'assets/image/profil.png'),
              _buildConnections(
                  'Tirza Aurellia',
                  'Student at Durham University',
                  'LPDP Awardee',
                  'assets/image/profil.png'),
              _buildConnections(
                  'Keisya Intan',
                  'Student at Indonesia University',
                  'AI4Impact CS 3.0 Awardee',
                  'assets/image/profil.png'),
              _buildConnections(
                  'Kamila Putri',
                  'Student at Indonesia University',
                  'AI4Impact CS 3.0 Awardee',
                  'assets/image/profil.png'),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
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
                break;
              case 2:
                // Navigasi ke halaman Plus
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PostPage(),
                  ),
                );
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
                // Navigasi ke halaman Scholarship
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ScholarshipPage(),
                  ),
                );
                break;
            }
          });
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

  Widget _buildConnections(
      String name, String title, String content, String img) {
    return Card(
      margin: const EdgeInsets.all(8),
      child: Row(
        children: [
          const SizedBox(width: 14),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundImage: AssetImage(img),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                      fontFamily: 'Neue Haas Grotesk Display Pro',
                    ),
                  ),
                ],
              ),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                ),
              ),
              Text(
                content,
                style: const TextStyle(
                  fontSize: 13,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
