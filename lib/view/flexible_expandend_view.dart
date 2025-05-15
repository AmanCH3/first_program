import 'package:first_program/common/my_snackbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FlexibleExpandendView extends StatelessWidget {
  const FlexibleExpandendView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(

        children: [
          Flexible(
            flex: 1,
            child: GestureDetector(
              onTap: () {
               showMySnackbar(context: context, content: "content 1 on tapped" ) ;
              },
              child: Container(height:  600 , width:  double.infinity , color:  Colors.blueAccent,alignment: Alignment.center,
                child:  const Text("1" ),
              
              ),
            ),
          ) ,

          Flexible(
            flex: 1,
            fit:  FlexFit.tight,
            child: GestureDetector(
              onTap: () {
              showMySnackbar(context: context, content: "Container 2 tapped" , color: Colors.red) ;
              },
              child: Container(
                height:  400 , width:  double.infinity , color:  Colors.green,  alignment:  Alignment.center,
                child:  const Text("2")
                ),
            ),
          )
        ],

      ),

    ) ;
  }
}
