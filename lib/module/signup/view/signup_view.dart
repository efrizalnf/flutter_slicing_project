import 'package:flutter/material.dart';
import 'package:flutter_slicing_project/core.dart';
import 'package:flutter_slicing_project/module/signup/widget/e_buttons.dart';
import 'package:flutter_slicing_project/utils/color_lib.dart';
import 'package:ionicons/ionicons.dart';

import '../widget/e_term_conditions.dart';
import '../widget/e_text_field_1.dart';

class SignupView extends StatefulWidget {
  const SignupView({Key? key}) : super(key: key);

  Widget build(context, SignupController controller) {
    controller.view = this;

    return Scaffold(
      // extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        // leadingWidth: 0,
        leading: Row(
          children: [
            Expanded(
              child: IconButton(
                padding: const EdgeInsets.all(0.0),
                onPressed: () {},
                icon: Icon(
                  Ionicons.chevron_back,
                  size: 20.0,
                  color: ColorLib.primaryColor,
                ),
              ),
            ),
            Text(
              "Login",
              style: TextStyle(
                fontSize: 16.0,
                color: ColorLib.primaryColor,
              ),
            ),
          ],
        ),
        title: Image.asset(
          "assets/images/logo.png",
          width: 35.0,
          height: 35.0,
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 23.0),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: Get.width * 0.08,
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  backgroundColor: Colors.grey[200],
                  minimumSize: const Size.fromHeight(55),
                ),
                onPressed: () {},
                child: LayoutBuilder(
                    builder: (BuildContext context, BoxConstraints constrains) {
                  return Padding(
                    padding: EdgeInsets.only(
                      left: constrains.maxWidth * 0.01,
                      right: constrains.maxWidth * 0.01,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Log In with facebook",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0,
                          ),
                        ),
                        Icon(
                          Ionicons.logo_facebook,
                          size: 24.0,
                          color: Colors.grey[400],
                        ),
                      ],
                    ),
                  );
                }),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(21.0),
              child: Text(
                "or sign up with Email",
                style: TextStyle(
                  color: ColorLib.darkGray,
                  fontSize: 14.0,
                ),
              ),
            ),
            ETextField1(
              hint: 'First Name',
              textFieldController: controller.firstNameController,
            ),
            const SizedBox(
              height: 10.0,
            ),
            ETextField1(
              hint: 'Last Name',
              textFieldController: controller.lastNameController,
            ),
            const SizedBox(
              height: 10.0,
            ),
            ETextField1(
              hint: 'Email',
              textFieldController: controller.emailController,
            ),
            const SizedBox(
              height: 10.0,
            ),
            ETextField1(
              hint: 'Password',
              textFieldController: controller.passwordController,
            ),
            const SizedBox(
              height: 10.0,
            ),
            ETextField1(
              hint: 'Password',
              textFieldController: controller.password2Controller,
            ),
            const SizedBox(
              height: 15.0,
            ),
            const EButtonSignup(
              label: 'Continue',
            ),
            const SizedBox(
              height: 30.0,
            ),
            const ETerms()
          ],
        ),
      ),
    );
  }

  @override
  State<SignupView> createState() => SignupController();
}
