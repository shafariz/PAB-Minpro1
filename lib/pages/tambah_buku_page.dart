import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../model/buku.dart';

class TambahBukuPage extends StatelessWidget {
  final judulController = TextEditingController();
  final penulisController = TextEditingController();
  final tahunController = TextEditingController();
  final halamanController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Book"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: judulController,
              decoration: InputDecoration(labelText: "Book Title"),
            ),
            TextField(
              controller: penulisController,
              decoration: InputDecoration(labelText: "Author"),
            ),
            TextField(
              controller: tahunController,
              decoration: InputDecoration(labelText: "Year"),
            ),
            TextField(
              controller: halamanController,
              decoration: InputDecoration(labelText: "Total Pages"),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Buku bukuBaru = Buku(
                  judul: judulController.text,
                  penulis: penulisController.text,
                  tahun: tahunController.text,
                  totalHalaman: halamanController.text,
                );

                Get.back(result: bukuBaru);
              },
              child: Text("Save"),
            )
          ],
        ),
      ),
    );
  }
}
