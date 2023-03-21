import 'package:flutter/material.dart';
import 'package:flutter_slicing_project/state_util.dart';
import 'package:flutter_slicing_project/utils/color_lib.dart';
import 'package:google_fonts/google_fonts.dart';

class EloginButton extends StatelessWidget {
  final String label;
  const EloginButton({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: Get.width * 0.08, right: Get.width * 0.08),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: '#59B58D'.toColor(),
            minimumSize: const Size.fromHeight(44)),
        onPressed: () {},
        child: Text(
          label,
          style: GoogleFonts.roboto(
            fontWeight: FontWeight.w700,
            fontSize: 18.0,
          ),
        ),
      ),
    );
  }
}
