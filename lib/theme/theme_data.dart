import 'package:flutter/material.dart';

ThemeData getApplicationTheme(){
  return ThemeData(
    useMaterial3 : false ,
    primarySwatch: Colors.green ,
    fontFamily: 'Roboto bold',
    // scaffoldBackgroundColor: Colors.grey.shade300)
    appBarTheme: const AppBarTheme(
      centerTitle: true ,
      elevation: 0 ,
      backgroundColor: Colors.green,
    )
  ) ;
}