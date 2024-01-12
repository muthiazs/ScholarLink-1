// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:scholarlink_app/pages/about_page.dart';
import 'package:scholarlink_app/pages/help_page.dart';
import 'package:scholarlink_app/pages/notification_page.dart';
import 'package:scholarlink_app/pages/post_page.dart';
import 'package:scholarlink_app/pages/profil_page.dart';
import 'package:scholarlink_app/pages/scholarship_page.dart';
import 'package:scholarlink_app/pages/mynetwork_page.dart';
import 'package:scholarlink_app/pages/setting_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search...',
                filled: true,
                fillColor: Color.fromARGB(255, 218, 218, 218),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                prefixIcon: IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {},
                ),
              ),
            ),
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: screenWidth * 0.1,
                    backgroundImage: const AssetImage(
                      'assets/image/profil.png',
                    ),
                  ),
                  SizedBox(width: screenWidth * 0.02),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Salma Fadhila',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                          fontFamily: 'Neue Haas Grotesk Display Pro',
                        ),
                      ),
                      Text(
                        'Student at Indonesia University',
                        style: TextStyle(
                          fontSize: screenWidth * 0.03,
                          color: Colors.grey,
                          fontFamily: 'Neue Haas Grotesk Display Pro',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.person_pin),
              title: Text(
                'Profile',
                style: TextStyle(
                  fontFamily: 'Neue Haas Grotesk Display Pro',
                  fontWeight: FontWeight.w900,
                  fontSize: 20,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProfilePage(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text(
                'Settings',
                style: TextStyle(
                  fontFamily: 'Neue Haas Grotesk Display Pro',
                  fontWeight: FontWeight.w900,
                  fontSize: 20,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SettingPage(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.info_outline),
              title: Text(
                'About',
                style: TextStyle(
                  fontFamily: 'Neue Haas Grotesk Display Pro',
                  fontWeight: FontWeight.w900,
                  fontSize: 20,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AboutPage(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.help_center_outlined),
              title: Text(
                'Help',
                style: TextStyle(
                  fontFamily: 'Neue Haas Grotesk Display Pro',
                  fontWeight: FontWeight.w900,
                  fontSize: 20,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HelpPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            buildPostCard(
              'Tiara Andini',
              'AI4Impact CS 3.0 Awardee | Informatics Diponegoro University',
              'Hi everyone! Out of more than 15,000 AI4Impact 3.0 Career Scholarship participants, only the best 10 awardee were selected for internships at Terra AI. As one of the interns, the new experience and knowledge I gained was : -Smojo programming language\n-Linux operating system\n-Metaprogramming\n-Server Design',
              'assets/image/tiara.png',
            ),
            buildPostCard(
              'Bank Indonesia',
              'Banking Scholarship',
              'PENDAFTARAN BEASISWA GENBI DIBUKA!!! \n\nAyo segera daftarkan dirimu sekarang , buka bagian menu scholarship dan cari GENBI SCHOLARSHIP,\nsetelah itu pilih dan apply langsung dari scholarlink. \n\n Semuanya lebih mudah dengan ScholarLink :)',
              'assets/image/BI.png',
            ),
            buildPostCard(
                'PT. BCA',
                'Banking Scholarship',
                'BCA Bakti Scholarship for the Future-Ready Generation is BCA\'s commitment not only to customers but also to all stakeholders.\n\nBCA contributes to empowering society and sustainable development in the field of education through the provision of BCA Bakti Scholarships.\n\nThis scholarship is intended for the #GenerasiPastiBisa Indonesia who have the spirit to build the nation and become future leaders.',
                'assets/image/bca.png'),
            buildPostCard(
                'Aidan Scorpio ',
                'LPDP Awardee | Harvard Medical School 2021',
                'Hi everyone! I\'m planning to host a mentoring session on Zoom for anyone interested in learning more about the LPDP scholarship or medical school in general. The session will be held on January 10, 2023, at 10:00 AM WIB.',
                'assets/image/mirza.png'),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(
            () {
              _currentIndex = index;
              switch (index) {
                case 0:
                  // Navigate to Home
                  break;
                case 1:
                  // Navigate to Network
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyNetworkPage(),
                    ),
                  );
                  break;
                case 2:
                  // Navigate to Post
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PostPage(),
                    ),
                  );
                  break;
                case 3:
                  // Navigate to Notifications
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NotificationPage(),
                    ),
                  );
                  break;
                case 4:
                  // Navigate to Scholarships
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ScholarshipPage(),
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
            label: 'Notifications',
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

  Widget buildPostCard(String name, String title, String content, String img) {
    return Card(
      margin: EdgeInsets.all(6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          ListTile(
            title: Row(
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
                  style: TextStyle(
                      fontFamily: 'Neue Haas Grotesk Display Pro',
                      fontSize: 18,
                      fontWeight: FontWeight.w800),
                ),
              ],
            ),
            subtitle: Text(
              title,
              style: TextStyle(
                  fontFamily: 'Neue Haas Grotesk Display Pro',
                  fontSize: 16,
                  color: Colors.grey),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              content,
              style: TextStyle(
                fontFamily: 'Neue Haas Grotesk Display Pro',
                fontSize: 15,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: const [
                Row(
                  children: [
                    Icon(
                      Icons.favorite,
                      color: Colors.redAccent,
                    ),
                    SizedBox(
                      width: 160,
                    ),
                    Icon(
                      Icons.chat_bubble_outline_outlined,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 140,
                    ),
                    Icon(
                      Icons.share,
                      color: Colors.black,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
