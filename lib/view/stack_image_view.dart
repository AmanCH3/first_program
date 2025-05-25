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

         child:  Stack(
           clipBehavior: Clip.none,
           children: [
             Container(
               height: 400,
               width: double.infinity,
               child: Icon(Icons.account_balance_wallet),
             )
           ],
         ),
        // child:   Image.asset('assets/image/a.jpg', fit: BoxFit.cover) ,






      ),

    ) ;
  }
}
