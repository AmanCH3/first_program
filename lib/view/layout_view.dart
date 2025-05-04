import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LayoutView extends StatelessWidget {
  const LayoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 50.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buildColumn(Icons.call, "Call", iconColor: Colors.black),
            buildColumn(Icons.near_me, "Route"),
            buildColumn(Icons.share, "Share"),
          ],
        ),
      ),
    );
  }
}

Widget buildColumn(IconData icon, String label, {Color iconColor = Colors.teal}) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      Icon(icon, color: iconColor),
      const SizedBox(height: 8),
      Container(
        // This ensures all containers have the same constraints
        constraints: const BoxConstraints(minWidth: 40),
        child: Text(
          label,
          textAlign: TextAlign.center, // Center text for better alignment
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: Colors.red,
          ),
        ),
      ),
    ],
  );
}