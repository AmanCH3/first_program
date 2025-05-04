import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SiView extends StatefulWidget {
  const SiView({super.key});

  @override
  State<SiView> createState() => _SiViewState();
}

class _SiViewState extends State<SiView> {
  // int principle = 0;
  // int interest = 0;
  // int time = 0;

  final firstController = TextEditingController(text: "100") ;
  final secondController = TextEditingController(text: "10") ;
  final thirdController = TextEditingController(text: "11") ;

  double result = 0;

  final myKey = GlobalKey<FormState>() ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple Interest Calculation"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0) ,
        child: Form(
          key: myKey,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Enter the principle amount",
                border:  OutlineInputBorder(
                borderRadius: BorderRadius.circular(8) ,
                borderSide: BorderSide(color: Colors.blueAccent , width: 2))

                ),
                keyboardType: TextInputType.number,
                // onChanged: (value) {
                //   principle = int.parse(value);
                // },
                controller: firstController,
                validator: (value){
                  if(value == null || value.isEmpty){
                    return "Please enter a principle amount" ;

                  }
                    return null  ;
                },

              ),

              SizedBox(height: 8),
              TextFormField(
                decoration: InputDecoration(labelText: "Enter the Time" ,
                 border:  OutlineInputBorder(
                   borderRadius: BorderRadius.circular(8) ,
                   borderSide: BorderSide(color: Colors.blueAccent , width: 2)
                 )),
                keyboardType: TextInputType.number,
                // onChanged: (value) {
                //   time = int.parse(value);
                // },
                controller: secondController,
                validator: (value){
                  if(value == null || value.isEmpty){
                    return "Please enter a time" ;
                  }
                    return null ;
                },
              ),
              SizedBox(height: 8),
              TextFormField(
                decoration: InputDecoration(labelText: "Enter the Interest" ,
                    border:  OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8) ,
                        borderSide: BorderSide(color: Colors.blueAccent , width: 2))),
                keyboardType: TextInputType.number,
                // onChanged: (value) {
                //   interest = int.parse(value);
                // },
                controller: thirdController,
                validator: (value){
                  if(value == null || value.isEmpty){
                    return "Please enter a interest " ;
                  }
                    return null ;
                },
              ),
              // container is same like sized box but only difference it has many properties 
              Container(
                color: Colors.greenAccent,
                width: double.infinity ,
                child: RichText(
                    text: const TextSpan(
                      text:  "Hello " ,
                      style: TextStyle(
                        color : Colors.black38 ,
                        fontSize: 30
                      ) ,
                      children: <TextSpan>[
                        TextSpan(
                          text: "bold " ,
                          style: TextStyle(
                            fontWeight: FontWeight.bold ,
                            color:  Colors.amber,
                          )
                        ) ,
                        TextSpan(
                            text: "World !" ,
                            // style: TextStyle(
                            //   fontWeight: FontWeight.bold ,
                            //   color:  Colors.amber,
                            // )
                        ) ,
                      ]
                    ) ),
              ) ,

              SizedBox(height: 8),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.greenAccent,
                    shape:  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    )
                  ),
                  onPressed: () {
                    if(myKey.currentState!.validate()){
                      //logic
                      int principle = int.parse(firstController.text) ;
                      int amount  = int.parse(secondController.text) ;
                      int time = int.parse(thirdController.text) ;
                      setState(() {
                        result = principle * amount * time / 100 ;
                      });
                    }
                    // setState(() {
                    //   result = (principle * time * interest) / 100;
                    // });

                  },
                  child: Text("Calculate the Simple Interest"),
                ),
              ),
              SizedBox(height: 8),
              Text("Simple Interest : $result"),
            ],
          ),
        ),
      ),
    );
  }
}
