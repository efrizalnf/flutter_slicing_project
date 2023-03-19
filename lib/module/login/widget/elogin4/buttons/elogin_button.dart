import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../state_util.dart';

class ELoginButton extends StatelessWidget {
  const ELoginButton({required this.lastName, super.key});
  final String lastName;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF59B58D),
          minimumSize: Size.fromHeight(Get.height * 0.06)),
      onPressed: () {},
      child: Text(
        'Continue as $lastName',
        style: GoogleFonts.roboto(
          fontWeight: FontWeight.w700,
          fontSize: 18.0,
        ),
      ),
    );
  }
}
