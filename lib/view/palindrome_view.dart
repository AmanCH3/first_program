import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PalindromeView extends StatefulWidget {
  const PalindromeView({super.key});

  @override
  State<PalindromeView> createState() => _PalindromeViewState();
}

class _PalindromeViewState extends State<PalindromeView> {
  String input = "";
  String result = "";

  bool isPalindrome(String text) {
    String clean = text.replaceAll(RegExp(r'\s+'), '').toLowerCase();
    return clean == clean.split('').reversed.join('');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Palindrome Checker")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(labelText: "Enter text"),
              onChanged: (value) => input = value,
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  result =
                      isPalindrome(input)
                          ? "It is a Palindrome"
                          : "Not a Palindrome";
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
