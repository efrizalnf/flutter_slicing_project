import 'package:flutter/material.dart';
import 'package:flutter_slicing_project/core.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';

class LoginView3 extends StatefulWidget {
  const LoginView3({Key? key}) : super(key: key);

  Widget build(context, LoginController3 controller) {
    controller.view = this;

    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: Get.height * 0.05,
            ),
            Image.asset(
              "assets/images/logo2.png",
              width: 112.0,
              height: 113.0,
              fit: BoxFit.fill,
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
            Text(
              "Biggest collection of 300+ layouts\nfor iOS prototyping.",
              style: GoogleFonts.roboto(
                  color: const Color(0xFF455154),
                  fontSize: 18,
                  fontWeight: FontWeight.w400),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: Get.height * 0.28,
            ),
            Text(
              "Login with social networks",
              style: GoogleFonts.roboto(
                  color: const Color(0xFF969FA2),
                  fontSize: 14,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: Get.height * 0.01,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Get.width * 0.04),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const ELoginButton(
                      label: 'Facebook', icon: Ionicons.logo_facebook),
                  SizedBox(
                    width: Get.width * 0.04,
                  ),
                  const ELoginButton(
                      label: 'Twitter', icon: Ionicons.logo_twitter)
                ],
              ),
            ),
            SizedBox(
              height: Get.height * 0.03,
            ),
            Text(
              "or sign up with Email",
              style: GoogleFonts.roboto(
                  color: const Color(0xFF969FA2),
                  fontSize: 14,
                  fontWeight: FontWeight.w400),
            ),
            const SignupButton(),
            SizedBox(
              height: Get.height * 0.08,
            ),
            const ETextButton()
          ],
        ),
      ),
    );
  }

  @override
  State<LoginView3> createState() => LoginController3();
}
