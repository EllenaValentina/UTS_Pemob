import 'package:flutter/material.dart';
import 'package:uts_pemob/presentation/controllers/home_controller.dart';
import 'base_page.dart';

class LaporanMasyarakatPage extends StatelessWidget {
  final HomeController controller;

  LaporanMasyarakatPage(this.controller);

  final List<Map<String, String>> laporanData = [
    {'masalah': 'Jalan rusak di RT 03 RW 02, Desa Sejahtera.'},
    {'masalah': 'Sampah menumpuk di dekat Pasar Tradisional.'},
    {'masalah': 'Kebocoran pipa air di Dusun 1, Jalan Mawar.'},
    {'masalah': 'Lampu penerangan mati di Lapangan Olahraga.'},
    {'masalah': 'Pengairan sawah tersumbat di RT 01 RW 01.'},
  ];

  @override
  Widget build(BuildContext context) {
    return BasePage(
      bodyContent: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Laporan Masyarakat',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: laporanData.length,
                itemBuilder: (context, index) {
                  return Card(
                    margin: EdgeInsets.all(8.0),
                    elevation: 4,
                    color: Colors.pink[50],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ListTile(
                      contentPadding: EdgeInsets.all(16.0),
                      title: Text(
                        'Laporan ${index + 1}',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue[800],
                        ),
                      ),
                      subtitle: Text(
                        laporanData[index]['masalah']!,
                        style: TextStyle(color: Colors.black),
                      ),
                      isThreeLine: true,
                      onTap: () {
                      },
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Total Laporan: ${laporanData.length} Masalah',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
      selectedIndex: 3,
      controller: controller,
    );
  }
}
