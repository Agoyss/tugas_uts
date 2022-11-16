import 'package:flutter/material.dart';
import 'package:hello_flutter/util/alat_tulis_box.dart';

class grid extends StatefulWidget {
  const grid({super.key});

  @override
  State<grid> createState() => _gridState();
}

class _gridState extends State<grid> {
  // padding constant

  final double horizontalPadding = 40;
  final double verticalPadding = 25;

  // list alat tulis [icons,nama,]

  List AlatTulis = [
    ["Buku", "lib/icons/book.png"],
    ["Pulpen", "lib/icons/pen.png"],
    ["Peraut", "lib/icons/pencil-sharpener.png"],
    ["Pensil", "lib/icons/pencil.png"],
    ["Penghapus", "lib/icons/eraser.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          //custom app bar
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: horizontalPadding, vertical: verticalPadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // logo icon
                Image.asset(
                  'lib/icons/stationery.png',
                  height: 40,
                ),
                const Text(
                  "Alat Tulis ku",
                  style: TextStyle(fontSize: 18),
                )
              ],
            ),
          ),
          // pengenalan alat tulis
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
            child: const Text("Macam-macam alat tulis",
                style: TextStyle(
                  fontSize: 20,
                )),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: horizontalPadding, vertical: 5),
            child: const Divider(
              thickness: 1,
              color: Colors.black,
            ),
          ),
          //gridview
          Expanded(
              child: GridView.builder(
            itemCount: AlatTulis.length,
            padding: EdgeInsets.all(20),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1 / 1.3,
            ),
            itemBuilder: (context, index) {
              return AlatTulisBox(
                AlatTulisNama: AlatTulis[index][0],
                iconPath: AlatTulis[index][1],
              );
            },
          ))
        ]),
      ),
    );
  }
}
