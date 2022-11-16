import 'package:flutter/material.dart';
import 'package:hello_flutter/main.dart';
import 'package:hello_flutter/pages/introduce.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'lib/icons/stationery.png',
              height: 250,
            ),
            const SizedBox(height: 30),
            const Text(
              "Alat tulis ku",
              style: TextStyle(fontSize: 55),
            ),
          ],
        ),
      ),
    );
  }
}
