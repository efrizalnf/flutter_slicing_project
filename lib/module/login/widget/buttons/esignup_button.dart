import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EsignupButton extends StatelessWidget {
  final String label;
  const EsignupButton({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFFCDCDCD),
          minimumSize: const Size.fromHeight(44)),
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: GoogleFonts.roboto(
              color: const Color(0xFF455154),
              fontWeight: FontWeight.w700,
              fontSize: 18.0,
            ),
          ),
          const Icon(
            Icons.arrow_forward_ios,
            color: Color(0xFF969FA2),
          )
        ],
      ),
    );
  }
}
