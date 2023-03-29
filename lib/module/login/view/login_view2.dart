import 'package:flutter/material.dart';
import 'package:flutter_slicing_project/core.dart';

class LoginView2 extends StatefulWidget {
  const LoginView2({Key? key}) : super(key: key);

  Widget build(context, LoginController2 controller) {
    controller.view = this;

    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const EGridWidget2(),
            SizedBox(
              height: Get.height * 0.43,
            ),
            const SuggestText(),
            SizedBox(
              height: Get.height * 0.01,
            ),
            const EloginWithFacebookButton()
          ],
        ),
      ),
    );
  }

  @override
  State<LoginView2> createState() => LoginController2();
}
