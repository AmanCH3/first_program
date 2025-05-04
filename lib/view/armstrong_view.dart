import 'package:flutter/material.dart';

class ArmstrongView extends StatefulWidget {
  const ArmstrongView({super.key});

  @override
  State<ArmstrongView> createState() => _ArmstrongViewState();
}

class _ArmstrongViewState extends State<ArmstrongView> {
  int number = 0;
  String result = "";

  bool isArmstrong(int n) {
    int original = n;
    int sum = 0;
    int digits = n.toString().length;
    while (n > 0) {
      int digit = n % 10;
      sum += digit * digit * digit;
      n ~/= 10;
    }

    return sum == original;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Armstrong number")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(labelText: "Enter a number"),
              keyboardType: TextInputType.number,
              onChanged: (value) => number = int.tryParse(value) ?? 0,
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  result =
                      isArmstrong(number)
                          ? "Armstrong Number"
                          : "Not an Armstrong number";
                });
              },
              child: Text("Check"),
            ),
            SizedBox(height: 16),
            Text(result),
          ],
        ),
      ),
    );
  }
}
