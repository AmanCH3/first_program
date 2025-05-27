import 'package:first_program/app.dart';
import 'package:first_program/view/output_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StudentListView extends StatefulWidget {
  const StudentListView({super.key});

  @override
  State<StudentListView> createState() => _StudentListViewState();
}

class _StudentListViewState extends State<StudentListView> {

  final lstCity = ["Kathmandu" , "Bhaktapur" , "Lalitpur" , "Pokhara"] ;
  final lstStudent = [] ;
  final fnameController = TextEditingController() ;
  final lnameController = TextEditingController() ;

  String ? selectedCity ;
  final _formKey = GlobalKey<FormState>() ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Student View") , centerTitle: true
        ,),

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                controller: fnameController,
                decoration: const InputDecoration(
                  labelText: "First Name" ,
                  hintText: "Enter your first name" ,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)) ,
                    borderSide: BorderSide(color: Colors.blue , width: 2) ,


                  )
                ),

                validator: (value){
                  if(value == null || value.isEmpty){
                    return "Please enter your first name" ;
                  }
                  return null ;
                },
              ) ,
              const SizedBox(height: 8,) ,
              TextFormField(
                controller: lnameController,
                decoration: const InputDecoration(
                  labelText: "Last Name" ,
                  hintText: "Enter your last name" ,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)) ,

                  )
                ),

                validator: (value){
                  if(value == null || value.isEmpty){
                    return "Please enter your last name" ;
                  }
                  return null ;
                },
              ) ,

              const SizedBox(height: 10,) ,
              DropdownButtonFormField(
                decoration: const InputDecoration(
                  labelText: "Select City" ,
                  hintText: "Select your city" ,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)) ,
                    borderSide: BorderSide(color: Colors.blue , width: 2),
                  )
                ),

                value: selectedCity,
                items : lstCity.map((city){
                  return DropdownMenuItem(value : city , child: Text(city)) ;
                }).toList() ,

                onChanged: (value){
                  setState(() {
                    selectedCity = value ;

                  });
                },

                validator: (value){
                  if(value == null){
                    return "Please select your city" ;
                  }

                  return null ;
                },
              ) ,
              const SizedBox(height: 10,) ,
              ElevatedButton(style  : ElevatedButton.styleFrom(
                // backgroundColor: Colors.blue[100] ,
                padding: const EdgeInsets.all(15) ,
              ),onPressed: (){
                if(_formKey.currentState!.validate()){
                  lstStudent.add({
                    "first_name" : fnameController.text ,
                    "last_name" : lnameController.text ,
                    "city" : selectedCity ,
                  }) ;
                  setState(() {

                  });
                }
              }, child: const Text("Submit")) ,

              const SizedBox(height: 18,) ,
              lstCity.isEmpty ? const Text("No data found") : Expanded(
                  child: ListView.separated(itemCount : lstStudent.length , separatorBuilder: (context , index) => const Divider() ,itemBuilder: (context , index){
                    return ListTile(
                      title: Text(
                       // "${lstStudent[index]["first_name"]} ${lstStudent[index]["last_name"]}" ,

                        "${lstStudent[index]["first_name"]} ${lstStudent[index]["last_name"]}" ,
                      ),
                      subtitle: Text(lstStudent[index]["city"]),
                      trailing: IconButton(onPressed: (){
                        setState(() {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => OutputView(student: lstStudent[index]) )) ;
                        });
                        // setState(() {
                        //   lstStudent.removeAt(index );
                        // });
                        AlertDialog alert = AlertDialog(
                          title:  const Text("Delete ?"),
                          content: Text("Are you sure you want to delete ${lstStudent[index]} ??"),
                          actions: [
                            TextButton(onPressed: (){
                              Navigator.pop(context);
                            }, child: const Text("No")) ,
                            TextButton(onPressed: (){
                              setState(() {

                                lstStudent.removeAt(index) ;
                              });
                              Navigator.pop(context) ;
                            }, child: Text("Yes"))
                          ],
                        ) ;

                        showDialog(context: context, builder: (BuildContext context){
                          return alert ;

                        }) ;

                      }, icon: const Icon(Icons.delete )),

                    ) ;


                  }))
            ],
          ),
        ),
      ),

    ) ;
  }
}
