import 'package:flutter/material.dart';
import 'package:flutter_slicing_project/core.dart';
import 'package:google_fonts/google_fonts.dart';

class ELoginButton extends StatelessWidget {
  const ELoginButton({super.key, required this.label, required this.icon});
  final String label;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF59B58D),
          minimumSize: Size.fromHeight(Get.height * 0.06),
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
      ),
    );
  }
}
