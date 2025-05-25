import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StackView extends StatefulWidget {
  const StackView({super.key});

  @override
  State<StackView> createState() => _StackViewState();
}

class _StackViewState extends State<StackView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              height: 400,
              width: double.infinity,
              color: Colors.amber,
              child: const Text("I am first container"),
            ) ,
            Positioned(
              top: 1,
                right: 1,

                child: Container(
                  height: 100,
                  width:  100,
                  color: Colors.blue ,
                  child: const Text("I am second container"),
                ) ) ,
            Positioned(
              bottom: -20,
                right:  400 / 2  -50,
                child : Container(
                  height: 100,
                  width: 100,
                  color : Colors.green ,
                  child: const Text("I am third container"),

            ))
          ],

      )),

    ) ;
  }
}
