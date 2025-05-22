import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridScreen extends StatefulWidget {
  const GridScreen({super.key});

  @override
  State<GridScreen> createState() => _GridScreenState();
}

class _GridScreenState extends State<GridScreen> {
  int selectedIndex = -1 ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(title: Text("Grid View"),),
     body: GridView.count(
       padding: const EdgeInsets.all(8),
         crossAxisSpacing: 8,
         mainAxisSpacing: 8,
         crossAxisCount: 3,
       children:  [
        // SizedBox(height: 8,) ,
        //  ElevatedButton(onPressed: (){
        //
        //  }, child: const Text("Button 1")) ,
        //  SizedBox(height: 8,) ,
        //  ElevatedButton(onPressed: (){
        //
        //  }, child: const Text("Button 2")) ,

         for(int i = 1 ; i <= 10 ; i++) ...{
           ElevatedButton(onPressed: (){

             setState(() {
               selectedIndex = i ;
             });
           }, child: Text('$i ' , style: TextStyle(fontSize: 50)) ,




           style: ElevatedButton.styleFrom(
             shape: RoundedRectangleBorder(),
             backgroundColor: selectedIndex == i ? Colors.green : Colors.yellow ,
             foregroundColor: Colors.black
           ),) ,




         }

       ],

     ),

    ) ;
  }
}
