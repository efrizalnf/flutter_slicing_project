import 'package:flutter/material.dart';
import 'package:flutter_slicing_project/utils/color_lib.dart';
import 'package:google_fonts/google_fonts.dart';

class ELoginButton extends StatelessWidget {
  const ELoginButton({super.key, required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
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
    );
  }
}
