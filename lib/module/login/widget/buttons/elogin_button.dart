import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EloginButton extends StatelessWidget {
  final String label;
  const EloginButton({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF59B58D),
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
