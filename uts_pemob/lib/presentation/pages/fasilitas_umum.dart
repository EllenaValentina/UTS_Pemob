import 'package:flutter/material.dart';
import 'package:uts_pemob/presentation/controllers/home_controller.dart';
import 'base_page.dart';

class FasilitasUmumPage extends StatelessWidget {
  final HomeController controller;

  FasilitasUmumPage(this.controller);

  final List<Map<String, String>> fasilitasData = [
    {'nama': 'Sekolah Dasar Negeri 01', 'jenis': 'Pendidikan'},
    {'nama': 'Puskesmas Desa Sejahtera', 'jenis': 'Kesehatan'},
    {'nama': 'Pasar Tradisional Desa Maju', 'jenis': 'Perdagangan'},
    {'nama': 'Masjid Al-Hikmah', 'jenis': 'Keagamaan'},
    {'nama': 'Lapangan Olahraga Desa', 'jenis': 'Olahraga'},
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
              'Fasilitas Umum Desa',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: fasilitasData.length,
                itemBuilder: (context, index) {
                  return Card(
                    margin: EdgeInsets.all(8.0),
                    elevation: 4,
                    child: Container(
                      color: Colors.pink[50],
                      child: ListTile(
                        contentPadding: EdgeInsets.all(16.0),
                        title: Text(
                          fasilitasData[index]['nama']!,
                          style: TextStyle(color: Colors.blue[800]),
                        ),
                        subtitle: Text(
                          'Jenis: ${fasilitasData[index]['jenis']}',
                          style: TextStyle(color: Colors.black),
                        ),
                        onTap: () {

                        },
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 16),

            Text(
              'Total Fasilitas: ${fasilitasData.length} Lokasi',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black, 
              ),
            ),
          ],
        ),
      ),
      selectedIndex: 2, 
      controller: controller,
    );
  }
}
