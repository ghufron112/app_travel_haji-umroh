import 'package:flutter/material.dart';

class PanduanIbadahScreen extends StatelessWidget {
  const PanduanIbadahScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Panduan Ibadah',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color(0xFF00B894),
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFE8F5E9), Color(0xFFB2DFDB)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: const [
            SectionTitle(title: '🕋 Tata Cara Umrah'),
            InfoCard(
              title: '1. Niat Ihram Umrah',
              arab: 'لَبَّيْكَ اللَّهُمَّ عُمْرَةً',
              latin: "Labbaik Allahumma 'Umratan",
              terjemahan: 'Aku sambut panggilan-Mu untuk berumrah',
              penjelasan:
                  'Diucapkan di miqat ketika memulai ihram untuk umrah.',
            ),
            InfoCard(
              title: '2. Talbiyah',
              arab:
                  'لَبَّيْكَ اللَّهُمَّ لَبَّيْكَ، لَبَّيْكَ لَا شَرِيكَ لَكَ لَبَّيْكَ',
              latin:
                  "Labbaik Allahumma Labbaik, Labbaik la Sharika Laka Labbaik",
              terjemahan:
                  'Aku penuhi panggilan-Mu ya Allah, tiada sekutu bagi-Mu',
              penjelasan:
                  'Diucapkan berulang-ulang sepanjang perjalanan menuju Masjidil Haram.',
            ),
            InfoCard(
              title: '3. Tawaf',
              arab: 'بِسْمِ اللَّهِ وَاللَّهُ أَكْبَرُ',
              latin: "Bismillah Wallahu Akbar",
              terjemahan: 'Dengan nama Allah, Allah Maha Besar',
              penjelasan:
                  'Ucapkan saat memulai tawaf dan di setiap sudut Hajar Aswad.',
            ),
            InfoCard(
              title: '4. Sa’i',
              arab:
                  'رَبِّ اغْفِرْ وَارْحَمْ إِنَّكَ أَنْتَ الْأَعَزُّ الْأَكْرَمُ',
              latin: "Rabbighfir warham innaka antal a'azzul akram",
              terjemahan:
                  'Ya Allah ampunilah dan rahmatilah, sesungguhnya Engkau Yang Paling Mulia dan Terhormat',
              penjelasan:
                  'Doa ini dibaca saat melakukan sa’i di Safa dan Marwah.',
            ),
            Divider(height: 32),

            SectionTitle(title: '🕋 Tata Cara Haji'),
            InfoCard(
              title: '1. Niat Ihram Haji',
              arab: 'لَبَّيْكَ اللَّهُمَّ حَجًّا',
              latin: "Labbaik Allahumma Hajjan",
              terjemahan: 'Aku sambut panggilan-Mu untuk berhaji',
              penjelasan:
                  'Diucapkan di miqat sebagai permulaan ihram untuk haji.',
            ),
            InfoCard(
              title: '2. Wukuf di Arafah',
              arab:
                  'لا إِلَهَ إِلَّا اللَّهُ وَحْدَهُ لَا شَرِيكَ لَهُ لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ',
              latin:
                  "La ilaha illallahu wahdahu la sharika lah, lahul-mulku walahul-hamdu",
              terjemahan:
                  'Tiada Tuhan selain Allah, tiada sekutu bagi-Nya, milik-Nya segala kerajaan dan pujian',
              penjelasan:
                  'Doa ini dibaca saat wukuf di Arafah untuk memohon ampun dan rahmat Allah.',
            ),
            InfoCard(
              title: '3. Lempar Jumrah',
              arab:
                  'بِسْمِ اللَّهِ وَاللَّهُ أَكْبَرُ رَجْمًا لِلشَّيْطَانِ وَرِضًا لِلرَّحْمَنِ',
              latin:
                  "Bismillah Wallahu Akbar rajman lish-shaytan wa ridhan lir-rahman",
              terjemahan:
                  'Dengan nama Allah, Allah Maha Besar. Melempar sebagai penentang setan dan demi ridha Allah',
              penjelasan:
                  'Dibaca saat melontar Jumrah di Mina pada hari-hari Tasyrik.',
            ),
            InfoCard(
              title: '4. Tahallul',
              arab: 'اَللَّهُمَّ اجْعَلْهُ نُورًا وَطَهُورًا',
              latin: "Allahumma aj’alhu nuran wa tahuran",
              terjemahan:
                  'Ya Allah jadikan rambut ini bercahaya dan mensucikan',
              penjelasan:
                  'Doa saat memotong rambut sebagai tanda selesainya ibadah haji.',
            ),
          ],
        ),
      ),
    );
  }
}

// Widget untuk judul section
class SectionTitle extends StatelessWidget {
  final String title;
  const SectionTitle({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Color(0xFF005B63),
        ),
      ),
    );
  }
}

// Widget untuk setiap doa
class InfoCard extends StatelessWidget {
  final String title;
  final String arab;
  final String latin;
  final String terjemahan;
  final String penjelasan;

  const InfoCard({
    required this.title,
    required this.arab,
    required this.latin,
    required this.terjemahan,
    required this.penjelasan,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white.withOpacity(0.95),
      margin: const EdgeInsets.only(bottom: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: Color(0xFF00B894),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              arab,
              textAlign: TextAlign.right,
              style: const TextStyle(
                fontSize: 22,
                fontFamily: 'NotoNaskhArabic',
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              latin,
              style: const TextStyle(
                fontStyle: FontStyle.italic,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              '"$terjemahan"',
              style: const TextStyle(color: Colors.black54),
            ),
            const SizedBox(height: 8),
            Text(
              penjelasan,
              style: const TextStyle(color: Colors.black87, height: 1.4),
            ),
          ],
        ),
      ),
    );
  }
}
