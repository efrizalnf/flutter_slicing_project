import 'package:flutter/material.dart';
import 'package:flutter_slicing_project/core.dart';
import 'package:flutter_slicing_project/utils/color_lib.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({Key? key}) : super(key: key);

  Widget build(context, DashboardController controller) {
    controller.view = this;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(Get.height * 0.13),
        child: AppBar(
          backgroundColor: '#FFFFFF'.toColor(),
          elevation: 0.0,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Shop',
                style: GoogleFonts.roboto(
                    color: '#455154'.toColor(),
                    fontSize: 36,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: Get.height * 0.01,
              ),
              Text(
                'Over 45K Items Available for You',
                style: GoogleFonts.roboto(
                    color: '#969FA2'.toColor(),
                    fontSize: 18,
                    fontWeight: FontWeight.w400),
              )
            ],
          ),
          actions: [
            ECircleAvatar(
                avatarRadius: 50,
                iconSize: 50,
                bgCircleAvatar: '#C3C9CB'.toColor(),
                bgIcon: '#C3C9CB'.toColor(),
                icon: Ionicons.people_outline)
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Container(),
        ),
      ),
    );
  }

  @override
  State<DashboardView> createState() => DashboardController();
}
