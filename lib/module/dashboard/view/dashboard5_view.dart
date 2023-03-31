import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import '../../../shared/widget/other/e_circle_avatar.dart';
import '../../../utils/color_lib.dart';
import '../controller/dashboard5_controller.dart';

class Dashboard5View extends StatefulWidget {
  const Dashboard5View({super.key});

  Widget build(context, Dashboard5Controller controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/logo2.png",
              width: 32.0,
              height: 32.0,
              fit: BoxFit.fill,
            ),
            const SizedBox(
              width: 10.0,
            ),
            Text(
              "Scheme Social",
              style: TextStyle(
                fontSize: 18.0,
                color: ColorLib.lightBlack,
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Icon(
              Ionicons.add,
              size: 24.0,
              color: ColorLib.lightBlack,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Icon(
              Ionicons.search,
              size: 24.0,
              color: ColorLib.lightBlack,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Icon(
              Ionicons.ellipsis_horizontal,
              size: 24.0,
              color: ColorLib.lightBlack,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: 3,
                  physics: const ScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return ECircleAvatar(
                        avatarRadius: 50.0,
                        iconSize: 32.0,
                        bgCircleAvatar: ColorLib.lightBlack,
                        bgIcon: ColorLib.lightGray,
                        icon: Ionicons.add);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<Dashboard5View> createState() => Dashboard5Controller();
}
