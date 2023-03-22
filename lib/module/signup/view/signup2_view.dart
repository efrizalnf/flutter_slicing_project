// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_slicing_project/shared/widget/other/e_circle_avatar.dart';
import 'package:flutter_slicing_project/module/signup/widget/signup2/e_term_conditions.dart';
import 'package:ionicons/ionicons.dart';

import '../../../shared/widget/buttons/e_button.dart';
import '../../../shared/widget/textfield/e_text_field.dart';
import '../../../utils/color_lib.dart';
import '../controller/signup2_controller.dart';

class Signup2View extends StatefulWidget {
  const Signup2View({super.key});

  Widget build(BuildContext context, Signup2Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: ColorLib.transparent,
        centerTitle: true,
        title: Text(
          "Sign Up",
          style: TextStyle(
            color: ColorLib.lightBlack,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Icon(
              Ionicons.close_outline,
              size: 24,
              color: ColorLib.primaryColor,
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 50.0, bottom: 30.0),
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  ECircleAvatar(
                      avatarRadius: 100.0,
                      iconSize: 100.0,
                      bgCircleAvatar: ColorLib.darkGray,
                      bgIcon: ColorLib.lightBlack,
                      icon: Icons.person),
                  ECircleAvatar(
                      avatarRadius: 32.0,
                      iconSize: 32.0,
                      bgCircleAvatar: ColorLib.primaryColor,
                      bgIcon: ColorLib.white,
                      icon: Icons.camera_alt),
                ],
              ),
            ),
            ETextFields(
              label: 'Full Name',
              textEditingController: controller.firstNameController,
            ),
            const SizedBox(
              height: 10.0,
            ),
            ETextFields(
              label: 'Email',
              textEditingController: controller.emailController,
            ),
            const SizedBox(
              height: 10.0,
            ),
            ETextFields(
              label: 'Password',
              textEditingController: controller.passwordController,
            ),
            const SizedBox(
              height: 20.0,
            ),
            const EButtons(label: 'Sign Up'),
            const SizedBox(
              height: 21.0,
            ),
            const ETerms(),
            const SizedBox(
              height: 190.0,
            ),
            Expanded(
              child: Text(
                "I have an account",
                style: TextStyle(
                  color: ColorLib.primaryColor,
                  fontSize: 18.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<Signup2View> createState() => Signup2Controller();
}
