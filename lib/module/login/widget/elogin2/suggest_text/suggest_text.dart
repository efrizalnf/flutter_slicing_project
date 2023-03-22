import 'package:flutter/material.dart';
import 'package:flutter_slicing_project/state_util.dart';
import 'package:google_fonts/google_fonts.dart';

class SuggestText extends StatelessWidget {
  const SuggestText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: Get.width * 0.08, right: Get.width * 0.08),
      child: Text(
        "Use Facebook to find your friends",
        style: GoogleFonts.roboto(
          color: const Color(0xFF969FA2),
          fontWeight: FontWeight.w400,
          fontSize: 14.0,
        ),
      ),
    );
  }
}
