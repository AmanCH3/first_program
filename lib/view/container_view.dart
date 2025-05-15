import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContainerView extends StatefulWidget {
  const ContainerView({super.key});

  @override
  State<ContainerView> createState() => _ContainerViewState();
}

class _ContainerViewState extends State<ContainerView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent ,
      body:  SafeArea(
        child:  Container(width:  double.infinity, height:  double.infinity,
          alignment:  Alignment.centerRight ,

          child:  const Text("I  am a container"),
          decoration:  BoxDecoration(
          color: Colors.amberAccent,
            shape:  BoxShape.circle,

            border:  Border.all(
              color:  Colors.black ,
              width:  2
            )

          ),
        ),
      ),
    ) ;
  }
}
