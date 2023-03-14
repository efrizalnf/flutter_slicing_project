import 'package:flutter/material.dart';
import 'package:flutter_slicing_project/core.dart';
import 'package:flutter_slicing_project/module/login/widget/buttons/elogin_button.dart';
import 'package:flutter_slicing_project/module/login/widget/buttons/esignup_button.dart';
import 'package:flutter_slicing_project/module/login/widget/buttons/etext_button.dart';
import 'package:flutter_slicing_project/module/login/widget/textfield/etext_field.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  Widget build(context, LoginController controller) {
    controller.view = this;

    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          Padding(
            padding: EdgeInsets.only(
                top: Get.height * 0.05,
                left: Get.width * 0.08,
                right: Get.width * 0.05),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: Get.height * 0.02),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Welcome\nto MagicBook",
                        style: GoogleFonts.roboto(
                          color: const Color(0xFF455154),
                          fontWeight: FontWeight.w700,
                          fontSize: 36.0,
                        ),
                      ),
                      SizedBox(
                        height: Get.height * 0.02,
                      ),
                      Text(
                        "Biggest collection of 300+ layouts\nfor iOS prototyping.",
                        style: GoogleFonts.roboto(
                          color: const Color(0xFF455154),
                          fontWeight: FontWeight.w400,
                          fontSize: 16.0,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: Get.width * 0.08,
                ),
                Expanded(
                  child: Image.asset(
                    "assets/images/logo.png",
                    width: 69.0,
                    height: 69.0,
                    fit: BoxFit.fill,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: Get.height * 0.09,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: Get.width * 0.08,
              right: Get.width * 0.08,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const ETextField(label: 'Email'),
                SizedBox(
                  height: Get.height * 0.01,
                ),
                ETextField(
                  label: 'Password',
                  suffixIcon: Icon(
                    Icons.visibility,
                    color: Colors.grey[600],
                  ),
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
              ],
            ),
          ),
        ]),
      ),
    );
  }

  @override
  State<LoginView> createState() => LoginController();
}
