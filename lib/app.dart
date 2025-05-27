
import 'package:first_program/theme/theme_data.dart';
import 'package:first_program/view/airthematic_new_view.dart';
import 'package:first_program/view/calculator_view.dart';
import 'package:first_program/view/cart_view.dart';
import 'package:first_program/view/column_view2.dart';
import 'package:first_program/view/container_view.dart';
import 'package:first_program/view/data_table.dart';
import 'package:first_program/view/flexible_expandend_view.dart';
import 'package:first_program/view/grid_screen.dart';
import 'package:first_program/view/layout_view.dart';
import 'package:first_program/view/load_image_view.dart';
import 'package:first_program/view/output_view.dart';
import 'package:first_program/view/stack_image_view.dart';
import 'package:first_program/view/stack_view.dart';
import 'package:first_program/view/student_list_view.dart';
import 'package:flutter/material.dart';

import 'list_tile.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: StackImageView() , debugShowCheckedModeBanner: false , theme: getApplicationTheme(),
    ) ;
  }
}
