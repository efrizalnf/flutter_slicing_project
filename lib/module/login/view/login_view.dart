import 'package:flutter/material.dart';
import 'package:flutter_slicing_project/core.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  Widget build(context, LoginController controller) {
    controller.view = this;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const EGridWidget(),
            SizedBox(
              height: Get.height * 0.09,
            ),
            ETextField(
              label: 'Email',
              textEditingController: controller.emailController,
            ),
            SizedBox(
              height: Get.height * 0.01,
            ),
            ETextField(
              label: 'Password',
              suffixIcon: Icon(
                Icons.visibility,
                color: Colors.grey[600],
              ),
              textEditingController: controller.passwordController,
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
            const EloginButton(
              label: 'Login',
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
            const ETextButton(),
            SizedBox(
              height: Get.height * 0.20,
            ),
            const EsignupButton(
              label: 'Sign Up',
            ),
          ]),
        ),
      ),
    );
  }

  @override
  State<LoginView> createState() => LoginController();
}
