import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neon_ui_design/screens/home_screen.dart';
import 'package:neon_ui_design/screens/onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Neon UI Design',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: GoogleFonts.openSans().fontFamily,
      ),
      home: const HomeScreen(),
    );
  }
}
