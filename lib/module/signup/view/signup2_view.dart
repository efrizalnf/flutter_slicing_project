import 'package:google_fonts/google_fonts.dart';
// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_slicing_project/shared/widget/other/e_circle_avatar.dart';
import 'package:flutter_slicing_project/module/signup/widget/e_term_conditions.dart';
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
            child: GestureDetector(
              onTap: () {},
              child: Icon(
                Ionicons.close_outline,
                size: 24,
                color: ColorLib.primaryColor,
              ),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            const Flexible(
              flex: 1,
              child: SizedBox(
                height: 45.0,
              ),
            ),
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                ECircleAvatar(
                    avatarRadius: 40.0,
                    iconSize: 40.0,
                    bgCircleAvatar: ColorLib.darkGray,
                    bgIcon: ColorLib.lightBlack,
                    icon: Icons.person),
                GestureDetector(
                  onTap: () {
                    print('Cliked');
                  },
                  child: ECircleAvatar(
                    avatarRadius: 16.0,
                    iconSize: 16.0,
                    bgCircleAvatar: ColorLib.primaryColor,
                    bgIcon: ColorLib.white,
                    icon: Icons.camera_alt,
                  ),
                ),
              ],
            ),
            const Flexible(
              flex: 1,
              child: SizedBox(
                height: 25.0,
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
              height: 15.0,
            ),
            const EButtons(label: 'Sign Up'),
            const SizedBox(
              height: 15.0,
            ),
            const Flexible(flex: 1, child: ETerms()),
            const Flexible(
              flex: 1,
              child: SizedBox(
                height: 130.0,
              ),
            ),
            Flexible(
              flex: 1,
              child: TextButton(
                child: Text(
                  "I have an account",
                  style: GoogleFonts.roboto(
                    color: ColorLib.primaryColor,
                    fontWeight: FontWeight.w700,
                    fontSize: 18.0,
                  ),
                ),
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  State<Signup2View> createState() => Signup2Controller();
}
