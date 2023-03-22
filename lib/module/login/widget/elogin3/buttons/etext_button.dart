import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ETextButton extends StatelessWidget {
  const ETextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        "Login with Email",
        style: GoogleFonts.roboto(
          color: const Color(0xFF59B58D),
          fontWeight: FontWeight.w700,
          fontSize: 18.0,
        ),
      ),
    );
  }
}
