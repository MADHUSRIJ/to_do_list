import 'dart:async';
import 'package:flutter/material.dart';
import 'package:to_do_list/homepage.dart';
import 'package:to_do_list/widgets.dart';
import 'SizeConfig.dart';
import 'homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //SizeConfig.init(context);
    return MaterialApp(

      debugShowCheckedModeBanner: false,

    );
  }
}


