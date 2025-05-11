import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListTileView extends StatelessWidget {
  const ListTileView({super.key, required Icon leading});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List Tile"),
      ),
      body: ListTile(
        leading : const Icon(Icons.accessible_forward) ,
        title : const Text("Aman Chaudhary") ,
        subtitle : const Text("Kathmandu , Nepal"),
        // trailing : const Icon(Icons.delete),
        // onTap : (){
        //   debugPrint("listTile tapped") ;

      trailing: Wrap(
        spacing: 8 ,
        children: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.edit)) ,
          IconButton(onPressed: (){}, icon: const Icon(Icons.delete))
    ],
    ),

      ),

    );
  }
}
