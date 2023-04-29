import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Elogin5Button extends StatelessWidget {
  const Elogin5Button({super.key, required this.label, required this.icon});
  final String label;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF59B58D),
        minimumSize: const Size.fromHeight(44),
      ),
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: GoogleFonts.roboto(
              fontWeight: FontWeight.w700,
              fontSize: 18.0,
            ),
          ),
          Icon(
            icon,
            color: const Color(0xFFFFFFFF),
          )
        ],
      ),
    );
  }
}
