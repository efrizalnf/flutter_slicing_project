import 'package:flutter_slicing_project/module/login/view/login_view2.dart';
import 'package:flutter_slicing_project/state_util.dart';

import 'package:flutter/material.dart';

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
      home: const LoginView2(),
      navigatorKey: Get.navigatorKey,
    );
  }
}
