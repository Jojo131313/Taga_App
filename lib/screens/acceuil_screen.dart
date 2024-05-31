import 'package:flutter/material.dart';
import 'package:boutoratakpa_cc_project/data.dart';
import 'package:google_fonts/google_fonts.dart';

class Acceuil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(238, 159, 94, 0.98),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 7,
        title: CircleAvatar(
          backgroundImage: AssetImage("assets/images/avatar.jpg"),
        ),
      ),
    );
  }
}
