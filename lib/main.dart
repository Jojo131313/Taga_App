import 'package:boutoratakpa_cc_project/screens/acceuil_screen.dart';
import 'package:boutoratakpa_cc_project/screens/login_screen.dart';
import 'package:boutoratakpa_cc_project/screens/start_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const TagaApp());
}

class TagaApp extends StatelessWidget {
  const TagaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      home: LoginScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
