import 'package:flutter/material.dart';
import 'package:flutter_slicing_project/state_util.dart';
import 'package:google_fonts/google_fonts.dart';

class EGridWidget extends StatelessWidget {
  const EGridWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
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
              "assets/images/logo2.png",
              width: 69.0,
              height: 69.0,
              fit: BoxFit.fill,
            ),
          )
        ],
      ),
    );
  }
}
