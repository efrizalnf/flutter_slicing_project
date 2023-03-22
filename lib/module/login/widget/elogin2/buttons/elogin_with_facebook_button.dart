import 'package:flutter/material.dart';
import 'package:flutter_slicing_project/state_util.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';

class EloginWithFacebookButton extends StatelessWidget {
  const EloginWithFacebookButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: Get.width * 0.08, right: Get.width * 0.08),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF59B58D),
            minimumSize: const Size.fromHeight(44)),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Log In with Facebook',
              style: GoogleFonts.roboto(
                fontWeight: FontWeight.w700,
                fontSize: 18.0,
              ),
            ),
            const Icon(
              Ionicons.logo_facebook,
              color: Color(0xFFFFFFFF),
            )
          ],
        ),
      ),
    );
  }
}
