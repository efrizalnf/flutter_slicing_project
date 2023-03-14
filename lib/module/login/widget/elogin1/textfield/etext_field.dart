import 'package:flutter/material.dart';
import 'package:flutter_slicing_project/state_util.dart';
import 'package:google_fonts/google_fonts.dart';

class ETextField extends StatelessWidget {
  final String label;
  final Icon? suffixIcon;
  const ETextField({super.key, required this.label, this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: Get.width * 0.08,
        right: Get.width * 0.08,
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
        child: Center(
          child: TextField(
            style: TextStyle(
              color: Colors.grey[800],
            ),
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
      ),
    );
  }
}
