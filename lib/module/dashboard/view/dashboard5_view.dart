import 'package:flutter/material.dart';
import 'package:flutter_slicing_project/core.dart';
import 'package:ionicons/ionicons.dart';

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
              Container(
                margin: const EdgeInsets.only(
                    left: 15.0, right: 20.0, top: 10.0, bottom: 6.0),
                child: SizedBox(
                  height: 72.0,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 23,
                    physics: const ScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      if (index == 0) {
                        return Padding(
                          padding:
                              const EdgeInsets.only(left: 18.0, right: 18.0),
                          child: Column(
                            children: [
                              ECircleAvatar(
                                avatarRadius: 24.0,
                                iconSize: 24.0,
                                bgCircleAvatar: ColorLib.primaryColor,
                                bgIcon: ColorLib.white,
                                icon: Ionicons.add,
                              ),
                              const SizedBox(
                                height: 6.0,
                              ),
                              const Text(
                                "Add Story",
                                style: TextStyle(
                                  fontSize: 12.0,
                                ),
                              ),
                            ],
                          ),
                        );
                      } else {
                        return Padding(
                          padding: const EdgeInsets.only(left: 9.0, right: 9.0),
                          child: Column(
                            children: [
                              ECircleAvatar(
                                avatarRadius: 24.0,
                                iconSize: 24.0,
                                bgCircleAvatar: ColorLib.lightGray,
                                bgIcon: ColorLib.darkGray,
                                icon: Ionicons.person,
                              ),
                              const SizedBox(
                                height: 6.0,
                              ),
                              const Text(
                                "Add Story",
                                style: TextStyle(
                                  fontSize: 12.0,
                                ),
                              ),
                            ],
                          ),
                        );
                      }
                    },
                  ),
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
