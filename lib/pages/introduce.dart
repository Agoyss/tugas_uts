import 'package:flutter/material.dart';
import 'package:hello_flutter/main.dart';

class intro extends StatelessWidget {
  const intro({super.key});

  final double horizontalPadding = 40;
  final double verticalPadding = 25;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: horizontalPadding, vertical: verticalPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            Image.asset(
              'lib/icons/stationery.png',
              scale: 7,
            ),
            const SizedBox(height: 20),
            const Text(
              "Apa itu ALat Tulis Ku",
              style: TextStyle(fontSize: 35),
            ),
            const SizedBox(height: 30),
            const Text(
              "Alat Tulis Ku adalah aplikasi pengenalan alat-alat tulis yang diperlukan pada saat bersekolah",
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      )),
    );
  }
}
