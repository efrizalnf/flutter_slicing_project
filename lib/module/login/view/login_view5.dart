import 'package:flutter/material.dart';
import 'package:flutter_slicing_project/core.dart';
import 'package:flutter_slicing_project/utils/color_lib.dart';
import 'package:ionicons/ionicons.dart';

class LoginView5 extends StatefulWidget {
  const LoginView5({Key? key}) : super(key: key);

  Widget build(context, LoginController5 controller) {
    controller.view = this;

    return Scaffold(
      backgroundColor: '#CDCDCD'.toColor(),
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Ionicons.image))
        ],
        backgroundColor: '#CDCDCD'.toColor(),
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: Get.width * 0.08),
        child: Column(
          children: [
            SizedBox(
              height: Get.height * 0.13,
            ),
            Image.asset(
              'assets/images/logo2.png',
              width: Get.width * 0.38,
              height: Get.height * 0.17,
            ),
            SizedBox(
              height: Get.height * 0.06,
            ),
            const ELoginButton(
              label: 'Log In with Google',
              icon: Ionicons.logo_google,
            ),
            SizedBox(
              height: Get.height * 0.01,
            ),
            const ELoginButton(
              label: 'Log In with Facebook',
              icon: Ionicons.logo_facebook,
            ),
            SizedBox(
              height: Get.height * 0.01,
            ),
            const ELoginButton(
              label: 'Log In as Guest',
              icon: Ionicons.people,
            ),
          ],
        ),
      ),
    );
  }

  @override
  LoginController5 createState() => LoginController5();
}
