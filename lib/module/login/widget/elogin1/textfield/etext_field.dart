import 'package:flutter/material.dart';
import 'package:flutter_slicing_project/state_util.dart';
import 'package:google_fonts/google_fonts.dart';

class ETextField extends StatelessWidget {
  final String label;
  final Icon? suffixIcon;
  final TextEditingController textEditingController;
  const ETextField(
      {super.key,
      required this.label,
      this.suffixIcon,
      required this.textEditingController});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: Get.width * 0.08,
      ),
      child: Container(
        height: 44.0,
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
        ),
        decoration: const BoxDecoration(
          color: Color(0xFFCDCDCD),
          borderRadius: BorderRadius.all(
            Radius.circular(
              6.0,
            ),
          ),
        ),
        child: TextField(
          controller: textEditingController,
          decoration: InputDecoration(
            hintText: label,
            suffixIcon: suffixIcon,
            border: InputBorder.none,
            hintStyle: GoogleFonts.roboto(
              fontWeight: FontWeight.w400,
              color: const Color(0xFF455154),
            ),
          ),
        ),
      ),
    );
  }
}
