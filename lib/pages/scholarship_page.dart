import 'package:flutter/material.dart';
import 'package:scholarlink_app/pages/home_page.dart';
import 'package:scholarlink_app/pages/mynetwork_page.dart';
import 'package:scholarlink_app/pages/notification_page.dart';
import 'package:scholarlink_app/pages/post_page.dart';
import 'package:scholarlink_app/pages/scholarship_detail_page.dart';

class ScholarshipPage extends StatefulWidget {
  const ScholarshipPage({super.key});

  @override
  _ScholarshipPageState createState() => _ScholarshipPageState();
}

class _ScholarshipPageState extends State<ScholarshipPage> {
  int _currentIndex = 4;
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
          'Scholarships',
          style: TextStyle(
            fontSize: 27,
            fontWeight: FontWeight.w900,
            fontFamily: 'Neue Haas Grotesk Display Pro',
          ),
        ),
      ),
      body: ListView(
        children: const [
          ScholarshipCard(
            'AI4Impact Career Scholarship',
            'Beasiswa ini adalah beasiswa yang diperuntukkan untuk meningkatkan softskill dan hardskill dari para awardee, sekaligus mendapatkan uang saku untuk satu semester dan juga pengalaman magang selama 6 bulan di perusahaan internasional. \n Persyaratan : \n1. IPK min 3.5 \n2.Semester 5 \n3. Pekerja keras \n Benefit: \n1.Magang di perusahaan asal singapura (Terra AI) selama 6 bulan \n2.Uang saku sebesar Rp 6000.000 .',
          ),
          ScholarshipCard(
            'Beasiswa Grow Indonesia',
            'Beasiswa ini adalah beasiswa yang diperuntukkan untuk meningkatkan softskill dari para awardee, sekaligus mendapatkan uang saku untuk satu semester. \n Persyaratan : \n1. IPK min 3.0 \n2.Semester 5 \n3. Pekerja keras \n Benefit: \n1.Course gratis \n2.Uang saku sebesar Rp 5000.000 .',
          ),
          ScholarshipCard(
            'Beasiswa Djarum',
            'Beasiswa ini adalah beasiswa yang diperuntukkan untuk meningkatkan softskill dari para awardee, sekaligus mendapatkan uang saku untuk satu semester. \n Persyaratan : \n1. IPK min 3.0 \n2.Semester 5 \n3. Pekerja keras \n Benefit: \n1.Course gratis \n2.Uang saku sebesar Rp 5000.000 .',
          ),
          ScholarshipCard(
            'Beasiswa Bank Indonesia',
            'Beasiswa ini adalah beasiswa yang diperuntukkan untuk meningkatkan softskill dari para awardee, sekaligus mendapatkan uang saku untuk satu semester. \n Persyaratan : \n1. IPK min 3.0 \n2.Semester 5 \n3. Pekerja keras \n Benefit: \n1.Course gratis \n2.Uang saku sebesar Rp 5000.000 .',
          ),
          ScholarshipCard(
            'Beasiswa Perempuan Indonesia',
            'Beasiswa ini adalah beasiswa yang diperuntukkan untuk meningkatkan softskill dari para awardee, sekaligus mendapatkan uang saku untuk satu semester. \n Persyaratan : \n1. IPK min 3.0 \n2.Semester 5 \n3. Pekerja keras \n Benefit: \n1.Course gratis \n2.Uang saku sebesar Rp 5000.000 .',
          ),
          ScholarshipCard(
            'Beasiswa Sahabat IT',
            'Beasiswa ini adalah beasiswa yang diperuntukkan untuk meningkatkan meningkatkan kemampuan ardskill untuk para mahasiswa IT,  sekaligus mendapatkan uang saku untuk satu semester. \n Persyaratan : \n1. IPK min 3.0 \n2.Semester 5 \n3. Pekerja keras \n Benefit: \n1.Course gratis \n2. Magang \n3.Uang saku sebesar Rp 10.000.000 .',
          ),
          ScholarshipCard(
            'Beasiswa YBM Brillian',
            'Beasiswa ini adalah beasiswa yang diperuntukkan untuk membantu mahasiswa yang kurang mampu, Mendapat uang saku selama 4 semester (2tahun). \n Persyaratan : \n1. IPK min 3.0 \n2.Semester 5 \n3. Pekerja keras \n4. surat keterangan tidak mampu \n Benefit: \n1.Mentoring \n2.Uang saku sebesar Rp 5000.000 per semester .',
          ),
          ScholarshipCard(
            'Beasiswa Unggulan',
            'Beasiswa ini adalah beasiswa yang diperuntukkan untuk membantu mahasiswa yang kurang mampu, Mendapat uang saku selama 4 semester (2tahun). \n Persyaratan : \n1. IPK min 3.0 \n2.Semester 5 \n3. Pekerja keras \n4. surat keterangan tidak mampu \n Benefit: \n1.Mentoring \n2.Uang saku sebesar Rp 5000.000 per semester .',
          ),
          ScholarshipCard(
            'Beasiswa Indonesia Maju',
            'Beasiswa ini adalah beasiswa yang diperuntukkan untuk membantu mahasiswa yang kurang mampu, Mendapat uang saku selama 4 semester (2tahun). \n Persyaratan : \n1. IPK min 3.0 \n2.Semester 5 \n3. Pekerja keras \n4. surat keterangan tidak mampu \n Benefit: \n1.Mentoring \n2.Uang saku sebesar Rp 5000.000 per semester .',
          ),
        ],
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const NotificationPage(),
                    ),
                  );
                  break;
                case 4:
                // Navigate to Scholarships
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

class ScholarshipCard extends StatelessWidget {
  final String title;
  final String description;

  const ScholarshipCard(this.title, this.description, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ScholarshipDetailPage(title, description),
            ),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 8),
              Text(description),
            ],
          ),
        ),
      ),
    );
  }
}
