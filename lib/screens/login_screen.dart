import 'package:boutoratakpa_cc_project/consts.dart';
import 'package:boutoratakpa_cc_project/screens/acceuil_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // Future<void> _navigateToHome() async {
  //   Navigator.push(
  //     context,
  //     MaterialPageRoute(builder: (context) => Acceuil()),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: 500,
        height: double.maxFinite,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [o1, o2],
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(size.height * 0.030),
            child: Column(
              children: [
                Image.asset("assets/icons/login.png"),
                Text(
                  "Welcome",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 20, 14, 197),
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Login",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 35,
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: size.height * 0.024,
                ),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(fontSize: 16),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 20),
                    filled: true,
                    hintText: "Email",
                    prefixIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.email),
                    ),
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(37),
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.015,
                ),
                TextField(
                  obscureText: true,
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(fontSize: 16),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 20),
                    filled: true,
                    hintText: "Password",
                    prefixIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.key),
                    ),
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(37),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
