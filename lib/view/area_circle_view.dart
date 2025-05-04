import 'dart:math';

import 'package:flutter/material.dart';

class AreaCircleView extends StatefulWidget {
  const AreaCircleView({super.key});

  @override
  State<AreaCircleView> createState() => _AreaCircleViewState();
}

class _AreaCircleViewState extends State<AreaCircleView> {
  double radius = 0;
  double area = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Area of Circle")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(labelText: "Enter the radius"),
              keyboardType: TextInputType.number,
              onChanged: (value) => radius = double.tryParse(value) ?? 0,
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  area = pi * radius * radius;
                });
              },
              child: Text("Calculate Area"),
            ),
            SizedBox(height: 16),
            Text("Area = ${area.toStringAsFixed(2)}"),
          ],
        ),
      ),
    );
  }
}
