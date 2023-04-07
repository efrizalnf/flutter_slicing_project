import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import '../../../../utils/color_lib.dart';
import '../../controller/edashboard5/dashboard5_controller.dart';
import '../../widget/edashboard5/dashboard_item.dart';
import '../../widget/edashboard5/dashboard_story_feed.dart';

class Dashboard5View extends StatefulWidget {
  const Dashboard5View({super.key});

  Widget build(context, Dashboard5Controller controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: ColorLib.white,
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
      body: SafeArea(
        child: Container(
          color: ColorLib.lightGray,
          // padding: const EdgeInsets.symmetric(
          //   vertical: 10.0,
          // ),
          child: Column(
            children: [
              const DashboardStoryFeed(),
              const SizedBox(
                height: 10.0,
              ),
              Flexible(
                child: ListView.builder(
                  itemCount: 25,
                  physics: const ScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return const DashboardItem();
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<Dashboard5View> createState() => Dashboard5Controller();
}
