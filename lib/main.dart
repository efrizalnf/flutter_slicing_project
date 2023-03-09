import 'package:flutter/material.dart';
import 'package:flutter_slicing_project/module/signup/view/signup_view.dart';
import 'package:flutter_slicing_project/utils/color_lib.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: ColorLib.primaryColor,
      ),
      home: const SignupView(),
    );
  }
}
