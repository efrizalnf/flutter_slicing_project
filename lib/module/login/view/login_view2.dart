import 'package:flutter/material.dart';
import 'package:flutter_slicing_project/core.dart';
import 'package:flutter_slicing_project/module/login/widget/elogin2/grid/egrid_widget2.dart';
import 'package:flutter_slicing_project/module/login/widget/elogin2/suggest_text/suggest_text.dart';
import '../widget/elogin2/buttons/elogin_with_facebook_button.dart';

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
