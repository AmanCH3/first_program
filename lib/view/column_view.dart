import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ColumnView extends StatelessWidget {
  const ColumnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color:  Colors.greenAccent,
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Icon(Icons.star , size: 50)  ,
            Icon(Icons.star , size: 50)  ,
            Spacer() ,
            Icon(Icons.star , size: 50)  ,

          ],
        ),

      )
    ) ;
  }
}
