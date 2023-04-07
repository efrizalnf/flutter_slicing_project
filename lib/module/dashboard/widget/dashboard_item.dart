import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import '../../../shared/widget/other/e_circle_avatar.dart';
import '../../../utils/color_lib.dart';

class DashboardItem extends StatelessWidget {
  const DashboardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorLib.white,
      margin: const EdgeInsets.only(bottom: 10.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ECircleAvatar(
                  avatarRadius: 24.0,
                  iconSize: 24.0,
                  bgCircleAvatar: ColorLib.darkGray,
                  bgIcon: ColorLib.darkBlack,
                  icon: Ionicons.person,
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Text(
                            "Maud Matheww ",
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "with",
                            style: TextStyle(
                              fontSize: 18.0,
                            ),
                          ),
                          Text(
                            " Blake Abbott",
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "2 min ago",
                            style: TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                          SizedBox(
                            width: 13.3,
                          ),
                          Icon(
                            Ionicons.location,
                            size: 16.0,
                          ),
                          SizedBox(
                            width: 8.3,
                          ),
                          Text(
                            "London, UK",
                            style: TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Icon(
                      Ionicons.ellipsis_horizontal,
                      size: 24.0,
                      color: ColorLib.lightBlack,
                    ),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15.0),
            child: Container(
              height: 166.0,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    "https://images.unsplash.com/photo-1533050487297-09b450131914?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
                  ),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    6.0,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: const [
                    Icon(
                      Ionicons.heart,
                      size: 20.0,
                    ),
                    SizedBox(
                      width: 14.0,
                    ),
                    Icon(
                      Icons.forum,
                      size: 20.0,
                    ),
                  ],
                ),
                const Icon(
                  Icons.ios_share,
                  size: 20.0,
                ),
              ],
            ),
          ),
          const Divider(
            thickness: 1.0,
            indent: 15.0,
            endIndent: 15.0,
          ),
          const SizedBox(
            height: 16.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: const [
                    Text("8310 Likes"),
                    SizedBox(
                      width: 14.0,
                    ),
                    Text("61 comments"),
                  ],
                ),
                const Text(
                  "8 shares",
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
        ],
      ),
    );
  }
}
