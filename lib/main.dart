import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'pages/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Color purpleAsh = Color(0xFF8F8395);
  final Color vanilla = Color(0xFFF3E5AB);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Favorite Books',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFF3E5AB), // vanilla
        textTheme: GoogleFonts.poppinsTextTheme(),
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFF8F8395), // purple ash
          centerTitle: true,
          elevation: 0,
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Color(0xFF8F8395),
          shape: CircleBorder(),
        ),
      ),
      home: HomePage(),
    );
  }
}
