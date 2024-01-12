import 'package:flutter/material.dart';
import 'package:scholarlink_app/pages/home_page.dart';
import 'package:scholarlink_app/pages/mynetwork_page.dart';
import 'package:scholarlink_app/pages/post_page.dart';
import 'package:scholarlink_app/pages/scholarship_page.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  NotificationPageState createState() => NotificationPageState();
}

class NotificationPageState extends State<NotificationPage> {
  int _currentIndex = 3;
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
          'Notification',
          style: TextStyle(
            fontSize: 27,
            fontWeight: FontWeight.w900,
            fontFamily: 'Neue Haas Grotesk Display Pro',
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Today',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 30,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              notificationring(
                'Tiara Andini reposted your post',
                'I am very happy because I have successfully\nobtained a new certification: \nBasic Course - Preliminary Round Women\nInnovation 2023 UI/UX Design learning path \nfrom Markoding! And this is the result of the portfolio \nI made while participating.....',
                "assets/image/tiara.png",
              ),
              const SizedBox(
                height: 10,
              ),
              notificationring(
                'Sabrina Afifah liked your post',
                'I am very happy because I have successfully\nobtained a new certification: \nBasic Course - Preliminary Round Women\nInnovation 2023 UI/UX Design learning path \nfrom Markoding! And this is the result of the portfolio \nI made while participating.....',
                "assets/image/sabrina.png",
              ),
              const SizedBox(
                height: 10,
              ),
              notificationring(
                'Fuji Mayang liked your post',
                'I am very happy because I have successfully\nobtained a new certification: \nBasic Course - Preliminary Round Women\nInnovation 2023 UI/UX Design learning path \nfrom Markoding! And this is the result of the portfolio \nI made while participating.....',
                "assets/image/fuji.png",
              ),
              const SizedBox(
                height: 10,
              ),
              notificationring(
                'Emma Faishal reposted your post',
                'I am very happy because I have successfully\nobtained a new certification: \nBasic Course - Preliminary Round Women\nInnovation 2023 UI/UX Design learning path \nfrom Markoding! And this is the result of the portfolio \nI made while participating.....',
                "assets/image/emma.png",
              ),
              const SizedBox(
                height: 10,
              ),
              notificationring(
                'Mutia Xafiera',
                'I am very happy because I have successfully\nobtained a new certification: \nBasic Course - Preliminary Round Women\nInnovation 2023 UI/UX Design learning path \nfrom Markoding! And this is the result of the portfolio \nI made while participating.....',
                "assets/image/mutia.png",
              ),
              const Padding(
                padding: EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Yesterday',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 30,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              notificationring(
                'Mirza Fahmi liked your repost',
                "Hi everyone, I'm planning to host \na mentoring session on Zoom \nfor anyone who is interested in learning more \nabout the LPDP scholarship or medical school\nin general. The session will be held on\nJanuary 10, 2023, at.....",
                "assets/image/mirza.png",
              ),
            ],
          ),
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PostPage(),
                    ),
                  );
                  break;
                case 3:
                  // Navigasi ke halaman Notifikasi
                  break;
                case 4:
                  // Navigate to Scholarships
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

  Widget notificationring(String name, String title, String img) {
    return Card(
      child: Row(
        children: [
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(img),
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
              const SizedBox(
                height: 8,
              ),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 15,
                  color: Color.fromARGB(255, 105, 103, 103),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
