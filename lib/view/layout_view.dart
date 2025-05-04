import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LayoutView extends StatelessWidget {
  const LayoutView({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body :Container(
        color:  Colors.black38,
        width:  double.infinity,

        child: Row(

          children: [
            Column(

              children: [
                // ElevatedButton.icon()
                Container(
                  //Text

                )
              ],

            ) ,

            Column(
              children: [
                //ElevatedButton.icon()

                Container(
                  //Text
                )
              ],


            ) ,
            Column(

              children: [
                //ElevatedButton.icon()

                Container(
                  //Text
                )
              ],

            )
          ],
        ),
      )
    ) ;
  }
}
