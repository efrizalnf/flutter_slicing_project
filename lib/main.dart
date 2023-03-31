import 'package:flutter_slicing_project/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slicing_project/module/dashboard/view/dashboard5_view.dart';

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
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.green)
            .copyWith(background: Colors.white),
      ),
      home: const Dashboard5View(),
      navigatorKey: Get.navigatorKey,
    );
  }
}
