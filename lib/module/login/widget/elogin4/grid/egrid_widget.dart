import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EGridWidget extends StatelessWidget {
  const EGridWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Text(
            'Larry Dennis',
            style: GoogleFonts.roboto(
              color: const Color(0xFF455154),
              fontWeight: FontWeight.w700,
              fontSize: 30.0,
            ),
          ),
          Text(
            'larry.dennis@mail.io',
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
