import 'package:flutter/material.dart';
import 'package:flutter_slicing_project/state_util.dart';
import 'package:google_fonts/google_fonts.dart';

class ETextButton extends StatelessWidget {
  const ETextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: Get.width * 0.08),
      child: TextButton(
        onPressed: () {},
        child: Text(
          "Forgot password?",
          style: GoogleFonts.roboto(
            color: const Color(0xFF59B58D),
            fontWeight: FontWeight.w700,
            fontSize: 16.0,
          ),
        ),
      ),
    );
  }
}
