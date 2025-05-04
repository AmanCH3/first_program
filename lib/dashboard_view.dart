import 'package:first_program/view/area_circle_view.dart';
import 'package:first_program/view/armstrong_view.dart';
import 'package:first_program/view/palindrome_view.dart';
import 'package:first_program/view/si_view.dart';
import 'package:flutter/material.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SiView()),
                );
              },
              child: Text("Simple Interest"),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AreaCircleView()),
                );
              },
              child: Text("Area of Circle"),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PalindromeView()),
                );
              },
              child: Text("Palindrome"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ArmstrongView()),
                );
              },
              child: Text("Armstrong Number"),
            ),
          ],
        ),
      ),
    );
  }
}
