import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../model/buku.dart';

class EditBukuPage extends StatelessWidget {
  final Buku buku;

  EditBukuPage({required this.buku});

  @override
  Widget build(BuildContext context) {
    final judulController = TextEditingController(text: buku.judul);
    final penulisController = TextEditingController(text: buku.penulis);
    final tahunController = TextEditingController(text: buku.tahun);
    final halamanController = TextEditingController(text: buku.totalHalaman);

    return Scaffold(
      appBar: AppBar(title: Text("Edit Book")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
                controller: judulController,
                decoration: InputDecoration(labelText: "Book Title")),
            TextField(
                controller: penulisController,
                decoration: InputDecoration(labelText: "Author")),
            TextField(
                controller: tahunController,
                decoration: InputDecoration(labelText: "Year")),
            TextField(
                controller: halamanController,
                decoration: InputDecoration(labelText: "Total Pages")),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Buku updatedBook = Buku(
                  judul: judulController.text,
                  penulis: penulisController.text,
                  tahun: tahunController.text,
                  totalHalaman: halamanController.text,
                );

                Get.back(result: updatedBook);
              },
              child: Text("Update"),
            )
          ],
        ),
      ),
    );
  }
}
