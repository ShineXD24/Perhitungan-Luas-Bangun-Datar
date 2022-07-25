import 'package:flutter/material.dart';

class bangundtr extends StatefulWidget {
  const bangundtr({Key? key}) : super(key: key);

  @override
  State<bangundtr> createState() => _bangundtrState();
}

class _bangundtrState extends State<bangundtr> {
  int luaspersegipanjang = 0;
  void hitung() {
    setState(() {
      int x = int.parse(ctrsisi1.text);
      int y = int.parse(ctrsisi2.text);
      luaspersegipanjang = x * y;
    });
  }

  TextEditingController ctrsisi1 = TextEditingController();
  TextEditingController ctrsisi2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("bangun datar"),
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.all(20),
              child: const Text(
                " Menghitung Luas Persegi Panjang",
                style: TextStyle(fontSize: 20),
              ),
            ),
            TextField(
              keyboardType: TextInputType.number,
              controller: ctrsisi1,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Masukkan Sisi Pertama',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              keyboardType: TextInputType.number,
              controller: ctrsisi2,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Masukkan Sisi Kedua',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment:MainAxisAlignment.center ,
              children: [
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(20),
                  child: Text(luaspersegipanjang.toString()),
                ),

                ElevatedButton(
                  onPressed: hitung,
                  child: const Text("Hitung"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}