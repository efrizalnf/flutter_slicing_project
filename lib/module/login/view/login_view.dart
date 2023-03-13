import 'package:flutter/material.dart';
import 'package:flutter_slicing_project/core.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  Widget build(context, LoginController controller) {
    controller.view = this;

    return Scaffold(
      body: SafeArea(
        child: ListView(children: [
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
                Container(
                  color: Colors.amber,
                  width: Get.width * 0.84,
                  height: Get.height * 0.05,
                ),
                SizedBox(
                  height: Get.height * 0.01,
                ),
                Container(
                  color: Colors.amber,
                  width: Get.width * 0.84,
                  height: Get.height * 0.05,
                ),
                SizedBox(
                  height: Get.height * 0.02,
                ),
                Container(
                  color: Colors.amber,
                  width: Get.width * 0.84,
                  height: Get.height * 0.05,
                ),
                SizedBox(
                  height: Get.height * 0.02,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Forgot password?",
                    style: GoogleFonts.roboto(
                      color: const Color(0xFF59B58D),
                      fontWeight: FontWeight.w700,
                      fontSize: 16.0,
                    ),
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.25,
                ),
                Container(
                  color: Colors.amber,
                  width: Get.width * 0.84,
                  height: Get.height * 0.06,
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
