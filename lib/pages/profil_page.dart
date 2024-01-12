import 'package:flutter/material.dart';
import 'package:scholarlink_app/pages/home_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

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
          'Profil',
          style: TextStyle(
              fontSize: 27,
              fontWeight: FontWeight.w900,
              fontFamily: 'Neue Haas Grotesk Display Pro'),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildProfileInfo(),
            buildAboutMe(),
            buildEducation(),
            buildSkills(),
            buildExperience(),
          ],
        ),
      ),
    );
  }

  Widget buildProfileInfo() {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Row(
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage:
                AssetImage('assets/image/profil.png'), // Menggunakan AssetImage
          ),
          SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Salma Fadhila',
                style: TextStyle(
                    fontSize: 27,
                    fontWeight: FontWeight.w900,
                    fontFamily: 'Neue Haas Grotesk Display Pro'),
              ),
              Text(
                'Student at Indonesia University',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              Text(
                'Location: Depok , Indonesia',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildAboutMe() {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'About Me',
            style: TextStyle(
              fontSize: 20,
              fontFamily: 'Neue Haas Grotesk Display Pro',
              fontWeight: FontWeight.w900,
            ),
          ),
          SizedBox(height: 8),
          Text(
            'I am a second-year computer science student at Indonesia University with a passion for UI/UX design.'
            'I am always looking for new ways to use technology to create intuitive and user-friendly experiences.'
            'In my previous coursework, I have learned the fundamentals of computer science, including data structures, algorithms, and software engineering.'
            'I have also taken courses in UI/UX design, where I have learned about user-centered design, usability testing, and visual design.',
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildSkills() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Skills',
            style: TextStyle(
              fontSize: 20,
              fontFamily: 'Neue Haas Grotesk Display Pro',
              fontWeight: FontWeight.w900,
            ),
          ),
          const SizedBox(height: 8),
          Wrap(
            spacing: 8.0,
            children: [
              buildSkillChip('Teamwork'),
              buildSkillChip('Leadership'),
              buildSkillChip('Time Management'),
              buildSkillChip('Public Speaking'),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildSkillChip(String skill) {
    return Chip(
      label: Text(skill),
    );
  }

  Widget buildEducation() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Education',
            style: TextStyle(
              fontSize: 20,
              fontFamily: 'Neue Haas Grotesk Display Pro',
              fontWeight: FontWeight.w900,
            ),
          ),
          const SizedBox(height: 8),
          buildExperienceItem(
              'Indonesia University', 'Computer Science', '2022 - Present'),
          buildExperienceItem('SMA N 3 Semarang', 'Science', '2019-2022'),
          buildExperienceItem('SMP N 1 Semarang', 'General', '2016-2019'),
        ],
      ),
    );
  }

  Widget buildEducationItem(String title, String company, String date) {
    return ListTile(
      title: Text(title),
      subtitle: Text('$company • $date'),
    );
  }
}

Widget buildSkillChip(String skill) {
  return Chip(
    label: Text(skill),
  );
}

Widget buildExperience() {
  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Experience',
          style: TextStyle(
            fontSize: 20,
            fontFamily: 'Neue Haas Grotesk Display Pro',
            fontWeight: FontWeight.w900,
          ),
        ),
        const SizedBox(height: 8),
        buildExperienceItem(
            'Staff Kesma BEM FISIP ', 'UI', 'Jan 2022 - Present'),
        buildExperienceItem(
            'Juara 2 UI/UX Design Competition', 'Anforcom', 'May 2023'),
        buildExperienceItem('Juara 3 UI/UX Design Competition',
            'Binus Competition Tech', 'January 2023'),
      ],
    ),
  );
}

Widget buildExperienceItem(String title, String company, String date) {
  return ListTile(
    title: Text(title),
    subtitle: Text('$company • $date'),
  );
}
