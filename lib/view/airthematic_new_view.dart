import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model/arithmetic_model.dart';

class AirthematicNewView extends StatefulWidget {
  const AirthematicNewView({super.key});

  @override
  State<AirthematicNewView> createState() => _AirthematicNewViewState();
}

class _AirthematicNewViewState extends State<AirthematicNewView> {
  final firstController = TextEditingController() ;
  final secondController = TextEditingController() ;
  String ? groupValue = 'add' ;
  int result = 0 ;


  void calculate(){
    final int first = int.tryParse(firstController.text) ?? 0 ;
    final int second = int.tryParse(secondController.text) ?? 0 ;

    final model = ArithematicModel(first : first , second:  second) ;

    setState(() {
      if (groupValue == 'add'){
        result = model.add() ;
      }
      else if (groupValue == 'sub'){
        result = model.sub() ;
       }
      else if (groupValue == 'mul'){
        result = model.mul() ;

      }
      else if (groupValue == 'div'){
        result = model.div().toInt() ;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Arithematic Calculator")),
      body: Padding(padding: const EdgeInsets.all(16.0) ,

          child:  Column(
          children: [
            SizedBox(
              height: 16,
            ) ,
            TextField(
              controller: firstController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: "Enter first number"),

            ) ,
            TextField(
              controller: secondController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: "Enter second number"),

            ) ,
            const SizedBox(height:  16) ,
            ListTile(
              title: const Text("Addition"),
              leading: Radio(value: 'add', groupValue: groupValue, onChanged: (value){
                setState(() {
                  groupValue = value! ;
                });
              }),
            ),
            ListTile(
              title:  const Text("Subtraction"),
              leading:  Radio(value: 'sub', groupValue: groupValue, onChanged: (value){
                setState(() {
                  groupValue = value! ;
                });
              }),
            ) ,
            ListTile(
              title:  const Text("Multiplication"),
              leading: Radio(value: "mul", groupValue: groupValue, onChanged: (value){
                setState(() {
                  groupValue = value! ;
                });
              }),
            ) ,

            ListTile(
              title: const Text("Division"),
              leading: Radio(value: "div", groupValue: groupValue, onChanged: (value){
                setState(() {
                  groupValue = value ;
                });
              }),
            ),


            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: (){
                calculate() ;
              }, child: Text("Calculate")),
            ),
            SizedBox(height: 8,) ,
            Text("Result : $result" , style: const TextStyle(fontSize: 24)) ,

        ],
      ),
      ) ,

    ) ;
  }
}
