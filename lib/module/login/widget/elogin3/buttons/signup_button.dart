import 'package:flutter/material.dart';
import 'package:flutter_slicing_project/state_util.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupButton extends StatelessWidget {
  const SignupButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: Get.width * 0.08, right: Get.width * 0.08),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            elevation: 0.0,
            backgroundColor: const Color(0xFFF4F6F6),
            minimumSize: const Size.fromHeight(44)),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Sign Up',
              style: GoogleFonts.roboto(
                color: const Color(0xFF455154),
                fontWeight: FontWeight.w700,
                fontSize: 18.0,
              ),
            ),
            const Icon(
              Icons.email,
              color: Color(0xFF969FA2),
            )
          ],
        ),
      ),
    );
  }
}
