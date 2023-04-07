import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import '../../../shared/widget/other/e_circle_avatar.dart';
import '../../../utils/color_lib.dart';

class DashboardStoryFeed extends StatelessWidget {
  const DashboardStoryFeed({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorLib.white,
      child: SizedBox(
        height: 72.0,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 23,
          physics: const ScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            if (index == 0) {
              return GestureDetector(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 9.0),
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
                ),
              );
            } else {
              return GestureDetector(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 9.0),
                  child: Column(
                    children: [
                      ECircleAvatar(
                        avatarRadius: 24.0,
                        iconSize: 24.0,
                        bgCircleAvatar: ColorLib.darkGray,
                        bgIcon: ColorLib.darkBlack,
                        icon: Ionicons.person,
                      ),
                      const SizedBox(
                        height: 6.0,
                      ),
                      const Text(
                        "Martin Luther",
                        style: TextStyle(
                          fontSize: 12.0,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
