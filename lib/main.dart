import 'package:flutter_slicing_project/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slicing_project/module/dashboard/view/edashboard2/dashboard2_view.dart';
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
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.green)
            .copyWith(surface: ColorLib.darkGray),
      ),
      home: const Dashboard2View(),
      navigatorKey: Get.navigatorKey,
    );
  }
}
