import 'package:flutter/material.dart';
import 'package:uts_pemob/presentation/controllers/home_controller.dart';
import 'base_page.dart';

class PetaInteraktifPage extends StatelessWidget {
  final HomeController controller;

  PetaInteraktifPage(this.controller);

  @override
  Widget build(BuildContext context) {
    return BasePage(
      bodyContent: Center(
        child: Stack(
          children: [
            Positioned.fill(
              child: InteractiveViewer(
                panEnabled: true,
                boundaryMargin: EdgeInsets.all(10),
                minScale: 0.1,
                maxScale: 4.0,
                child: Image.asset(
                  'assets/images/peta.webp',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 16,
              left: 16,
              child: Container(
                padding: EdgeInsets.all(8),
                color: Colors.white,
                child: Text(
                  'Peta Interaktif Desa',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Color.fromARGB(123, 9, 1, 44)),
                ),
              ),
            ),
            Positioned(
              bottom: 32,
              left: 16,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(8),
                    color: Colors.white,
                    child: Text(
                      'Lokasi Desa: -6.200000, 106.816666',
                      style: TextStyle(fontSize: 12, color: Color.fromARGB(123, 9, 1, 44)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      selectedIndex: 0,
      controller: controller,
    );
  }
}
