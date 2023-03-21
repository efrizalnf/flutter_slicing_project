import 'package:flutter/material.dart';
import 'package:flutter_slicing_project/core.dart';
import 'package:google_fonts/google_fonts.dart';

class EGridWidget2 extends StatelessWidget {
  const EGridWidget2({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: Get.width * 0.08, right: Get.width * 0.08),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            "assets/images/logo2.png",
            width: 69.0,
            height: 69.0,
            fit: BoxFit.fill,
          ),
          SizedBox(
            height: Get.height * 0.01,
          ),
          Text(
            'Scheme\niOS Wireframe\nLayouts',
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
    );
  }
}
