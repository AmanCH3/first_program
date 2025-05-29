import 'package:first_program/cubit/airthematic_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AirthematicView extends StatelessWidget {
  const AirthematicView({super.key});

  @override
  Widget build(BuildContext context) {
    final firstContoller = TextEditingController() ;
    final secondController = TextEditingController() ;
    final _formKey = GlobalKey<FormState>() ;

    return Scaffold(
      body: SafeArea(child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextFormField(
            controller: firstContoller,
            decoration: InputDecoration(
              labelText: "First number"
            ),

          ) ,
          SizedBox(height: 16,),
          TextFormField(
            controller: secondController,
            decoration: InputDecoration(
              labelText: "Second number"
            ),
          ),
          SizedBox(height: 20,),
          BlocBuilder<AirthmeticCubit , int>(builder: (context , state){
            return Text(
              '$state'  ,
              style: const TextStyle(
                fontSize: 48 ,
                fontWeight: FontWeight.bold
              ),

            ) ;
          }) ,
          ElevatedButton(onPressed: (){
            context.read<AirthmeticCubit>().add(int.parse(firstContoller.text), int.parse(secondController.text)) ;


          }, child: Text("Add")) ,


        ElevatedButton(onPressed: (){
          context.read<AirthmeticCubit>().division(int.parse(firstContoller.text), int.parse(secondController.text)) ;

        }, child: Text("Divison")) ,

        ElevatedButton(onPressed: (){
          context.read<AirthmeticCubit>().multiply(int.parse(firstContoller.text), int.parse(secondController.text)) ;

        }, child: Text("Multiply")) ,
          
          ElevatedButton(onPressed: (){
          context.read<AirthmeticCubit>().substract(int.parse(firstContoller.text), int.parse(secondController.text)) ;


          }, child: Text("Subtact"))

        ],



      )
      ),

    ) ;
  }
}
