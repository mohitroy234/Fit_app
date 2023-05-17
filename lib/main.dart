import 'package:fit_app/screens/pages_selection.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/screen',
    routes: {
      "/screen":(context)=>Screen(),
    },
    debugShowCheckedModeBanner: false,
  ));
}

