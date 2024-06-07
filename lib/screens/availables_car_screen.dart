import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:boutoratakpa_cc_project/data.dart';
import 'package:boutoratakpa_cc_project/car_widget.dart';

class AvailablesCarScreen extends StatelessWidget {
  const AvailablesCarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                    border: Border.all(
                      color: const Color.fromARGB(255, 161, 151, 151),
                      width: 1,
                    ),
                  ),
                  child: Icon(
                    Icons.keyboard_arrow_left_rounded,
                    color: Color.fromARGB(255, 8, 29, 224),
                    size: 28,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Availables Cars (" + getCarList().length.toString() + ")",
                style: TextStyle(
                  fontSize: 33,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Expanded(
                child: SingleChildScrollView(
                  child: GridView.count(
                    physics: BouncingScrollPhysics(),
                    childAspectRatio: 1 / 1.55,
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    children: getCarList().map((item) {
                      return BuildCar(item, 0);
                    }).toList(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}