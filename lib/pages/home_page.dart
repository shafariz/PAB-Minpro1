import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../model/buku.dart';
import 'tambah_buku_page.dart';
import 'edit_buku_page.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Buku> daftarBuku = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // 🔥 HEADER CUSTOM (tidak kaku lagi)
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(top: 40, bottom: 40),
            decoration: BoxDecoration(
              color: Color(0xFF8F8395), // purple ash
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(55),
                bottomRight: Radius.circular(55),
              ),
            ),
            child: Column(
              children: [
                Text(
                  "My Favorite Books",
                  style: GoogleFonts.playfairDisplay(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  "Keep your best reads in one place ⸜(｡˃ ᵕ ˂ )⸝♡",
                  style: GoogleFonts.poppins(
                    color: Colors.white70,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 20),

          // 🔥 LIST AREA
          Expanded(
            child: daftarBuku.isEmpty
                ? Center(
                    child: Text(
                      "No favorite books yet.\nTap + to add.",
                      textAlign: TextAlign.center,
                    ),
                  )
                : ListView.builder(
                    itemCount: daftarBuku.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          elevation: 5,
                          child: ListTile(
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            title: Text(
                              daftarBuku[index].judul,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text(
                              "${daftarBuku[index].penulis}\n"
                              "Year: ${daftarBuku[index].tahun} | "
                              "Pages: ${daftarBuku[index].totalHalaman}",
                            ),
                            isThreeLine: true,
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                IconButton(
                                  icon: Icon(Icons.edit),
                                  onPressed: () async {
                                    final result = await Get.to(
                                      () =>
                                          EditBukuPage(buku: daftarBuku[index]),
                                    );

                                    if (result != null) {
                                      setState(() {
                                        daftarBuku[index] = result;
                                      });
                                    }
                                  },
                                ),
                                IconButton(
                                  icon: Icon(Icons.delete),
                                  onPressed: () {
                                    setState(() {
                                      daftarBuku.removeAt(index);
                                    });
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
          ),
        ],
      ),

      // 🔥 Tombol + Bulat & Lebih Modern
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        backgroundColor: Color(0xFF8F8395),
        onPressed: () async {
          final result = await Get.to(() => TambahBukuPage());

          if (result != null) {
            setState(() {
              daftarBuku.add(result);
            });
          }
        },
        child: Icon(Icons.add, size: 28),
      ),
    );
  }
}
