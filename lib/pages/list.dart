import 'package:flutter/material.dart';

class list extends StatelessWidget {
  final double horizontalPadding = 40;
  final double verticalPadding = 25;

  final List AlatAlat = [
    "Spidol",
    "Tipp-Ex",
    "Stabilo",
    "Sticky Note",
    "Kolase Tape",
    "Penggaris",
    "Jangka",
    "Stapler",
    "Tempat Pensil",
    "Kalkulator",
    "Note Book",
    "Pembatas buku"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Pengenalan alat tulis",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                Text(
                  "Sekolah",
                  style: TextStyle(fontSize: 50),
                ),
              ],
            ),
          ),
          // pembatas
          const SizedBox(height: 20),
          // macam macam alat tulis
          Padding(
            padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
            child: const Text(
                "Terdapat banyak lagi macam-macam alat tulis yaitu :",
                style: TextStyle(
                  fontSize: 15,
                )),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: ListView.builder(
              itemBuilder: ((context, index) {
                return Card(
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Text(
                      AlatAlat[index],
                      style: const TextStyle(fontSize: 15),
                    ),
                  ),
                );
              }),
              itemCount: AlatAlat.length,
            ),
          ))
        ],
      )),
    );
  }
}
