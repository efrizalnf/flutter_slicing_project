import 'package:flutter/material.dart';
import 'package:flutter_slicing_project/core.dart';
import 'package:flutter_slicing_project/utils/color_lib.dart';
import 'package:ionicons/ionicons.dart';

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
                fontSize: 15.0,
                color: ColorLib.primaryColor,
              ),
            ),
          ],
        ),
        title: Image.asset(
          "assets/images/logo2.png",
          width: 35.0,
          height: 35.0,
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 23.0),
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              ElevatedButton(
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
              Container(
                margin: const EdgeInsets.all(21.0),
                child: Text(
                  "or sign up with Email",
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ),
              Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[350],
                      contentPadding: const EdgeInsets.all(15.0),
                      border: const OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.all(
                          Radius.circular(6.0),
                        ),
                      ),
                      hintText: 'First Name',
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[350],
                      contentPadding: const EdgeInsets.all(15.0),
                      border: const OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.all(
                          Radius.circular(6.0),
                        ),
                      ),
                      hintText: 'Last Name',
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[350],
                      contentPadding: const EdgeInsets.all(15.0),
                      border: const OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.all(
                          Radius.circular(6.0),
                        ),
                      ),
                      hintText: 'Email',
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[350],
                      contentPadding: const EdgeInsets.all(15.0),
                      border: const OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.all(
                          Radius.circular(6.0),
                        ),
                      ),
                      hintText: 'Password',
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[350],
                      contentPadding: const EdgeInsets.all(15.0),
                      border: const OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.all(
                          Radius.circular(6.0),
                        ),
                      ),
                      hintText: 'Password',
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  SizedBox(
                    height: 48.0,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: '#59B58D'.toColor(),
                      ),
                      child: const Text(
                        'Continue',
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  Center(
                    child: Column(
                      children: [
                        RichText(
                          maxLines: 2,
                          softWrap: true,
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: "By Signing up, you agree to our",
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: " Terms",
                                style: TextStyle(
                                  color: '#59B58D'.toColor(),
                                ),
                              ),
                              const TextSpan(
                                text: " And",
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                              TextSpan(
                                text: " Condition",
                                style: TextStyle(
                                  color: '#59B58D'.toColor(),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<SignupView> createState() => SignupController();
}
