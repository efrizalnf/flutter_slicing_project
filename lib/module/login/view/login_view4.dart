import 'package:flutter/material.dart';
import 'package:flutter_slicing_project/module/login/controller/login_controller4.dart';
import 'package:flutter_slicing_project/state_util.dart';

import '../widget/elogin4/buttons/elogin_button.dart';
import '../widget/elogin4/buttons/etext_button.dart';
import '../widget/elogin4/grid/egrid_widget.dart';

class LoginView4 extends StatefulWidget {
  const LoginView4({Key? key}) : super(key: key);

  Widget build(context, LoginController4 controller) {
    controller.view = this;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: Get.width * 0.08),
          child: Column(
            children: [
              SizedBox(
                height: Get.height * 0.04,
              ),
              Image.asset(
                "assets/images/logo2.png",
                width: Get.width * 0.17,
                height: Get.height * 0.08,
                fit: BoxFit.fill,
              ),
              SizedBox(
                height: Get.height * 0.10,
              ),
              Icon(
                Icons.person,
                size: Get.width * 0.27,
              ),
              SizedBox(
                height: Get.height * 0.02,
              ),
              const EGridWidget(),
              SizedBox(
                height: Get.height * 0.31,
              ),
              const ELoginButton(
                lastName: 'Dennis',
              ),
              SizedBox(
                height: Get.height * 0.04,
              ),
              const ETextButton(),
            ],
          ),
        ),
      ),
    );
  }

  @override
  LoginController4 createState() => LoginController4();
}
