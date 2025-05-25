import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model/student.dart';

class OutputView extends StatelessWidget {
  const OutputView({super.key , required this.student});
  final Student student ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Student details"),),
      body: Padding(padding: EdgeInsets.all(16) ,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment:  CrossAxisAlignment.center,
            children: [
              Text("First name : ${student.fname} ") ,
              SizedBox(height: 18,) ,
              Text("Last Name :  ${student.lname}") ,
              SizedBox(height: 18,) ,
              Text("City : ${student.city} ") ,



            ],

      ),
      ),


    ) ;
  }
}
