import 'package:flutter_slicing_project/state_util.dart';
navigatorKey: Get.navigatorKey,
import 'package:flutter/material.dart';

import 'module/home/view/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const HomeView(),
    );
  }
}
