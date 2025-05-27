import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StackImageView extends StatefulWidget {
  const StackImageView({super.key});

  @override
  State<StackImageView> createState() => _StackImageViewState();
}

class _StackImageViewState extends State<StackImageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child:
          Stack(
        children: [
          Center(
            child: Image.network(
              "https://i.pinimg.com/originals/8a/4a/dc/8a4adc903a955f95e52509df0882ca50.jpg",
              height: 400,
              width: 400,
            ),
          ) ,
          Positioned(
            top: 250,
              right: 100,

              child: Icon(Icons.edit ,color: Colors.blue
          )) ,
          Positioned(
            bottom: 250,
              left: 100,
              child: Icon(Icons.thumb_down , color: Colors.blue,)) ,
          Positioned(
            bottom: 250,
              left: 150,
              child: Icon(Icons.message , color: Colors.amber,))
        ],
      )),
    ) ;
  }
}
